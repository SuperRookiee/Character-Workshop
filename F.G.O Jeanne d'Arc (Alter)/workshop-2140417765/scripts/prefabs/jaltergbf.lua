local assets=
{ 
    Asset("ANIM", "anim/jaltergbf.zip"),
    Asset("ANIM", "anim/jaltergbf_swap.zip"), 

    Asset("ATLAS", "images/inventoryimages/jaltergbf.xml"),
    Asset("IMAGE", "images/inventoryimages/jaltergbf.tex"),
}

local prefabs = 
{
}

local function fn()
local function OnEquip(inst, owner) 
        owner.AnimState:OverrideSymbol("swap_hat", "jaltergbf_swap", "swap_hat")
        --owner.AnimState:Show("HAT")
        --owner.AnimState:Show("HAIR_HAT")
        --owner.AnimState:Hide("HAIR_NOHAT")
        --owner.AnimState:Hide("HAIR")
		
		owner.components.sanity:AddSanityPenalty(inst, 0.3)
		
        if owner:HasTag("player") then
            owner.AnimState:Hide("HEAD")
            owner.AnimState:Show("HEAD_HAT")
			owner.AnimState:Show("HAT")
			owner.AnimState:Show("HAIR_HAT")
        end
		
		local attractor = owner.components.birdattractor
        if attractor then
            attractor.spawnmodifier:SetModifier(inst, TUNING.BIRD_SPAWN_MAXDELTA_FEATHERHAT, "maxbirds")
            attractor.spawnmodifier:SetModifier(inst, TUNING.BIRD_SPAWN_DELAYDELTA_FEATHERHAT.MIN, "mindelay")
            attractor.spawnmodifier:SetModifier(inst, TUNING.BIRD_SPAWN_DELAYDELTA_FEATHERHAT.MAX, "maxdelay")
            
            local birdspawner = TheWorld.components.birdspawner
            if birdspawner ~= nil then
                birdspawner:ToggleUpdate(true)
            end
        end
    end
    local function OnUnequip(inst, owner) 
        owner.AnimState:ClearOverrideSymbol("swap_hat")
        owner.AnimState:Hide("HAT")
        owner.AnimState:Show("HAIR_HAT")
		
		owner.AnimState:Show("HEAD")
        owner.AnimState:Hide("HEAD_HAT")
		
		 local attractor = owner.components.birdattractor
        if attractor then
            attractor.spawnmodifier:RemoveModifier(inst)

            local birdspawner = TheWorld.components.birdspawner
            if birdspawner ~= nil then
                birdspawner:ToggleUpdate(true)
            end
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

    anim:SetBank("jaltergbf")
    anim:SetBuild("jaltergbf")
    anim:PlayAnimation("idle")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "jaltergbf"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jaltergbf.xml"
	
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.restrictedtag = "jalter"
	inst.components.equippable.walkspeedmult = 1.19
	
    return inst
end

return  Prefab("jaltergbf", fn, assets, prefabs)