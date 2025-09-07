local assets=
{ 
    Asset("ANIM", "anim/jalterzinnia.zip"),
    Asset("ANIM", "anim/jalterzinnia_swap.zip"), 

    Asset("ATLAS", "images/inventoryimages/jalterzinnia.xml"),
    Asset("IMAGE", "images/inventoryimages/jalterzinnia.tex"),
}

local prefabs = 
{
}

local function fn()
local function OnEquip(inst, owner) 
        owner.AnimState:OverrideSymbol("swap_hat", "jalterzinnia_swap", "swap_hat")
        owner.AnimState:Show("HAT")
        owner.AnimState:Show("HAIR_HAT")
		
		owner.components.sanity:AddSanityPenalty(inst,0.8)
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
	
    anim:SetBank("jalterzinnia")
    anim:SetBuild("jalterzinnia")
    anim:PlayAnimation("idle")

	inst:AddComponent("inspectable")
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "jalterzinnia"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jalterzinnia.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_MED_LARGE
	inst.components.equippable.restrictedtag = "jalter"
	
    return inst
end

return  Prefab("jalterzinnia", fn, assets, prefabs)