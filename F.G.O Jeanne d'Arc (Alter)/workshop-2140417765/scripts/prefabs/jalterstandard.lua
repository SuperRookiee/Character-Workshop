local assets=
{ 
    Asset("ANIM", "anim/jalterstandard.zip"),
    Asset("ANIM", "anim/swap_jalterstandard.zip"), 

    Asset("ATLAS", "images/inventoryimages/jalterstandard.xml"),
    Asset("IMAGE", "images/inventoryimages/jalterstandard.tex"),
}

local prefabs = 
{
}

local function fn(colour)
	local function OnEquip(inst, owner) 
       
        owner.AnimState:OverrideSymbol("swap_object", "swap_jalterstandard", "jalterstandard")
        owner.AnimState:Show("ARM_carry") 
        owner.AnimState:Hide("ARM_normal") 
		
		inst.Light:Enable(true)
		
		if not owner:HasTag("jalter") then
			owner.components.sanity:AddSanityPenalty(inst,0.85)
			owner.components.talker:Say("This feels wrong.")
			TheWorld:PushEvent("ms_sendlightningstrike", owner:GetPosition())
			inst.Light:Enable(false)
		else
			owner.components.sanity:AddSanityPenalty(inst,0.2)
			inst.Light:Enable(true)
        end
    end

    local function OnUnequip(inst, owner) 
        owner.AnimState:Hide("ARM_carry") 
        owner.AnimState:Show("ARM_normal") 
		
		inst.Light:Enable(false)
		
		owner.components.sanity:RemoveSanityPenalty(inst)
    end
	
	local function OnPocket(inst, owner)
	
		inst.Light:Enable(false)
	end

    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
	inst.entity:AddLight()
	inst.Light:SetIntensity(0.60)
	inst.Light:SetColour(126/255, 252/255, 250/255)
	inst.Light:SetFalloff(0.2)
	inst.Light:SetRadius(0.5)
	inst.Light:Enable(false)
	
    inst.entity:AddNetwork()
	inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
	
    MakeInventoryPhysics(inst)
    
    anim:SetBank("jalterstandard")
    anim:SetBuild("jalterstandard")
    anim:PlayAnimation("idle")

	inst:AddComponent("weapon")
	inst:AddComponent("inspectable")
	inst:AddComponent("inventoryitem")
	
	inst:AddTag("jalterstandard")

    inst.components.inventoryitem.imagename = "jalterstandard"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/jalterstandard.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnPocket( OnPocket )	
    inst.components.equippable:SetOnUnequip( OnUnequip )
    inst.components.equippable.dapperness = TUNING.DAPPERNESS_HUGE
	
	inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.JALTERCLAYMORE_USES)
	inst.components.finiteuses:SetUses(TUNING.JALTERCLAYMORE_USES)
	inst.components.finiteuses:SetOnFinished(inst.Remove)
	
	inst.components.weapon:SetDamage(TUNING.JALTERSTANDARD_DAM)
	inst.components.weapon:SetRange(TUNING.JALTERSTANDARD_RANGE)
	
	inst:AddComponent("sanityaura")
	inst.components.sanityaura.aura = TUNING.SANITYAURA_SMALL
	
    return inst
end

return  Prefab("jalterstandard", fn, assets)