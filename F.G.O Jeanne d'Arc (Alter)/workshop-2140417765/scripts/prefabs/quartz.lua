local assets =
{
    Asset("ANIM", "anim/quartz.zip"),
	
	
    Asset("ATLAS", "images/inventoryimages/quartz.xml"),
    Asset("IMAGE", "images/inventoryimages/quartz.tex"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("quartz")
    inst.AnimState:SetBuild("quartz")
    inst.AnimState:PlayAnimation("idle")
	
    inst:AddTag("quartz")
	inst:AddTag("molebait")
    MakeInventoryFloatable(inst, "med", nil, 0.7)
	inst.entity:AddLight()
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    --inst:AddComponent("stackable")
    --inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "quartz"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/quartz.xml"
    
	inst.components.inventoryitem.onpickedupfn = function(inst, player)    
		if player.prefab ~= "jalter" then        
			player.components.inventory:DropItem(inst, true, true)        
			player.components.talker:Say("Whispers about a foreign truth...")    
		end
	end
    inst:AddComponent("bait")

    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.QUARTZ
    inst.components.edible.healthvalue = 9
    inst.components.edible.hungervalue = 9
    inst.components.edible.sanityvalue = -9
	
	inst:AddComponent("sanityaura")
	inst.components.sanityaura.aura = TUNING.CRAZINESS_MED
	print(TUNING.CRAZINESS_MED)
    MakeHauntableLaunchAndSmash(inst)
	
	inst.Light:SetIntensity(0.50)
	inst.Light:SetColour(223/255, 3/255, 252/255)
	inst.Light:SetFalloff(0.3)
	inst.Light:SetRadius(0.1)
	inst.Light:Enable(true)
	
	inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
	
    return inst
end

return Prefab("quartz", fn, assets)