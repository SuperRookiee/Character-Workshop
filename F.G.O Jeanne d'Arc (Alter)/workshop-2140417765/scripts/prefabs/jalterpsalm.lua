
local assets=
{ 
   -- Asset("ANIM", "anim/jalterpsalm.zip"),
	Asset("ANIM", "anim/swap_jalterpsalm.zip"), 
	Asset("ANIM", "anim/book_psalm.zip"),	
    Asset("ATLAS", "images/inventoryimages/jalterpsalm.xml"),
    Asset("IMAGE", "images/inventoryimages/jalterpsalm.tex"),
}

local prefabs = 
{
}
local function onturnon(inst)
	inst.AnimState:PlayAnimation("proximity_pre")
    inst.AnimState:PlayAnimation("proximity_loop", true)
	inst.Light:Enable(true)
end

local function onturnoff(inst)
    if inst._activetask == nil and not inst.components.inventoryitem:IsHeld() then
        inst.AnimState:PlayAnimation("proximity_pst")
        inst.AnimState:PlayAnimation("idle_hp", false)
		
    end
	inst.Light:Enable(false)
end

local function doneact(inst)
    inst._activetask = nil
    if inst.components.prototyper.on then
        inst.AnimState:PlayAnimation("proximity_loop", true)
    else
        inst.AnimState:PlayAnimation("proximity_pst")
        inst.AnimState:PushAnimation("idle_hp", false)
        startclosingsounds(inst)
    end
end

local function showfx(inst, show)
    if inst.AnimState:IsCurrentAnimation("use") then
        if show then
            inst.AnimState:Show("FX")
        else
            inst.AnimState:Hide("FX")
        end
    end
end

local function onuse(inst, hasfx)
    stopclosingsounds(inst)
    inst.AnimState:PlayAnimation("use")
    inst:DoTaskInTime(0, showfx, hasfx)
	
    if inst._activetask ~= nil then
        inst._activetask:Cancel()
    end
    inst._activetask = inst:DoTaskInTime(inst.AnimState:GetCurrentAnimationLength(), doneact)
end

local function onactivate(inst)
    onuse(inst, true)
end

local function onputininventory(inst)
    if inst._activetask ~= nil then
        inst._activetask:Cancel()
        inst._activetask = nil
    end
	
    inst.AnimState:PlayAnimation("idle_hp")
	
end

local function ondropped(inst)
    if inst.components.prototyper.on then
        onturnon(inst)
    end
end

local function OnHaunt(inst, haunter)
    if inst.components.prototyper.on then
        onuse(inst, false)
    else
        Launch(inst, haunter, TUNING.LAUNCH_SPEED_SMALL)
    end
    inst.components.hauntable.hauntvalue = TUNING.HAUNT_TINY
    return true
end

local function fn(colour)
	local function OnEquip(inst, owner) 
       
        owner.AnimState:OverrideSymbol("swap_object", "swap_jalterpsalm", "jalterpsalm")
        owner.AnimState:Show("ARM_carry") 
        owner.AnimState:Hide("ARM_normal") 
		
		if not owner:HasTag("jalter") then
			TheWorld:PushEvent("ms_sendlightningstrike", owner:GetPosition()) 
			
			owner.components.sanity:AddSanityPenalty(inst,0.9)
			owner.components.talker:Say("They are speaking.")
		else
		--clear
			owner.components.sanity:AddSanityPenalty(inst,0.4)
        end
		
		inst.Light:Enable(true)
    end

    local function OnUnequip(inst, owner) 
        owner.AnimState:Hide("ARM_carry") 
        owner.AnimState:Show("ARM_normal") 
		owner.components.sanity:RemoveSanityPenalty(inst)
		inst.Light:Enable(false)
    end
	
	local function OnPocket(inst, owner)
		inst.Light:Enable(false)
	end

	local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
	
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    if not TheWorld.ismastersim then
        return inst
    end
	
	inst:AddTag("jalterpsalm")
	inst:AddTag("prototyper")
	inst:AddComponent("inspectable")
	inst:AddComponent("inventoryitem")
	
	inst.entity:AddLight()
	inst.Light:SetIntensity(0.9)
	inst.Light:SetColour(126/255, 252/255, 250/255)
	inst.Light:SetFalloff(0.2)
	inst.Light:SetRadius(0.2)
	inst.Light:Enable(false)
		
    inst._activetask = nil
	
    inst.AnimState:SetBank("jalterpsalm")
    inst.AnimState:SetBuild("book_psalm")
    inst.AnimState:PlayAnimation("idle_hp") 
	
    MakeInventoryFloatable(inst, "med", nil, 0.75)

    inst.components.inventoryitem.imagename = "jalterpsalm"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jalterpsalm.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
	inst.components.equippable:SetOnPocket( OnPocket )
	
	inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.JALTERCLAYMORE_USES)
	inst.components.finiteuses:SetUses(TUNING.JALTERCLAYMORE_USES)
	inst.components.finiteuses:SetOnFinished(inst.Remove)
	
	inst:AddComponent("weapon")
	inst.components.weapon:SetDamage(TUNING.JALTERSTANDARD_DAM)
	inst.components.weapon:SetRange(0.1)
	
    inst:AddComponent("prototyper")
    inst.components.prototyper.onturnon = onturnon
    inst.components.prototyper.onturnoff = onturnoff
    inst.components.prototyper.onactivate = onactivate
   
    inst:ListenForEvent("onputininventory", onputininventory)
    inst:ListenForEvent("ondropped", ondropped)

    return inst
end

return  Prefab("jalterpsalm", fn, assets)