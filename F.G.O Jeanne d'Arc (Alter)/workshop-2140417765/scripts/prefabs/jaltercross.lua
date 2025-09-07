local assets=
{ 
    Asset("ANIM", "anim/jaltercross.zip"),
    Asset("ANIM", "anim/swap_jaltercross.zip"), 

    Asset("ATLAS", "images/inventoryimages/jaltercross.xml"),
    Asset("IMAGE", "images/inventoryimages/jaltercross.tex"),
}

local prefabs = 
{
}

local function fn(colour)
 local function OnEquip(inst, owner) 
        owner.AnimState:OverrideSymbol("swap_object", "swap_jaltercross", "jaltercross")
        owner.AnimState:Show("ARM_carry") 
        owner.AnimState:Hide("ARM_normal") 
    end

    local function OnUnequip(inst, owner) 
        owner.AnimState:Hide("ARM_carry") 
        owner.AnimState:Show("ARM_normal") 
    end
	
	local function onattack(inst, attacker, target)
		inst.components.weapon.attackwear = target ~= nil and target:IsValid() 
			and (target:HasTag("shadow") or target:HasTag("shadowminion") or target:HasTag("shadowchesspiece") or target:HasTag("stalker") or target:HasTag("stalkerminion")) 
			and TUNING.GLASSCUTTER.SHADOW_WEAR
			or 1
			
		if (target:HasTag("shadow") or target:HasTag("shadowminion") or target:HasTag("shadowchesspiece") or target:HasTag("stalker") or target:HasTag("stalkerminion")) then
			SpawnPrefab("explosivehit").Transform:SetPosition(target.Transform:GetWorldPosition())
			target.components.health:DoDelta(-TUNING.JALTERCROSS_SMITE)
			attacker.components.health:DoDelta(5)
		end		
	end

    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
    
    inst.entity:AddNetwork()
	inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

	
    MakeInventoryPhysics(inst)
    
    anim:SetBank("jaltercross")
    anim:SetBuild("jaltercross")
    anim:PlayAnimation("idle") 
	
	inst:AddTag("jaltercross")

	inst:AddComponent("weapon")
	inst:AddComponent("inspectable")
	inst:AddComponent("inventoryitem")
	inst:AddComponent("equippable")
	inst:AddComponent("finiteuses")
	
    inst.components.inventoryitem.imagename = "jaltercross"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jaltercross.xml"
    
    inst.components.finiteuses:SetMaxUses(TUNING.JALTERCROSS_USES)
	inst.components.finiteuses:SetUses(TUNING.JALTERCROSS_USES)
	inst.components.finiteuses:SetOnFinished(inst.Remove)
	
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.weapon:SetOnAttack(onattack)
	
	inst.components.weapon:SetDamage(7)
	inst.components.weapon:SetRange(0.2)
	
	inst:AddComponent("sanityaura")
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_LARGE
    return inst
end

return  Prefab("jaltercross", fn, assets)