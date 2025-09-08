local assets =
{

	Asset( "ANIM", "anim/miko.zip" ),
	Asset( "ANIM", "anim/ghost_miko_build.zip" ),
	
}

local skins =
{

	normal_skin = "miko",
	ghost_skin = "ghost_miko_build",
	
}

local base_prefab = "miko"

local tags = {"MIKO", "CHARACTER"}

return CreatePrefabSkin("miko_none",
{

	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
	
})

--Current Mod Version: [1.3.8]
--DST Character Mod created by: Senshimi [https://steamcommunity.com/id/Senshimi/]
--Touhou Project Collection: [http://steamcommunity.com/sharedfiles/filedetails/?id=701414094]
