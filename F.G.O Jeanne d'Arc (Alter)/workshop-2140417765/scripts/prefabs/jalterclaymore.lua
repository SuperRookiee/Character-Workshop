local assets=
{ 
    Asset("ANIM", "anim/jalterclaymore.zip"),
    Asset("ANIM", "anim/swap_jalterclaymore.zip"), 

    Asset("ATLAS", "images/inventoryimages/jalterclaymore.xml"),
    Asset("IMAGE", "images/inventoryimages/jalterclaymore.tex"),
}

local prefabs = {
}

local function onattack(inst, attacker, target)
		inst.components.weapon.attackwear = target ~= nil and target:IsValid() 
			and (target:HasTag("shadow") or target:HasTag("shadowminion") or target:HasTag("shadowchesspiece") or target:HasTag("stalker") or target:HasTag("stalkerminion")) 
			and TUNING.GLASSCUTTER.SHADOW_WEAR
			or 1
	end

local function fn(colour)
 local function OnEquip(inst, owner) 
       
        owner.AnimState:OverrideSymbol("swap_object", "swap_jalterclaymore", "jalterclaymore")
        owner.AnimState:Show("ARM_carry") 
        owner.AnimState:Hide("ARM_normal") 
		--check if player isnt jalter
		if not owner:HasTag("jalter") then
			TheWorld:PushEvent("ms_sendlightningstrike", owner:GetPosition())
			owner.components.talker:Say("They are speaking.")
            owner.components.sanity:AddSanityPenalty(inst,0.1)
        end
    end

    local function OnUnequip(inst, owner) 
        owner.AnimState:Hide("ARM_carry") 
        owner.AnimState:Show("ARM_normal") 
		
		owner.components.sanity:RemoveSanityPenalty(inst)
    end
	
    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
    MakeInventoryPhysics(inst)
    
    inst.entity:AddNetwork()
	inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    anim:SetBank("jalterclaymore")
    anim:SetBuild("jalterclaymore")
    anim:PlayAnimation("idle") 
	
	inst:AddTag("jalter")
	inst:AddTag("jalterclaymore")

	inst:AddComponent("weapon")
	inst:AddComponent("inspectable")
	inst:AddComponent("inventoryitem")
	inst:AddComponent("equippable")
	inst:AddComponent("finiteuses")
	
    inst.components.inventoryitem.imagename = "jalterclaymore"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jalterclaymore.xml"
	
    inst.components.finiteuses:SetMaxUses(TUNING.JALTERCLAYMORE_USES)
	inst.components.finiteuses:SetUses(TUNING.JALTERCLAYMORE_USES)
	inst.components.finiteuses:SetOnFinished(inst.Remove)
	
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
    inst.components.equippable.dapperness = TUNING.CRAZINESS_SMALL

	inst.components.weapon:SetDamage(TUNING.JALTERCLAYMORE_DAM)
	inst.components.weapon:SetRange(0.9)
	
    return inst
end

return  Prefab("jalterclaymore", fn, assets)