PrefabFiles = {
	"jalter",
	"jalter_none",
	"jalterstandard",
	"jaltertorq",
	"jalterclaymore",
	"jalterzinnia",
	"jaltergbf",
	"jaltercrusader",
	"jalterpsalm",
	"jaltermantle",
	"quartz",
	"ghastfulember",
	"jaltercross",
	"grail",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/jalter.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/jalter.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/jalter.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/jalter.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/jalter_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/jalter_silho.xml" ),

    Asset( "IMAGE", "bigportraits/jalter.tex" ),
    Asset( "ATLAS", "bigportraits/jalter.xml" ),
	
	Asset( "IMAGE", "images/map_icons/jalter.tex" ),
	Asset( "ATLAS", "images/map_icons/jalter.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_jalter.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_jalter.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_jalter.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_jalter.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_jalter.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_jalter.xml" ),
	
	Asset( "IMAGE", "images/names_jalter.tex" ),
    Asset( "ATLAS", "images/names_jalter.xml" ),
	
	Asset( "IMAGE", "images/names_gold_jalter.tex" ),
    Asset( "ATLAS", "images/names_gold_jalter.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/jaltertorq.tex" ),
    Asset( "ATLAS", "images/inventoryimages/jaltertorq.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/jalterpsalm.tex" ),
    Asset( "ATLAS", "images/inventoryimages/jalterpsalm.xml" ),
}

--CONSTANTS
TUNING.JALTERSMITE = 15
TUNING.JALTERROCKET = 17

TUNING.JALTERCLAYMORE_USES = 500
TUNING.JALTERCLAYMORE_DAM = 60

TUNING.JALTERCRUSADER_USES = 500

TUNING.JALTERSTANDARD_RANGE = 4
TUNING.JALTERSTANDARD_DAM = 15

TUNING.JALTERCROSS_USES = 50
TUNING.JALTERCROSS_SMITE = 95

TUNING.JALTERCRUSADER_DAM = 46

TUNING.JALTERTORQ_DUR = 999
TUNING.JALTERTORQ_ABS = 0.8

TUNING.JALTERMANTLE_DUR = 1200
TUNING.JALTERMANTLE_ABS = 0.85

TUNING.JALTER_HEALTH = 180
TUNING.JALTER_HUNGER = 185
TUNING.JALTER_SANITY = 200

TUNING.JALTERHEALTH_MAX = 200
TUNING.JALTERHUNGER_MAX = 200
TUNING.JALTERSANITY_MAX = 250


TUNING.JALTERMANTLE_HUNGER_DRAIN =  5 * TUNING.WILSON_HUNGER_RATE
TUNING.JALTERMANTLE_FOREIGN_HUNGER_DRAIN = 10 * TUNING.WILSON_HUNGER_RATE
TUNING.JALTER_HUNGER_DRAIN = 0.5 * TUNING.WILSON_HUNGER_RATE

AddMinimapAtlas("images/map_icons/jalter.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
---------------------------------
--GLOBAL.CHEATS_ENABLED = true
--GLOBAL.require( 'debugkeys' )
---------------------------------

local FOODTYPE = GLOBAL.FOODTYPE
FOODTYPE.QUARTZ = "QUARTZ"
local FOODTYPE = GLOBAL.FOODTYPE
FOODTYPE.EMBER = "EMBER"

-- The character select screen lines
STRINGS.CHARACTER_SURVIVABILITY.jalter = "Gruesome"

STRINGS.CHARACTER_TITLES.jalter = "The Vengeful Sweetheart"
STRINGS.CHARACTER_NAMES.jalter = "Jeanette"
STRINGS.CHARACTER_DESCRIPTIONS.jalter = "*Angry and Insane Baguette \n *Will \"burn\" you \n *Not sane everyday."
STRINGS.CHARACTER_QUOTES.jalter = "\"I hate France... And Pierre.\""

STRINGS.CHARACTERS.JALTER = require "speech_jalter"

STRINGS.NAMES.jalter = "Jeanette"
STRINGS.SKIN_NAMES.jalter_none = "Jeanette"
AddModCharacter("jalter", "FEMALE")

--Foods and Recipes	
local FOODTYPE = GLOBAL.FOODTYPE
local FOODGROUP = GLOBAL.FOODGROUP

FOODGROUP.JALTERNOMS = {}
FOODGROUP.JALTERNOMS.name = "jalternoms"
FOODGROUP.JALTERNOMS.types =
{

	FOODTYPE.MEAT,
	FOODTYPE.VEGGIE,
	FOODTYPE.INSECT,
	FOODTYPE.SEEDS,
	FOODTYPE.GENERIC,
	FOODTYPE.GOODIES,
	FOODTYPE.QUARTZ,
	FOODTYPE.EMBER
	
}

---recipe time---
RECIPETABS = GLOBAL.RECIPETABS 
Recipe = GLOBAL.Recipe 
Ingredient = GLOBAL.Ingredient 
TECH = GLOBAL.TECH 

local jalterFolderol = AddRecipeTab("Jeanette's Folderol", 998, "images/inventoryimages/jaltertorq.xml", "images/inventoryimages/jaltertorq.tex", "jalter")

--StCatherine's toothpick
local jalterclaymore = AddRecipe("jalterclaymore", 
	{
		Ingredient("nightmarefuel", 3),
		Ingredient("spear", 1),
		Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, 5)
	},	
	jalterFolderol,
	TECH.NONE,
	nil, nil, nil, nil,"jalter")
jalterclaymore.atlas = "images/inventoryimages/jalterclaymore.xml" 
GLOBAL.STRINGS.RECIPE_DESC.JALTERCLAYMORE = "Going insane hasn't been easier!"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERCLAYMORE = "Such an evil aura!"
GLOBAL.STRINGS.NAMES.JALTERCLAYMORE = "St Catherine's Hewer"
--Wayward Standard Recipe
local jalterstandard = AddRecipe("jalterstandard", 
	{
		Ingredient("nightmarefuel", 3),
		Ingredient("twigs", 3),
		Ingredient("silk", 2)
	},	
	jalterFolderol,
	TECH.NONE,
	nil, nil, nil, nil,"jalter")
jalterstandard.atlas = "images/inventoryimages/jalterstandard.xml" 
GLOBAL.STRINGS.RECIPE_DESC.JALTERSTANDARD = "Carry on!"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERSTANDARD = "It's a flag!"
GLOBAL.STRINGS.NAMES.JALTERSTANDARD = "Wayward Standard"
--Zinnian Hairpin
local jalterzinnia = AddRecipe("jalterzinnia", 
	{
		Ingredient("petals", 2),
		Ingredient("petals_evil", 2),
		Ingredient("twigs",1)
	},	
	jalterFolderol,
	TECH.NONE,
	nil, nil, nil, nil,"jalter")
jalterzinnia.atlas = "images/inventoryimages/jalterzinnia.xml" 
GLOBAL.STRINGS.RECIPE_DESC.JALTERZINNIA = "A bitter-sweet and excuisite souvenir"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERZINNIA = "Hmm it could be a dahlia for all I know."
GLOBAL.STRINGS.NAMES.JALTERZINNIA = "Zinnia Hairpin"

--Heretic's Torq
local jaltertorq = AddRecipe("jaltertorq", 
	{
		Ingredient("nightmarefuel", 5),
		Ingredient("flint", 5)
	},	
	jalterFolderol,
	TECH.NONE,
	nil, nil, nil, nil,"jalter")
jaltertorq.atlas = "images/inventoryimages/jaltertorq.xml" 
GLOBAL.STRINGS.RECIPE_DESC.JALTERTORQ = "A different icon from the east"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERTORQ = "A weird aura emanates from it."
GLOBAL.STRINGS.NAMES.JALTERTORQ = "Heretic's Torq"

--Peculiar Harlequinn
local jaltergbf = AddRecipe("jaltergbf", 
	{
		
		Ingredient("flint", 1),
		Ingredient("feather_crow", 1),
		Ingredient("moonglass", 1)
	},	
	jalterFolderol,
	TECH.NONE,
	nil, nil, nil, nil,"jalter")

jaltergbf.atlas = "images/inventoryimages/jaltergbf.xml" 
GLOBAL.STRINGS.RECIPE_DESC.JALTERGBF = "It has a fancy feather!"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERGBF = "Cute diamond pattern!"
GLOBAL.STRINGS.NAMES.JALTERGBF = "Peculiar Harlequinn"

--The Psalm
local jalterpsalm = AddRecipe("jalterpsalm", 
	{
		Ingredient("papyrus", 2),
		Ingredient("moon_tree_blossom", 2),
		Ingredient("nightmarefuel", 2)
	},	
	jalterFolderol,
	TECH.MOON_ALTAR_TWO,
	nil, nil, nil, nil,"jalter")

jalterpsalm.atlas = GLOBAL.resolvefilepath("images/inventoryimages/jalterpsalm.xml") 
GLOBAL.STRINGS.RECIPE_DESC.JALTERPSALM = "It's now a weapon!"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERPSALM = "Such a calming aura from it"
GLOBAL.STRINGS.NAMES.JALTERPSALM = "The Psalm"

--The Lvnatic Crvsader
local jaltercrusader = AddRecipe("jaltercrusader", 
	{
		Ingredient("jalterpsalm", 1, "images/inventoryimages/jalterpsalm.xml"),
		Ingredient("moonrocknugget", 1),
		Ingredient("spear", 1)
	},	
	jalterFolderol,
	TECH.MOON_ALTAR_TWO,
	nil, nil, nil, nil,"jalter")

jaltercrusader.atlas = "images/inventoryimages/jaltercrusader.xml" 
GLOBAL.STRINGS.RECIPE_DESC.JALTERPSALM = "Ancient-moon-writings-on-a-Stick!"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERCRUSADER = "It's a book on a stick!"
GLOBAL.STRINGS.NAMES.JALTERCRUSADER = "Lvnatic Crvsader"

--The Sweetheart's Pelerine
local jaltermantle = AddRecipe("jaltermantle", 
	{
		Ingredient("nightmarefuel", 4),
		Ingredient("moon_tree_blossom", 1),
		Ingredient("silk", 3)
	},	
	jalterFolderol,
	TECH.MAGIC_THREE,
	nil, nil, nil, nil,"jalter")

jaltermantle.atlas = "images/inventoryimages/jaltermantle.xml" 
GLOBAL.STRINGS.RECIPE_DESC.JALTERMANTLE = "The coziness can make you sleep!"
GLOBAL.STRINGS.NAMES.JALTERMANTLE = "Sweetheart's Mozzetta"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERMANTLE = "Silky smooth!"

--The Ghastful Ember
local ghastfulember = AddRecipe("ghastfulember", 
	{
		Ingredient("nightmarefuel", 4),
		Ingredient("ash", 1),
		Ingredient("carrot", 1)
	},	
	jalterFolderol,
	TECH.MAGIC_THREE,
	nil, nil, nil, nil,"jalter")

ghastfulember.atlas = "images/inventoryimages/ghastfulember.xml" 
GLOBAL.STRINGS.RECIPE_DESC.GHASTFULEMBER = "It burns the tongue."
GLOBAL.STRINGS.NAMES.GHASTFULEMBER = "Ghastful Ember"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.GHASTFULEMBER = "It burns!"

--Perturbing Pellucid
local quartz = AddRecipe("quartz", 
	{
		Ingredient("saltrock", 1),
		Ingredient("purplemooneye", 1),
		Ingredient("ghastfulember", 1, "images/inventoryimages/ghastfulember.xml")
	},	
	jalterFolderol,
	TECH.MOON_ALTAR_TWO,
	nil, nil, nil, nil,"jalter")

quartz.atlas = "images/inventoryimages/quartz.xml" 
GLOBAL.STRINGS.RECIPE_DESC.QUARTZ = "...emanates from this horrific impossible gem."
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.QUARTZ = "It's trying talking to me but it doesn't know how to."
GLOBAL.STRINGS.NAMES.QUARTZ = "Pertvrbing Pellvcid"

--Grail of Amontillado
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.GRAIL = "It's a grail."
GLOBAL.STRINGS.NAMES.GRAIL = "Grail of Amontillado"

--Old Cross
local jaltercross = AddRecipe("jaltercross", 
	{
		Ingredient("saltrock", 1),
		Ingredient("flint", 4),
		Ingredient("ghostflower", 1)
	},	
	jalterFolderol,
	TECH.NONE,
	nil, nil, nil, nil,"jalter")

jaltercross.atlas = "images/inventoryimages/jaltercross.xml" 
GLOBAL.STRINGS.RECIPE_DESC.JALTERCROSS = "Keep the horrors at bay!"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.JALTERCROSS = "Old and rugged."
GLOBAL.STRINGS.NAMES.JALTERCROSS = "Old Cross"
