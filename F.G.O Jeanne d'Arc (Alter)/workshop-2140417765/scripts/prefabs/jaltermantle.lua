local assets=
{ 
	Asset("ANIM", "anim/jaltermantle.zip"),
	Asset("ANIM", "anim/swap_mantle_cozy.zip"),
    Asset("ATLAS", "images/inventoryimages/jaltermantle.xml"),
    Asset("IMAGE", "images/inventoryimages/jaltermantle.tex"),
	
}
local prefabs = {
}

local function wakeuptest(inst, phase)
    if phase ~= "night" then
        inst.components.sleepingbag:DoWakeUp()
    end
end

local function onuse(inst, sleeper)
	
		inst:WatchWorldState("phase", wakeuptest)

		if not sleeper:HasTag("shadowdominance") then
			sleeper:AddTag("shadowdominance")
		end
	
		if inst.sleeptask ~= nil then
			inst.sleeptask:Cancel()
		else
			sleeper.AnimState:ClearOverrideSymbol("swap_body")
			sleeper.AnimState:ClearOverrideSymbol("backpack")
			sleeper.AnimState:OverrideSymbol("swap_bedroll", "swap_mantle_cozy", "mantle_cozy")
			
			sleeper.AnimState:OverrideSymbol("backpack", "jaltermantle", "backpack")
			sleeper.AnimState:OverrideSymbol("swap_body", "jaltermantle", "swap_body")
		
		end
	
    --sleeper.AnimState:OverrideSymbol("jaltermantle_cozy", "jaltermantle_cozy", "swap_jaltermantle_cozy")
end
--sleep ticker

local function onsleeptick(inst, sleeper)
    local isstarving = false

    if sleeper.components.hunger ~= nil then
        sleeper.components.hunger:DoDelta(0, true, true)
        isstarving = sleeper.components.hunger:IsStarving()
    end

    if sleeper.components.sanity ~= nil and sleeper.components.sanity:GetPercentWithPenalty() < 1 then
        sleeper.components.sanity:DoDelta(0, true)
    end

    if not isstarving and inst.components.sleepingbag.healthsleep and sleeper.components.health ~= nil then
        sleeper.components.health:DoDelta(1, true, "bedroll", true)
    end

    if sleeper.components.temperature ~= nil then
        if inst.sleep_temp_min ~= nil and sleeper.components.temperature:GetCurrent() < inst.sleep_temp_min then
            sleeper.components.temperature:SetTemperature(sleeper.components.temperature:GetCurrent() + TUNING.SLEEP_TEMP_PER_TICK)
        elseif inst.sleep_temp_max ~= nil and sleeper.components.temperature:GetCurrent() > inst.sleep_temp_max then
            sleeper.components.temperature:SetTemperature(sleeper.components.temperature:GetCurrent() - TUNING.SLEEP_TEMP_PER_TICK)
        end
    end

    if isstarving then
        inst.components.sleepingbag:DoWakeUp()
    end
end
--Sleep Function
local function onsleep(inst, sleeper)
    -- check if we're in an invalid period (i.e. daytime). if so: wakeup
	
		inst:WatchWorldState("phase", wakeuptest)

		if inst.sleeptask ~= nil then
			inst.sleeptask:Cancel()
		end
		inst.sleeptask = inst:DoPeriodicTask(TUNING.SLEEP_TICK_PERIOD, onsleeptick, nil, sleeper)
		inst:PushEvent("knockedout")
		if not sleeper:HasTag("shadowdominance") then
			sleeper:AddTag("shadowdominance")
		end
end

local function slepslep(inst, time)
	if inst:HasTag("player") then
        inst:PushEvent("yawn")
        inst.components.grogginess:AddGrogginess(2, time + math.random())
	end

end

--Wake Up function
local function onwake(inst, sleeper, nostatechange)
	
    if inst.sleeptask ~= nil then
        inst.sleeptask:Cancel()
        inst.sleeptask = nil
    end

    inst:StopWatchingWorldState("phase", wakeuptest)

    if not nostatechange then
        if sleeper.sg:HasStateTag("bedroll") then
            sleeper.sg.statemem.iswaking = true
        end
        sleeper.sg:GoToState("wakeup")
    end
	
	if not sleeper:HasTag("shadowdominance") then
		sleeper:AddTag("shadowdominance")
	end
	
	slepslep(sleeper, TUNING.MANDRAKE_SLEEP_TIME)
	
	sleeper.AnimState:OverrideSymbol("backpack", "jaltermantle", "backpack")
	sleeper.AnimState:OverrideSymbol("swap_body", "jaltermantle", "swap_body")
end

local function fn()
	local function OnEquip(inst, owner) 
	
		inst:AddTag("shadowdominance")
		owner.components.hunger.hungerrate = TUNING.JALTERMANTLE_HUNGER_DRAIN 
		owner.AnimState:OverrideSymbol("backpack", "jaltermantle", "backpack")
		owner.AnimState:OverrideSymbol("swap_body", "jaltermantle", "swap_body")
    end
	
    local function OnUnequip(inst, owner) 
		owner.AnimState:ClearOverrideSymbol("swap_body")
		owner.AnimState:ClearOverrideSymbol("backpack")
		if inst:HasTag("shadowdominance") then
			inst:RemoveTag("shadowdominance")
		end
		owner.components.hunger.hungerrate = TUNING.JALTER_HUNGER_DRAIN
    end
	
    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
    MakeInventoryPhysics(inst)
    
    inst.entity:AddNetwork()
	inst.entity:SetPristine()

    anim:SetBank("jaltermantle")
    anim:SetBuild("jaltermantle")
    anim:PlayAnimation("idle")

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "jaltermantle"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jaltermantle.xml"
    
	inst:AddComponent("inspectable")
	
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
    --inst.components.equippable.dapperness = TUNING.CRAZINESS_SMALL
	--inst.components.equippable.restrictedtag = "jalter"
	
	
	inst:AddComponent("insulator")
    inst.components.insulator:SetSummer()
    inst.components.insulator:SetInsulation(TUNING.INSULATION_SMALL)

	inst:AddComponent("armor")
	inst.components.armor:InitCondition(TUNING.JALTERMANTLE_DUR, TUNING.JALTERMANTLE_ABS)
	
    inst:AddComponent("waterproofer")
    inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_HUGE)
	
	inst:AddComponent("sleepingbag")
    inst.components.sleepingbag.onsleep = onsleep
    inst.components.sleepingbag.onwake = onwake
    inst.onuse = onuse
	
    if not TheWorld.ismastersim then
        return inst
    end
    return inst
end

return  Prefab("jaltermantle", fn, assets, prefabs)