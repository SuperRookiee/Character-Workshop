local assets=
{ 
    Asset("ANIM", "anim/jaltercrusader.zip"),
    Asset("ANIM", "anim/swap_jaltercrusader.zip"), 

    Asset("ATLAS", "images/inventoryimages/jaltercrusader.xml"),
    Asset("IMAGE", "images/inventoryimages/jaltercrusader.tex"),
}

local prefabs = 
{
}

local function fn(colour)
 local function OnEquip(inst, owner) 
       
        owner.AnimState:OverrideSymbol("swap_object", "swap_jaltercrusader", "jaltercrusader")
        owner.AnimState:Show("ARM_carry") 
        owner.AnimState:Hide("ARM_normal")
    end

    local function OnUnequip(inst, owner) 
        owner.AnimState:Hide("ARM_carry") 
        owner.AnimState:Show("ARM_normal")
    end
	
    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
    MakeInventoryPhysics(inst)
    
    anim:SetBank("jaltercrusader")
    anim:SetBuild("jaltercrusader")
    anim:PlayAnimation("idle") 
	
	inst:AddTag("jaltercrusader")

	inst:AddComponent("inspectable")
	inst:AddComponent("inventoryitem")
	inst:AddComponent("equippable")
	inst:AddComponent("finiteuses")
	
    inst.components.inventoryitem.imagename = "jaltercrusader"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jaltercrusader.xml"
    
    inst.components.finiteuses:SetMaxUses(TUNING.JALTERCRUSADER_USES)
	inst.components.finiteuses:SetUses(TUNING.JALTERCRUSADER_USES)
	inst.components.finiteuses:SetOnFinished(inst.Remove)
	
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
	
	inst:AddComponent("weapon")
	inst.components.weapon:SetDamage(TUNING.JALTERCRUSADER_DAM)
    inst.components.weapon:SetRange(9, 11)
    inst.components.weapon:SetProjectile("ice_projectile")
	
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_MED

	
    return inst
end

return  Prefab("jaltercrusader", fn, assets)