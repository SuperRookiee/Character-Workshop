
local MakePlayerCharacter = require "prefabs/player_common"

local assets = {Asset("SCRIPT", "scripts/prefabs/player_common.lua"), }

local prefabs = {}

local start_inv = {"goldnugget", "redgem", "bluegem", }

local function onbecamehuman(inst)

	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "miko_speed_mod", 1)

end

local function onbecameghost(inst)

   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "miko_speed_mod")
   
end

local function onload(inst)

    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then

        onbecameghost(inst)

    else

        onbecamehuman(inst)

    end
	
end

local function perkstats(inst)

	if TheWorld.state.phase == "day" then
		
		inst.components.hunger.hungerrate = ( 0.0 * TUNING.WILSON_HUNGER_RATE )
		
		inst.components.combat.damagemultiplier = 1.50
		inst.components.health.absorb = 0.25
		
		inst.components.locomotor.walkspeed = 1.25 * TUNING.WILSON_WALK_SPEED
		inst.components.locomotor.runspeed = 1.25 * TUNING.WILSON_RUN_SPEED
		
		inst.components.sanity.neg_aura_mult = 1.0
		inst.components.sanity.night_drain_mult = 1.0
		
		inst.Light:Enable(false)
		
	elseif TheWorld.state.phase == "dusk" then
	
		inst.components.hunger.hungerrate = ( 0.25 * TUNING.WILSON_HUNGER_RATE )
		
		inst.components.combat.damagemultiplier = 1.25
		inst.components.health.absorb = 0.0
		
		inst.components.locomotor.walkspeed = 1.0 * TUNING.WILSON_WALK_SPEED
		inst.components.locomotor.runspeed = 1.0 * TUNING.WILSON_RUN_SPEED
		
		inst.components.sanity.neg_aura_mult = 1.25
		inst.components.sanity.night_drain_mult = 1.25
		
		inst.Light:Enable(false)
		
	elseif TheWorld.state.phase == "night" then
	
		inst.components.talker:Say("Blessing of the Seven Stars", 3.0)

		inst.components.hunger.hungerrate = ( 0.5 * TUNING.WILSON_HUNGER_RATE )
	
		inst.components.combat.damagemultiplier = 0.75
		inst.components.health.absorb = -0.25
	
		inst.components.locomotor.walkspeed = 0.75 * TUNING.WILSON_WALK_SPEED
		inst.components.locomotor.runspeed = 0.75 * TUNING.WILSON_RUN_SPEED
		
		inst.components.sanity.neg_aura_mult = 1.50
		inst.components.sanity.night_drain_mult = 1.50
		
		inst.entity:AddLight()
		inst.Light:SetRadius(5)
		inst.Light:SetFalloff(.5)
		inst.Light:SetIntensity(.5)
		inst.Light:SetColour(200/255,150/255,50/255)
		inst.Light:Enable(true)
		
	elseif tempCaveVar == true and TheWorld.state.phase == "caveday" then
		
		inst.components.hunger.hungerrate = ( 0.0 * TUNING.WILSON_HUNGER_RATE )
		
		inst.components.combat.damagemultiplier = 1.50
		inst.components.health.absorb = 0.25
		
		inst.components.locomotor.walkspeed = 1.25 * TUNING.WILSON_WALK_SPEED
		inst.components.locomotor.runspeed = 1.25 * TUNING.WILSON_RUN_SPEED
		
		inst.components.sanity.neg_aura_mult = 1.0
		inst.components.sanity.night_drain_mult = 1.0
		
		inst.Light:Enable(false)
		
	elseif tempCaveVar == true and TheWorld.state.phase == "cavedusk" then
		
		inst.components.hunger.hungerrate = ( 0.25 * TUNING.WILSON_HUNGER_RATE )
		
		inst.components.combat.damagemultiplier = 1.25
		inst.components.health.absorb = 0.0
		
		inst.components.locomotor.walkspeed = 1.0 * TUNING.WILSON_WALK_SPEED
		inst.components.locomotor.runspeed = 1.0 * TUNING.WILSON_RUN_SPEED
		
		inst.components.sanity.neg_aura_mult = 1.25
		inst.components.sanity.night_drain_mult = 1.25
		
		inst.Light:Enable(false)
		
	elseif tempCaveVar == true and TheWorld.state.phase == "cavenight" then
	
		inst.components.talker:Say("Blessing of the Seven Stars", 3.0)
		
		inst.components.hunger.hungerrate = ( 0.5 * TUNING.WILSON_HUNGER_RATE )
	
		inst.components.combat.damagemultiplier = 1.0
		inst.components.health.absorb = -0.1
	
		inst.components.locomotor.walkspeed = 1.0 * TUNING.WILSON_WALK_SPEED
		inst.components.locomotor.runspeed = 1.0 * TUNING.WILSON_RUN_SPEED
		
		inst.components.sanity.neg_aura_mult = 1.50
		inst.components.sanity.night_drain_mult = 1.50
		
		inst.entity:AddLight()
		inst.Light:SetRadius(5)
		inst.Light:SetFalloff(.5)
		inst.Light:SetIntensity(.5)
		inst.Light:SetColour(200/255,150/255,50/255)
		inst.Light:Enable(true)
		
	end
	
end

local common_postinit = function(inst) 

	inst.MiniMapEntity:SetIcon( "miko.tex" )
	
end

local master_postinit = function(inst)

	inst.soundsname = "willow"

	inst.components.health:SetMaxHealth(200)
	inst.components.hunger:SetMax(200)
	inst.components.sanity:SetMax(200)
	
	inst.components.hunger.hungerrate = ( 0.0 * TUNING.WILSON_HUNGER_RATE )
		
	inst.components.combat.damagemultiplier = 1.50
	inst.components.health.absorb = 0.25
		
	inst.components.locomotor.walkspeed = 1.25 * TUNING.WILSON_WALK_SPEED
	inst.components.locomotor.runspeed = 1.25 * TUNING.WILSON_RUN_SPEED
		
	inst.components.sanity.neg_aura_mult = 1.0
	inst.components.sanity.night_drain_mult = 1.0
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
	inst:WatchWorldState( "startday", function(inst) perkstats(inst) end )
	inst:WatchWorldState( "startdusk", function(inst) perkstats(inst) end )
	inst:WatchWorldState( "startnight", function(inst) perkstats(inst) end )
	inst:WatchWorldState( "startcaveday", function(inst) perkstats(inst) end )
	inst:WatchWorldState( "startcavedusk", function(inst) perkstats(inst) end )
	inst:WatchWorldState( "startcavenight", function(inst) perkstats(inst) end )	
	perkstats(inst)
	return inst
	
end

return MakePlayerCharacter("miko", prefabs, assets, common_postinit, master_postinit, start_inv)

--Current Mod Version: [1.3.8]
--DST Character Mod created by: Senshimi [https://steamcommunity.com/id/Senshimi/]
--Touhou Project Collection: [http://steamcommunity.com/sharedfiles/filedetails/?id=701414094]
