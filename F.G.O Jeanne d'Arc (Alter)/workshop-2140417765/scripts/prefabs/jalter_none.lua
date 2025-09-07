local assets =
{
	Asset( "ANIM", "anim/jalter.zip" ),
	Asset( "ANIM", "anim/ghost_jalter_build.zip" ),
}

local skins =
{
	normal_skin = "jalter",
	ghost_skin = "ghost_jalter_build",
}

return CreatePrefabSkin("jalter_none",
{
	base_prefab = "jalter",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"JALTER", "CHARACTER", "BASE"},
	build_name_override = "jalter",
	rarity = "Character",
})