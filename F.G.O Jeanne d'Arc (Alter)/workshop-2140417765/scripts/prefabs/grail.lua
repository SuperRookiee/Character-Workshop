local assets=
{ 
    Asset("ANIM", "anim/grail.zip"),
	
    Asset("ATLAS", "images/inventoryimages/grail_1.xml"),
    Asset("IMAGE", "images/inventoryimages/grail_1.tex"),
    Asset("ATLAS", "images/inventoryimages/grail_2.xml"),
    Asset("IMAGE", "images/inventoryimages/grail_2.tex"),
}


local function UpdateImages(inst)
	if inst.sanguine == 0 then
		inst.AnimState:PlayAnimation("grail_clean", true)
		inst.components.inventoryitem.imagename = "grail_1"
		inst.components.inventoryitem.atlasname = "images/inventoryimages/grail_1.xml"
	else
		inst.AnimState:PlayAnimation("grail_bloody", true)
		inst.components.inventoryitem.imagename = "grail_2"
		inst.components.inventoryitem.atlasname = "images/inventoryimages/grail_2.xml"
    
	end
    --local skinname = inst:GetSkinName()
    --inst.components.inventoryitem:ChangeImageName((skinname or "grail")..tostring(range))
end
--ripped shamelessly from abigail's Old flower lua code
local function ondeath(inst, deadthing)
    if inst and deadthing 
	and inst.components.inventoryitem 
	and inst:IsValid() 
	and deadthing:IsValid() 
	and inst.components.inventoryitem.owner == nil 
	and deadthing:HasTag("player")
	and inst:GetDistanceSqToInst(deadthing) < 20*20
	
	then
        print("The Grail Hears You")
		
		inst.sanguine = 1
		UpdateImages(inst)
		local lightning = SpawnPrefab("lightning")
        lightning.Transform:SetPosition(inst.Transform:GetWorldPosition())		
	end
end


local function OnSave(inst,data)
	if inst.sanguine ~= nil then
		data.sanguine = inst.sanguine
	end
end

local function OnLoad(inst,data)
	if data ~= nil and data.sanguine ~= nil then
		inst.sanguine = data.sanguine
	end
end
-- local function onKill(inst, data)
--	local victim = data.victim
--	if victim:HasTag("warg") or victim:HasTag("spat") or victim:HasTag("spiderqueen") or victim:HasTag("spiderden") then
--		inst.components.exp:DoDelta(50)
--	elseif victim:HasTag("pig") or victim:HasTag("merm") or victim:HasTag("manrabbit") or victim:HasTag("shadowcreature") or victim:HasTag("chess") then
--		inst.components.exp:DoDelta(25)     
--	elseif victim:HasTag("dragonfly")  or victim:HasTag("toadstool") then
--		inst.components.exp:DoDelta(150)     
--	elseif victim:HasTag("epic") then
--		inst.components.exp:DoDelta(75)
--	elseif victim:HasTag("spider_warrior") or victim:HasTag("hound") then
--		inst.components.exp:DoDelta(3)     
--	else         
--		inst.components.exp:DoDelta(1)
--	end 
--end  


local function fn(colour)
	local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("grail")
    inst.AnimState:SetBuild("grail")
	inst.sanguine = 0
	
	inst.OnPreLoad = OnLoad
	inst.OnSave = OnSave
	
    inst.entity:SetPristine()
    if not TheWorld.ismastersim then
        return inst
    end
	
    inst:AddComponent("inspectable")
	
	inst:ListenForEvent("entity_death", function(world, data) ondeath(inst, data.inst) end, GetWorld())
	
    inst:AddComponent("inventoryitem")
	
	UpdateImages(inst)
    MakeHauntableLaunch(inst)
	
	--inst.onuse = onuse
	
    return inst
end

return  Prefab("grail", fn, assets)