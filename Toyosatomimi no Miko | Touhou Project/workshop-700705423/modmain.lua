PrefabFiles = {
	"miko",
	"miko_none",
}

Assets = {

    Asset( "IMAGE", "images/saveslot_portraits/miko.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/miko.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/miko.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/miko.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/miko_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/miko_silho.xml" ),

    Asset( "IMAGE", "bigportraits/miko.tex" ),
    Asset( "ATLAS", "bigportraits/miko.xml" ),
	
	Asset( "IMAGE", "images/map_icons/miko.tex" ),
	Asset( "ATLAS", "images/map_icons/miko.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_miko.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_miko.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_miko.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_miko.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_miko.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_miko.xml" ),
	
	Asset( "IMAGE", "images/names_miko.tex" ),
    Asset( "ATLAS", "images/names_miko.xml" ),
	
    Asset( "IMAGE", "bigportraits/miko_none.tex" ),
    Asset( "ATLAS", "bigportraits/miko_none.xml" ),

}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

STRINGS.CHARACTER_TITLES.miko = "The Almighty"
STRINGS.CHARACTER_NAMES.miko = "Miko"
STRINGS.CHARACTER_DESCRIPTIONS.miko = "*Lively Hermit.\n*Child of Light\n*Blessing of the Seven Stars"
STRINGS.CHARACTER_QUOTES.miko = "\"Harmony is to be valued, or something.\""

STRINGS.CHARACTERS.MIKO = require "speech_miko"

STRINGS.NAMES.MIKO = "Miko"

AddMinimapAtlas("images/map_icons/miko.xml")

AddModCharacter("miko", "FEMALE")

--Current Mod Version: [1.3.8]
--DST Character Mod created by: Senshimi [https://steamcommunity.com/id/Senshimi/]
--Touhou Project Collection: [http://steamcommunity.com/sharedfiles/filedetails/?id=701414094]
