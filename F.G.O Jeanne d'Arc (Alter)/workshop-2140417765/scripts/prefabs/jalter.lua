local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {
"quartz"
}
-- Custom starting inventory
local start_inv = {

}
-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jalter_speed_mod", 1)
	
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "jalter_speed_mod")
end

--STRIKE LIGHTNING AND DIVINE INTERVENTION ON THEM HEATHENS
local function JalterAttack(inst, data)
	local chance = math.random(1,100)
	local victim = data.target
	
	local item = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
		
	if chance <= 50 then
		if item and item.components.weapon and item:HasTag("jalterclaymore") and victim and victim.components.health and not victim.components.health:IsDead() then
			victim.components.health:DoDelta(-TUNING.JALTERSMITE)
			SpawnPrefab("lightning").Transform:SetPosition(victim.Transform:GetWorldPosition())
		end
	end
	
end

local function JalterKill(inst, data)
--gain 5hp per nightmare killed
	local target = data.victim
	if target:HasTag("shadow") 
	or target:HasTag("shadowminion") 
	or target:HasTag("shadowchesspiece") 
	or target:HasTag("stalker") 
	or target:HasTag("stalkerminion") then
		inst.components.health:DoDelta(5)
		end
	print("pop")
end
	
--shamelessly ripped from muh boi tincan
local function JalterAscend(inst)
    local ascension = 4
	
	print("LEVEL UP")
    inst.level = math.min(inst.level, ascension)

    local hunger_percent = inst.components.hunger:GetPercent()
    local health_percent = inst.components.health:GetPercent()
    local sanity_percent = inst.components.sanity:GetPercent()

    inst.components.hunger.max = math.ceil(TUNING.JALTER_HUNGER + inst.level * (TUNING.JALTERHUNGER_MAX - TUNING.JALTER_HUNGER) / ascension)
    inst.components.health.maxhealth = math.ceil(TUNING.JALTER_HEALTH + inst.level * (TUNING.JALTERHEALTH_MAX - TUNING.JALTER_HEALTH) / ascension)
    inst.components.sanity.max = math.ceil(TUNING.JALTER_SANITY + inst.level * (TUNING.JALTERSANITY_MAX - TUNING.JALTER_SANITY) / ascension)

    inst.components.hunger:SetPercent(hunger_percent)
    inst.components.health:SetPercent(health_percent)

    local ignoresanity = inst.components.sanity.ignore
    inst.components.sanity.ignore = false
    inst.components.sanity:SetPercent(sanity_percent)
    inst.components.sanity.ignore = ignoresanity
end

--YOU GOTTA FARM THOSE HEARTS MAAAAAANNNNN
local function oneat(inst, food)
    if food and food.components.edible and food.components.edible.foodtype == FOODTYPE.QUARTZ then
        --give an upgrade!
        inst.level = inst.level + 1
        JalterAscend(inst) 
		
		if inst.level ~= 4 then
			SpawnPrefab("lightning").Transform:SetPosition(inst.Transform:GetWorldPosition())
		end
        --inst.SoundEmitter:PlaySound("dontstarve/characters/wx78/levelup")
    end
end

local function ondeath(inst)
    if inst.level > 0 then
        local descension = math.random(math.floor(inst.level / 3), math.ceil(inst.level / 2))
        if descension > 0 then
            for i = 1, descension do
                local quartz = SpawnPrefab("quartz")
                if quartz ~= nil then
                    local x, y, z = inst.Transform:GetWorldPosition()
                    if quartz.Physics ~= nil then
                        local speed = 2 + math.random()
                        local angle = math.random() * 2 * PI
                        quartz.Transform:SetPosition(x, y + 1, z)
                        quartz.Physics:SetVel(speed * math.cos(angle), speed * 3, speed * math.sin(angle))
                    else
                        quartz.Transform:SetPosition(x, y, z)
                    end
                    if quartz.components.propagator ~= nil then
                        quartz.components.propagator:Delay(5)
                    end
                end
            end
        end
        inst.level = 0
        JalterAscend(inst)
    end
end

local function onsave(inst, data)
    data.level = inst.level
end

local function JalterSanity(inst, data)	
	if inst.components.sanity:GetPercent() <= 0.5 then
		inst.components.combat.damagemultiplier = (2.5-inst.components.sanity:GetPercent())
	else
		inst.components.combat.damagemultiplier = 1.5
	end	
	print(inst.components.combat.damagemultiplier)
end

local function onpreload(inst, data)
    if data ~= nil and data.level ~= nil then
        inst.level = data.level
        JalterAscend(inst)
        --re-set these from the save data, because of load-order clipping issues
        if data.health ~= nil and data.health.health ~= nil then
            inst.components.health:SetCurrentHealth(data.health.health)
        end
        if data.hunger ~= nil and data.hunger.hunger ~= nil then
            inst.components.hunger.current = data.hunger.hunger
        end
        if data.sanity ~= nil and data.sanity.current ~= nil then
            inst.components.sanity.current = data.sanity.current
        end
        inst.components.health:DoDelta(0)
        inst.components.hunger:DoDelta(0)
        inst.components.sanity:DoDelta(0)
    end
end

-- When loading or spawning the character
local function onload(inst, data)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)
    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
	
	if data ~= nil and data.charge_time ~= nil then
        inst.level = data.level
		JalterAscend(inst)
    end
end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst)
	inst.MiniMapEntity:SetIcon( "jalter.tex" )
	inst:AddTag("jalter")
	inst:AddTag("vengefulsweetheart")
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	local NOMS = 
		{
			types = 
			{
				FOODTYPE.GENERIC,
				FOODTYPE.VEGGIE, 
				FOODTYPE.MEAT, 
				FOODTYPE.INSECT, 
				FOODTYPE.SEEDS,
				FOODTYPE.QUARTZ	,
				FOODTYPE.GOODIES,
				FOODTYPE.EMBER,
			}
		}
  
	inst.level = 0 --ascension my dude
	
	inst.soundsname = "willow"
	inst.components.health:SetMaxHealth(TUNING.JALTER_HEALTH) --3.5+ x10
	inst.components.hunger:SetMax(TUNING.JALTER_HUNGER) --0.5+ x10
	inst.components.sanity:SetMax(TUNING.JALTER_SANITY) --5+ x10
    inst.components.combat.damagemultiplier = 1.5
	inst.components.hunger.hungerrate = 0.5 * TUNING.WILSON_HUNGER_RATE
    inst.components.health:StartRegen(1,10)
	
	if inst.components.eater ~= nil then
		inst.components.eater:SetDiet({ FOODGROUP.JALTERNOMS }, { NOMS })
		inst.components.eater:SetOnEatFn(oneat)
    end
	
	inst:ListenForEvent("death", ondeath)
	inst:ListenForEvent("ms_playerreroll", ondeath) 
	
    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.MED_FUEL
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	inst.OnPreLoad = onpreload
	inst.OnSave = onsave
	inst:ListenForEvent("onattackother", JalterAttack)
	inst:ListenForEvent("killed", JalterKill)
	inst:ListenForEvent("sanitydelta",JalterSanity)
end

return MakePlayerCharacter("jalter", prefabs, assets, common_postinit, master_postinit, start_inv)