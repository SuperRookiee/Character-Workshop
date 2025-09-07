local assets =
{
    Asset("ANIM", "anim/ghastfulember.zip"),
	
	
    Asset("ATLAS", "images/inventoryimages/ghastfulember.xml"),
    Asset("IMAGE", "images/inventoryimages/ghastfulember.tex"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("ghastfulember")
    inst.AnimState:SetBuild("ghastfulember")
    inst.AnimState:PlayAnimation("idle")
	
    inst:AddTag("ghastfulember")
    MakeInventoryFloatable(inst, "med", nil, 0.7)
	inst.entity:AddLight()
    
    inst.entity:AddNetwork()
	inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "ghastfulember"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/ghastfulember.xml"

	inst.components.inventoryitem.onpickedupfn = function(inst, player)    
		if player.prefab ~= "jalter" then        
			player.components.inventory:DropItem(inst, true, true)        
			player.components.talker:Say("It's hot to the touch!")    
		end
	end
    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.EMBER
    inst.components.edible.healthvalue = 30
    inst.components.edible.hungervalue = 30
    inst.components.edible.sanityvalue = 30
	
    MakeHauntableLaunchAndSmash(inst)
	
	inst.Light:SetIntensity(0.50)
	inst.Light:SetColour(201/255, 130/255, 16/255)
	inst.Light:SetFalloff(0.3)
	inst.Light:SetRadius(0.1)
	inst.Light:Enable(true)
	
	inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
	
    return inst
end

return Prefab("ghastfulember", fn, assets)