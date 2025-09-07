local assets={ 
    Asset("ANIM", "anim/jaltertorq.zip"),
    Asset("ANIM", "anim/jaltertorq_swap.zip"), 

    Asset("ATLAS", "images/inventoryimages/jaltertorq.xml"),
    Asset("IMAGE", "images/inventoryimages/jaltertorq.tex"),
}

local prefabs = {
}

local function fn()

	local function OnEquip(inst, owner) 
		
        owner.AnimState:OverrideSymbol("swap_hat", "jaltertorq_swap", "swap_hat")
        owner.AnimState:Show("HAT")
        owner.AnimState:Show("HAIR_HAT")
		
    end
    local function OnUnequip(inst, owner) 
        owner.AnimState:ClearOverrideSymbol("swap_hat")
        if owner:HasTag("player") then
            owner.AnimState:Show("HEAD")
            owner.AnimState:Hide("HEAD_HAT")
        end
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

	inst:AddTag("jaltertorq")
	
    anim:SetBank("jaltertorq")
    anim:SetBuild("jaltertorq")
    anim:PlayAnimation("idle")

	inst:AddComponent("inspectable")
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "jaltertorq"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jaltertorq.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip(OnUnequip)
    inst.components.equippable.dapperness = TUNING.CRAZINESS_SMALL
	inst.components.equippable.restrictedtag = "jalter"
	inst:AddComponent("armor")
	inst.components.armor:InitCondition(TUNING.JALTERTORQ_DUR, TUNING.JALTERTORQ_ABS)
	
    inst:AddComponent("waterproofer")
    inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL)
	
	return inst
end

return  Prefab("jaltertorq", fn, assets, prefabs)