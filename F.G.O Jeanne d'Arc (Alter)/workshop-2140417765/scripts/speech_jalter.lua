--[[
	--- This is Wilson's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\databundles\scripts.zip\scripts\
	
	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
return {
	ACTIONFAIL =
	{
        REPAIR =
        {
            WRONGPIECE = "Ah! Zut! That didn't work out right. ",
        },
        BUILD =
        {
            MOUNTED = "I can't place that from way up here.",
            HASPET = "I've already got a pet.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "I'm not going to try that while he's awake.",
			GENERIC = "I can't shave that! Or can I... Non non non.",
			NOBITS = "Pff He's Bald!!",
            REFUSE = "only_used_by_woodie",
		},
		STORE =
		{
			GENERIC = "Filled to the brim..",
			NOTALLOWED = "That can't go in there.",
			INUSE = "Eugh. Depecher!",
            NOTMASTERCHEF = "I'm not a fancy enough chef for that.",
		},
        CONSTRUCT =
        {
            INUSE = "Someone beat me to it.",
            NOTALLOWED = "Not enough space.",
            EMPTY = "I need something to build with.",
            MISMATCH = "Oups! Wrong plans.",
        },
		RUMMAGE =
		{	
			GENERIC = "Non. I can't do that.",
			INUSE = "They're elbow deep in junk right now.",
            NOTMASTERCHEF = "I'm not a fancy enough chef for that.",
		},
		UNLOCK =
        {
        	WRONGKEY = "Non non non... can't be right.",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "Whoops! That wasn't right.",
        	KLAUS = "I'm a little preoccupied!!",
			QUAGMIRE_WRONGKEY = "I'll just have to find another key.",
        },
		ACTIVATE = 
		{
			LOCKED_GATE = "The gate is locked.",
		},
        COOK =
        {
            GENERIC = "I can't cook right now.",
            INUSE = "Looks like we had the same idea.",
            TOOFAR = "It's too far away!",
        },
        
        --warly specific action
		DISMANTLE =
		{
			COOKING = "only_used_by_warly",
			INUSE = "only_used_by_warly",
			NOTEMPTY = "only_used_by_warly",
        },
        FISH_OCEAN =
		{
			TOODEEP = "This thing's too short! I'll need something heavy duty.",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_wickerbottom",
            NOBIRDS = "only_used_by_wickerbottom"
        },

        GIVE =
        {
            GENERIC = "Nope. Not happening.",
            DEAD = "Maybe I'll just hold on to this.",
            SLEEPING = "Andoulle... maybe when they wake up",
            BUSY = "I'll try again in a second.",
            ABIGAILHEART = "It was worth a shot.",
            GHOSTHEART = "Perhaps this is a bad idea.",
            NOTGEM = "I'm not sticking that in there!",
            WRONGGEM = "This gem won't work here.",
            NOTSTAFF = "It's not quite the right shape.",
            MUSHROOMFARM_NEEDSSHROOM = "A mushroom would probably be of more use.",
            MUSHROOMFARM_NEEDSLOG = "A living log would probably be of more use.",
            SLOTFULL = "We already put something there.",
            FOODFULL = "There's already a meal there.",
            NOTDISH = "It won't want to eat that.",
            DUPLICATE = "We already know that one.",
            NOTSCULPTABLE = "Not even science could make that into a sculpture.",
            NOTATRIUMKEY = "It's not quite the right shape.",
            CANTSHADOWREVIVE = "It won't resurrect.",
            WRONGSHADOWFORM = "It's not put together right.",
            NOMOON = "I need to see the moon for that to work.",
			PIGKINGGAME_MESSY = "I need to clean up first.",
			PIGKINGGAME_DANGER = "It's too dangerous for that right now.",
			PIGKINGGAME_TOOLATE = "It's too late for that now.",
        },
        GIVETOPLAYER =
        {
            FULL = "Your pockets are too full!",
            DEAD = "On second thought, maybe I'll hold on to this.",
            SLEEPING = "Endormie....",
            BUSY = "Fine... Maybe Later.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "You Hoarder! Drop those already!",
            DEAD = "Yikes... Never mind then.",
            SLEEPING = "Too unconscious to care.",
            BUSY = "Nevermind then..",
        },
        WRITE =
        {
            GENERIC = "At least I still know how to write my name.",
            INUSE = "Uhh, Busy now.",
        },
        DRAW =
        {
            NOIMAGE = "This'd be easier if I had the item in front of me.",
        },
        CHANGEIN =
        {
            GENERIC = "I don't want to change right now.",
            BURNING = "It's too dangerous right now!",
            INUSE = "It can only handle one style change at a time.",
        },
        ATTUNE =
        {
            NOHEALTH = "Ah merde, I don't feel well.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "AHHA! I'M RIDING A.. a... whatever creature THIS IS!",
            INUSE = "Fils de pute!! Me next, you hear?",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "It won't let me do that while it's angry.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "Redundant knowledge bores me. I want something new.",
            CANTLEARN = "Mhmm. Yes. yes. I do not understand...",

            --MapRecorder/MapExplorer
            WRONGWORLD = "This map was made for some other place.",
        },
        WRAPBUNDLE =
        {
            EMPTY = "I need to have something to wrap.",
        },
        PICKUP =
        {
			RESTRICTION = "I'm not skilled enough to use that.",
			INUSE = "Science says I have to wait my turn.",
        },
        SLAUGHTER =
        {
            TOOFAR = "YOU WILL KNOW MY WRATH... a couple of hours from now.",
        },
        REPLATE =
        {
            MISMATCH = "It needs another type of dish.", 
            SAMEDISH = "I only need to use one dish.", 
        },
        SAIL =
        {
        	REPAIR = "Err.. No need for repairs. Looks fine to me.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "PUTAIN!",
            BAD_TIMING1 = "BON SANG!",
            BAD_TIMING2 = "ZUT!",
        },
        LOWER_SAIL_FAIL =
        {
            "Oups!",
            "Merde! We need to slow DOWN!",
            "Salaud! Can't sail to save my LIFE!",
        },
        BATHBOMB =
        {
            GLASSED = "I can't, the surface is glassed over.",
            ALREADY_BOMBED = "I'll save this bath bomb for later.",
        },
	},
	ACTIONFAIL_GENERIC = "...non, can't do that.",
	ANNOUNCE_BOAT_LEAK = "Aie! The boat is damaged!.",
	ANNOUNCE_BOAT_SINK = "Well damnation or drowning. What a choice this is.",
	ANNOUNCE_DIG_DISEASE_WARNING = "It looks better already.",
	ANNOUNCE_PICK_DISEASE_WARNING = "BEURK! *heave* That smells horrible!",
	ANNOUNCE_ADVENTUREFAIL = "That didn't go well. I'll have to try again.",
    ANNOUNCE_MOUNT_LOWHEALTH = "This beast seems to be wounded.",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",

    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",

	ANNOUNCE_BEES = "ABEILLE ABEILLE!!!!",
	ANNOUNCE_BOOMERANG = "Ow! I should try to catch that!",
	ANNOUNCE_CHARLIE = "What the... WHO'S THERE! SHOW YOURSELF DEMON!",
	ANNOUNCE_CHARLIE_ATTACK = "AIE! Was.. was that a bite or a scratch...",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific 
	ANNOUNCE_COLD = "So cold!",
	ANNOUNCE_HOT = "The... Irony.... ",
	ANNOUNCE_CRAFTING_FAIL = "There seems to be something missing...",
	ANNOUNCE_DEERCLOPS = "That... th-WHAT was that?",
	ANNOUNCE_CAVEIN = "The ceiling is destabilizing!",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"The earth is shaking!!",
		"A tremor!",
		"Terrible terralogical waves!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "Allow me to pay tribute.",
        "A tribute for you, great Antlion.",
        "That'll appease it, for now...",
	},
	ANNOUNCE_SACREDCHEST_YES = "I guess I'm worthy.",
	ANNOUNCE_SACREDCHEST_NO = "It didn't like that.",
    ANNOUNCE_DUSK = "It's getting late. It will be dark soon.",
    
    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "Yum!",
		PAINFUL = "I don't feel so good.",
		SPOILED = "Yuck! That was terrible!",
		STALE = "I think that was starting to turn.",
		INVALID = "I can't eat that!",
        YUCKY = "Putting that in my mouth would be disgusting!",
        
        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },
    
    ANNOUNCE_ENCUMBERED =
    {
        "*Gasp*... *huff*...",
        "Why can't I just craft a wagon...?",
        "I should have listened to Gilles. Always nagging about training.",
        "Well that military training sure paid off.",
        "I'd like to ask why but since I'm doing it I'd feel stupid",
        "Oh Lord help me...",
        "ARGH...!",
        "Zut, zut.. ZUT...",
        "Stupid... Heavy... Thi-ARGH!",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"I think it's time to leave!",
		"What's that?!",
		"It's not safe here.",
	},
    ANNOUNCE_RUINS_RESET = "The fiends are back!!",
    ANNOUNCE_SNARED = "Sharp! Sharp bones!!",
    ANNOUNCE_REPELLED = "It's shielded!",
	ANNOUNCE_ENTER_DARK = "It's so bloody dark!",
	ANNOUNCE_ENTER_LIGHT = "I can see again..",
	ANNOUNCE_FREEDOM = "I'm free! I'm finally free!",
	ANNOUNCE_HIGHRESEARCH = "I feel so smart now!",
	ANNOUNCE_HOUNDS = "Growls and barks. The hounds are close?",
	ANNOUNCE_WORMS = "I felt that...?",
	ANNOUNCE_HUNGRY = "Soo hungry. Je meurs de faim",
	ANNOUNCE_HUNT_BEAST_NEARBY = "This track is fresh. The beast must be nearby.",
	ANNOUNCE_HUNT_LOST_TRAIL = "That trail ends here... Something's close by.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "This wet soil can't hold a footprint.",
	ANNOUNCE_INV_FULL = "Non. My pockets are full",
	ANNOUNCE_KNOCKEDOUT = "Merde! Merde, mon cerveau!",
	ANNOUNCE_LOWRESEARCH = "I didn't learn very much from that.",
	ANNOUNCE_MOSQUITOS = "Bon sang! Away from me!",
    ANNOUNCE_NOWARDROBEONFIRE = "I can't change while it's on fire!",
    ANNOUNCE_NODANGERGIFT = "I don't think opening gifts right now is a good idea",
    ANNOUNCE_NOMOUNTEDGIFT = "I should get off this beast first.",
	ANNOUNCE_NODANGERSLEEP = "I'm too scared of dying to sleep right now!",
	ANNOUNCE_NODAYSLEEP = "It's too bright out.",
	ANNOUNCE_NODAYSLEEP_CAVE = "I'm not tired.",
	ANNOUNCE_NOHUNGERSLEEP = "My gut will keep me up all night.",
	ANNOUNCE_NOSLEEPONFIRE = "Err... maybe next time.",
	ANNOUNCE_NODANGERSIESTA = "I don't think now is the time for a siesta...",
	ANNOUNCE_NONIGHTSIESTA = "Night is for sleeping, not taking siestas.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I don't think I could really relax down here.",
	ANNOUNCE_NOHUNGERSIESTA = "I'm too hungry for a siesta!",
	ANNOUNCE_NODANGERAFK = "Now's not the time to flee this fight!",
	ANNOUNCE_NO_TRAP = "Well, that was easy.",
	ANNOUNCE_PECKED = "Aie! !",
	ANNOUNCE_QUAKE = "That doesn't sound good.",
	ANNOUNCE_RESEARCH = "Never stop learning!",
	ANNOUNCE_SHELTER = "Thanks for the protection from the elements, tree!",
	ANNOUNCE_THORNS = "Ow!",
	ANNOUNCE_BURNT = "Aie! Chaud! Chaud!",
	ANNOUNCE_TORCH_OUT = "No! My torch!",
	ANNOUNCE_THURIBLE_OUT = "It's been thuribly depleted.",
	ANNOUNCE_FAN_OUT = "My fan is gone with the wind.",
    ANNOUNCE_COMPASS_OUT = "This compact loadstone is broken.",
	ANNOUNCE_TRAP_WENT_OFF = "Aie!.",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "That was not a sane thing to do.",
	ANNOUNCE_TOWNPORTALTELEPORT = "Merde! What was that?.",
	ANNOUNCE_CANFIX = "\nI think I can fix this!",
	ANNOUNCE_ACCOMPLISHMENT = "I feel so accomplished!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "If only my friends could see me now...",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "That pale look means it needs fertilizer.",
	ANNOUNCE_TOOL_SLIP = "Merde! Come on get a grip already!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "ZUT! That was close",
	ANNOUNCE_TOADESCAPING = "The toad is losing interest.",
	ANNOUNCE_TOADESCAPED = "The toad got away.",


	ANNOUNCE_DAMP = "I kinda like the dampness.",
	ANNOUNCE_WET = "My wardrobe should hold up i guess?.",
	ANNOUNCE_WETTER = "Getting very wet here!",
	ANNOUNCE_SOAKED = "Merde. I'm soaked.",

	ANNOUNCE_WASHED_ASHORE = "Bon sang... Barely slipped away alive.",

    ANNOUNCE_DESPAWN = "I can see the light!",
	ANNOUNCE_BECOMEGHOST = "oOooOooo!!",
	ANNOUNCE_GHOSTDRAIN = "My humanity is about to start slipping away...",
	ANNOUNCE_PETRIFED_TREES = "...are those trees screaming?",
	ANNOUNCE_KLAUS_ENRAGE = "You demon!!",
	ANNOUNCE_KLAUS_UNCHAINED = "BIEN! His chains are gone!!",
	ANNOUNCE_KLAUS_CALLFORHELP = "It called for help!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "There's a form trapped inside.",
		GLASS_LOW = "I've almost got it out.",
		GLASS_REVEAL = "You're free!",
		IDOL_MED = "There's a form trapped inside.",
		IDOL_LOW = "I've almost got it out.",
		IDOL_REVEAL = "You're free!",
		SEED_MED = "There's a form trapped inside.",
		SEED_LOW = "I've almost got it out.",
		SEED_REVEAL = "You're free!",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "Did you see that?!",
	ANNOUNCE_BRAVERY_POTION = "Those trees don't seem so spooky anymore.",
	ANNOUNCE_MOONPOTION_FAILED = "Perhaps I didn't let it steep long enough...",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Let me help you.",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Good as new!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Much better, thank-you.",

    ANNOUNCE_FLARE_SEEN = "Such bright colors. Who could it be?",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Uh-oh. Sea monsters!",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD = 
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD = 
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT = 
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT = 
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING = 
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Those ingredients didn't make anything.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "I left it on too long.",
    QUAGMIRE_ANNOUNCE_LOSE = "I have a bad feeling about this.",
    QUAGMIRE_ANNOUNCE_WIN = "Time to go!",

    ANNOUNCE_ROYALTY =
    {
        "Royalty. That's been a while since I served under one.",
        "Kings and queens...",
        "Your highness.",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "Ooo Lightning! small lightning.",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "Let me at 'em!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "I feel much safer now!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "I'm feeling really productive",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "Cozy and dry.",
    
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "The electricity's gone, but the static clings.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Well that was short lived.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "Bien, can't have all the good things now can we?.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "Desire to procrastinate... creeping back...",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Looks like my dry spell is over.",
    
    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK = 
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
    },

	BATTLECRY =
	{
		GENERIC = "Fils de pute! DESTROY THEM!",
		PIG = "I won't bite... I'll just BURN YOU!",
		PREY = "I will destroy you!",
		SPIDER = "Sale creature de l'enfer!",
		SPIDER_WARRIOR = "You remind me of ENGLAND!",
		DEER = "Die, doe!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "Cowards! COWARDS!",
		PIG = "Your days are numbered you pig.",
		PREY = "He's too fast!",
		SPIDER = "He's too gross, anyway.",
		SPIDER_WARRIOR = "Shoo, you nasty thing!",
	},
	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "This is an impossibility from the moon.",
        MULTIPLAYER_PORTAL_MOONROCK = "Things are getting weirder with the moon involved.",
        MOONROCKIDOL = "I sometimes hear whispers.",
        CONSTRUCTION_PLANS = "Sketches for... making things.",

        ANTLION =
        {
            GENERIC = "It wants something from me.",
            VERYHAPPY = "I think we're on good terms.",
            UNHAPPY = "It looks mad.",
        },
        ANTLIONTRINKET = "Someone might be interested in this.",
        SANDSPIKE = "I could've been skewered!",
        SANDBLOCK = "It's so gritty!",
        GLASSSPIKE = "Memories of the time I wasn't skewered.",
        GLASSBLOCK = "That's science for you.",
        ABIGAIL_FLOWER =
        {
            GENERIC ="Belle morte...",
            LONG = "So melancholic.",
            MEDIUM = "It's giving me the creeps.",
            SOON = "Something is up with that flower!",
            HAUNTED_POCKET = "Shh. Shh. I'll get you to your sister.",
            HAUNTED_GROUND = "I'd die to find out what it does.",
        },

        BALLOONS_EMPTY = "It looks like clown currency.",
        BALLOON = "I'd question how they float... but that's for another time",

        BERNIE_INACTIVE =
        {
            BROKEN = "The possessed bear is now in shambles.",
            GENERIC = "I don't like how burnt it is...",
        },

        BERNIE_ACTIVE = "It moves around as if possessed.",
        BERNIE_BIG = "Okay pyromaniac, what more you got up your sleeve?",

        BOOK_BIRDS = "Uhh.. something about birds... mhmm... Ooh crows!",
        BOOK_TENTACLES = "Should... should the pages twitch like that?",
        BOOK_GARDENING = "I should have studied writing more.",
        BOOK_SLEEP = "Oh. So the color of the sky does affect the circadian rhythm of the body.",
        BOOK_BRIMSTONE = "Uhh... sulphur et ignem a Domino de caelo? The rest is blurry.",

        PLAYER =
        {
            GENERIC = "Hello, %s!",
            ATTACKER = "%s looks shifty...",
            MURDERER = "PUTAIN! HOW DARE YOU!",
            REVIVER = "Thanks for that.",
            GHOST = "%s could use a little help.",
            FIRESTARTER = "I do enjoy burning things. But not in that context.",
        },
        WILSON =
        {
            GENERIC = "Ah yes. The doodad obsessed scientist.",
            ATTACKER = "I do not like them.. or their hair.",
            MURDERER = "You and your science can go to hell!",
            REVIVER = "Thanks for that, science boy.",
            GHOST = "Yikes. Plans failed at the wrong time huh?",
            FIRESTARTER = "I now question your intellect, %s.",
        },
        WOLFGANG =
        {
            GENERIC = "Hello Mr. Wolfgang",
            ATTACKER = "HEADS UP!",
            MURDERER = "Not only you who knows how to go down on fisticuffs!",
            REVIVER = "Thanks for that..",
            GHOST = "Oh stop whining. I'll help you in a bit.",
            FIRESTARTER = "You meatheaded what have you done?!, %s!",
        },
        WAXWELL =
        {
            GENERIC = "Greetings, dusty old man of many sins.",
            ATTACKER = "Not so tough no aren't you?",
            MURDERER = "How many times do I need to teach you, Old Man?",
            REVIVER = "Merci, vieil homme.",
            GHOST = "You look as dead as you were alive. Hold on I'll get something.",
            FIRESTARTER = "...You've gone senile haven't you?",
        },
        WX78 =
        {
            GENERIC = "Clanky rusty doll. Hello!",
            ATTACKER = "This is gonna tickle.",
            MURDERER = "Dolls like you need to be broken!!",
            REVIVER = ".",
            GHOST = "I always thought %s could use a heart. Now I'm certain!",
            FIRESTARTER = "Let me guess. You wanted to see it for yourself??",
        },
        WILLOW =
        {
            GENERIC = "Well hello, you flaunting pyromaniac",
            ATTACKER = "I do not like that fire in her eyes.",
            MURDERER = "The flames have driven you insane!",
            REVIVER = "Okay fine, Thanks... you pyromaniac",
            GHOST = "Quit your spookin. I'm gonna get you a heart... or something.",
            FIRESTARTER = "...I expected nothing less.",
        },
        WENDY =
        {
            GENERIC = "Hello, young child.",
            ATTACKER = "%s doesn't have any sharp objects, does she?",
            MURDERER = "Murderer!",
            REVIVER = "%s treats ghosts like family.",
            GHOST = "I'm seeing double! I'd better concoct a heart for %s.",
            FIRESTARTER = "",
        },
        WOODIE =
        {
            GENERIC = "Hello, %s!",
            ATTACKER = "%s has been a bit of a sap lately...",
            MURDERER = "Bon Sang! I'm chopping you down alright!",
            REVIVER = "Thanks for that.",
            GHOST = "Does \"universal\" coverage include the void, %s?",
            BEAVER = "He... He's a beaver...",
            BEAVERGHOST = "Yes. A Beaver Ghost. Just what I needed.",
            MOOSE = "And he turned into a moose.",
            MOOSEGHOST = "...What? Don't look at me like that.",
            GOOSE = "Anything else you want to reveal?",
            GOOSEGHOST = "Bien. Honk! Honk! Honk! to you too.",
            FIRESTARTER = "Your job was to chop the wood not burn them!",
        },
        WICKERBOTTOM =
        {
            GENERIC = "Hello old lady...",
            ATTACKER = "I think %s's planning to throw the book at me.",
            MURDERER = "oh.. OH? YOU DARE? I'm not pulling punches just because you're old!",
            REVIVER = "Thanks mom. I mean Ms. Wickerbottom.",
            GHOST = "Just wait, I'll try to help.",
            FIRESTARTER = "Madame, with all due respect, are you senile?",
        },
        WES =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s ! You Imbecile",
            MURDERER = "LE LAVETTE! DIE ALREADY!",
            REVIVER = "Merci, %s.",
            GHOST = "Bien, I'll try to revive you",
            FIRESTARTER = "Sous Merde!! Vous nous avez tous condamnés! Do you even understand what I'm saying?",
        },
        WEBBER =
        {
            GENERIC = "Err... I guess you're cool",
            ATTACKER = "Une fois une arraignée, toujours une arraingnée. PREPARE FOR PAIN!",
            MURDERER = "Bon Sang! I trusted you!!",
            REVIVER = "Thanks... merde. Fine. Thanks friend.",
            GHOST = "Shh just... fine fine I'll get something for you.",
            FIRESTARTER = "Either it's the human or the spider that wants the fire.",
        },
        WATHGRITHR =
        {
            GENERIC = "Hello, %s!",
            ATTACKER = "I'm gonna lay you out! Start running!",
            MURDERER = "AIE! C'EST UNE MANIQUE! RUN! RUN! FUYEZ!",
            REVIVER = "%s has full command of spirits.",
            GHOST = "Just hang on a bit more, you warmonger. I'll get something up.",
            FIRESTARTER = "You put the pyro in pyromaniac, you maniac.",
        },
        WINONA =
        {
            GENERIC = "Good day to you, %s!",
            ATTACKER = "%s is a safety hazard.",
            MURDERER = "It ends here, %s!",
            REVIVER = "You're pretty handy to have around, %s.",
            GHOST = "Looks like someone threw a wrench into your plans.",
            FIRESTARTER = "Things are burning up at the factory.",
        },
        WORTOX =
        {
            GENERIC = "En parlant du diable! %s",
            ATTACKER = "Une fois une démon, toujours une démon!",
            MURDERER = "Well if my other self was here YOU'D BE TOAST! Bring it on!",
            REVIVER = "Thanks for the revive you handsome devil.",
            GHOST = "Huh... peculiar. I didn't know what I was expecting.",
            FIRESTARTER = "%s is becoming a survival liability.",
        },
        WORMWOOD =
        {
            GENERIC = "Hello logface",
            ATTACKER = "You're lookin a lot tooo thorny there.",
            MURDERER = "Aww someone's gonna become firewood.",
            REVIVER = "Hey thanks for that, planthead.",
            GHOST = "Hang on there. I'll get help.",
            FIRESTARTER = "Oh the irony.",
        },
        WARLY =
        {
            GENERIC = "Hello chef!",
            ATTACKER = "Well, this is a recipe for disaster.",
            MURDERER = "Bon sang! Why?! I liked your food! Don't make me do this!",
            REVIVER = "Merci beaucop, monsieur.",
            GHOST = "I take it peppers won't be bringing you back now, huh.",
            FIRESTARTER = "BON SANG! KEEP THE FLAMBE IN THE POT, CHEF!!",
        },

        WURT =
        {
            GENERIC = "Well... hello.. uhh... person?",
            ATTACKER = "Time to rid this place one less an abomination!",
            MURDERER = "Never trust monsters! Prépare toi a de la doleur!!",
            REVIVER = "Oh. Thanks!",
            GHOST = "Are.. are those gills? Nevermind. Right. Revive, revive, revive....",
            FIRESTARTER = "No no NO! What have you done!?!",
        },

        MIGRATION_PORTAL =
        {
            GENERIC = "If I had any friends, this could take me to them.",
            OPEN = "If I step through, will I still be me?",
            FULL = "It seems to be popular over there.",
        },
        GLOMMER = 
        {
            GENERIC = "It's... it's... Soo Cuute!",
            SLEEPING = "So cuute! Regarde il est mignon!",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "Belle. It shimmers in the light!",
            DEAD = "It makes me feel sad for some reason. It was shimmering.",
        },
        GLOMMERWINGS = "Was... was it really worth it...",
        GLOMMERFUEL = "To think something this foul would come from something that cute...",
        BELL = "clang clang clang... clang clang... CLANG.!",
        STATUEGLOMMER =
        {
            GENERIC = "It's a... fly? No. A Spider? Non...",
            EMPTY = "Not a bit inside.",
        },

        LAVA_POND_ROCK = "Rocks straight from hell.",

		WEBBERSKULL = "Poor little thing. Not even a proper burial.",
		WORMLIGHT = "Looks delicious.",
		WORMLIGHT_LESSER = "Kinda wrinkled.",
		WORM =
		{
		    PLANT = "Seems safe to me.",
		    DIRT = "Just looks like a pile of dirt.",
		    WORM = "It's a worm!",
		},
        WORMLIGHT_PLANT = "Seems safe to me.",
		MOLE =
		{
			HELD = "Nowhere left to dig, my friend.",
			UNDERGROUND = "I thought they were rabbits. But I think it's looking for rocks.",
			ABOVEGROUND = "I have the urge to wack it...",
		},
		MOLEHILL = "What a nice, homey hole in the ground!",
		MOLEHAT = "A wretched stench, but excellent visibility.",

		EEL = "This will make a delicious meal.",
		EEL_COOKED = "Smells great!",
		UNAGI = "Time to feast upon it.",
		EYETURRET = "Yeah... It's really gonna keep watch on me.",
		EYETURRET_ITEM = "I think it's sleeping.",
		MINOTAURHORN = "Wow! I'm glad that didn't gore me!",
		MINOTAURCHEST = "It may contain a bigger something fantastic! Or horrible.",
		THULECITE_PIECES = "It's some smaller chunks of Thulecite.",
		POND_ALGAE = "Some algae by a pond.",
		GREENSTAFF = "This will come in handy.",
		GIFT = "Is that for me?",
        GIFTWRAP = "That's a wrap!",
		POTTEDFERN = "A fern in a pot.",
        SUCCULENT_POTTED = "A succulent in a pot.",
		SUCCULENT_PLANT = "Aloe there.",
		SUCCULENT_PICKED = "I could eat that, but I'd rather not.",
		SENTRYWARD = "That's an entirely scientific mapping tool.",
        TOWNPORTAL =
        {
			GENERIC = "This pyramid controls the sands.",
			ACTIVE = "Ready for departiculation.",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "A mini departiculator.",
			ACTIVE = "I would prefer walking.",
		},
        WETPAPER = "I hope it dries off soon.",
        WETPOUCH = "This package is barely holding together.",
        MOONROCK_PIECES = "I could probably break that.",
        MOONBASE =
        {
            GENERIC = "There's a hole in the middle for something to go in.",
            BROKEN = "It's all smashed up.",
            STAFFED = "Now what?",
            WRONGSTAFF = "I have a distinct feeling this isn't right.",
            MOONSTAFF = "The stone lit it up somehow.",
        },
        MOONDIAL = 
        {
			GENERIC = "The power of tides to tell if the moon is near... in a itty-bit of space.",
			NIGHT_NEW = "Nouvelle lune. The darkness is close.",
			NIGHT_WAX = "The moon is waxing.",
			NIGHT_FULL = "Pleine lune... what to do with all that light.",
			NIGHT_WANE = "The moon is waning.",
			CAVE = "There's no moon down here to measure.",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
        },
		THULECITE = "I wonder where this is from?",
		ARMORRUINS = "It's oddly light.",
		ARMORSKELETON = "No bones about it.",
		SKELETONHAT = "I've seen worse.",
		RUINS_BAT = "That's a big stick.",
		RUINSHAT = "Hmm. Pretty hefty on the head?",
		JALTERCROSS = "This should help that frail girl.",
		JALTERSTANDARD = "This makes me feel slightly happier. I should carry on.",
		JALTERCLAYMORE = "The crimson pulses ever so slightly.",
		JALTERTORQ = "I remember that siege back in Orleans..",
		QUARTZ = "The heart of a foreigner to make me ascend.",
		GHASTFULEMBER = "A foreign warmth I am very fond of.",
		JALTERCRUSADER = "A peculiar improvisation.",
		JALTERPSALM = "My mom would read this to me back then.",
		JALTERZINNIA = "It was a bittersweet memory but a sweet one nonetheless.",
		JALTERGBF = "This feels vaguely familiar.",
		JALTERTORQ = "The metal gives of a soothing yet haunting feeling.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "All is well.",
            WARN = "Getting pretty magical around here.",
            WAXING = "It's becoming more concentrated!",
            STEADY = "It seems to be staying steady.",
            WANING = "Feels like it's receding.",
            DAWN = "The nightmare is almost gone!",
            NOMAGIC = "There's no magic around here.",
		},
		BISHOP_NIGHTMARE = "It's falling apart!",
		ROOK_NIGHTMARE = "Terrifying!",
		KNIGHT_NIGHTMARE = "It's a knightmare!",
		MINOTAUR = "That thing doesn't look happy.",
		SPIDER_DROPPER = "Note to self: Don't look up.",
		NIGHTMARELIGHT = "I wonder what function this served.",
		NIGHTSTICK = "It's electric!",
		GREENGEM = "It's green and gemmy.",
		MULTITOOL_AXE_PICKAXE = "It's brilliant!",
		ORANGESTAFF = "This beats walking.",
		YELLOWAMULET = "Warm to the touch.",
		GREENAMULET = "No base should be without one!",
		SLURPERPELT = "Doesn't look all that much different dead.",	

		SLURPER = "It's so hairy!",
		SLURPER_PELT = "Doesn't look all that much different dead.",
		ARMORSLURPER = "A soggy, sustaining, succulent suit.",
		ORANGEAMULET = "Teleportation can be so useful.",
		YELLOWSTAFF = "A genius invention... a gem on a stick.",
		YELLOWGEM = "This gem is yellow.",
		ORANGEGEM = "It's an orange gem.",
        OPALSTAFF = "It's scientifically proven that gems look better on top of sticks.",
        OPALPRECIOUSGEM = "This gem seems special.",
        TELEBASE = 
		{
			VALID = "It's ready to go.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET = 
		{
			VALID = "Looks ready.",
			GEMS = "It needs a gem.",
		},
		STAFFLIGHT = "That seems really dangerous.",
        STAFFCOLDLIGHT = "Brr! Chilling.",

        ANCIENT_ALTAR = "An ancient and mysterious structure.",

        ANCIENT_ALTAR_BROKEN = "This seems to be broken.",

        ANCIENT_STATUE = "It seems to throb out of tune with the world.",

        LICHEN = "Only a cyanobacteria could grow in this light.",
		CUTLICHEN = "Nutritious, but it won't last long.",

		CAVE_BANANA = "It's mushy.",
		CAVE_BANANA_COOKED = "Yum!",
		CAVE_BANANA_TREE = "It's dubiously photosynthetical.",
		ROCKY = "It has terrifying claws.",
		
		COMPASS =
		{
			GENERIC="Which way am I facing?",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "It's sharp! Ripped straight from it's skull!",
        ARMORSNURTLESHELL = "It sticks to your back when you wear it.",
        BAT = "Ack! That's terrifying!",
        BATBAT = "I bet I could fly if I held two of them.",
        BATWING = "I hate those things, even when they're dead.",
        BATWING_COOKED = "At least it's not coming back.",
        BATCAVE = "I don't want to wake them.",
        BEDROLL_FURRY = "It's so warm and comfy.",
        BUNNYMAN = "I am filled with an irresistible urge to do science.",
        FLOWER_CAVE = "Science makes it glow.",
        GUANO = "Blanc Merde.",
        LANTERN = "I like its glow.",
        LIGHTBULB = "It's an eyball? It's got to be an eyeball.",
        MANRABBIT_TAIL = "I feel a lil better when I hold one.",
        MUSHROOMHAT = "Is this safe? I don't want hallucinations out of nowhere",
        MUSHROOM_LIGHT2 =
        {
            ON = "Blue is obviously the most scientific color.",
            OFF = "We could make a prime light source with some primary colors.",
            BURNT = "I didn't mildew it, I swear.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "Science makes it light up.",
            OFF = "It's a big, science-y 'shroom.",
            BURNT = "Comboletely burnt.",
        },
        SLEEPBOMB = "It makes snooze circles when I throw it.",
        MUSHROOMBOMB = "A mushroom cloud in the making!",
        SHROOM_SKIN = "Warts and all!",
        TOADSTOOL_CAP =
        {
            EMPTY = "Just a hole in the ground.",
            INGROUND = "There's something poking out.",
            GENERIC = "That toadstool's just asking to be cut down.",
        },
        TOADSTOOL =
        {
            GENERIC = "Yeesh! I'm not kissing that!",
            RAGE = "He's hopping mad now!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "How scientific!",
            BURNT = "How im-morel!",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "That mushroom got too big for its own good.",
            BLOOM = "You can't tell from far away, but it's quite smelly.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "These used to grow in my bathroom.",
            BLOOM = "I'm mildly offended by this.",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "A magic mushroom?",
            BLOOM = "It's trying to reproduce.",
        },
        MUSHTREE_TALL_WEBBED = "The spiders thought this one was important.",
        SPORE_TALL =
        {
            GENERIC = "It's just drifting around.",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Mignonne...",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_SMALL =
        {
            GENERIC = "Fly. Fly little spore.",
            HELD = "I'll keep a little light in my pocket.",
        },
        RABBITHOUSE =
        {
            GENERIC = "That's not a real carrot.",
            BURNT = "That's not a real roasted carrot.",
        },
        SLURTLE = "Ew. Just ew.",
        SLURTLE_SHELLPIECES = "A puzzle with no solution.",
        SLURTLEHAT = "That would mess up my hair.",
        SLURTLEHOLE = "A den of disgust.",
        SLURTLESLIME = "If it wasn't useful, I wouldn't touch it.",
        SNURTLE = "He's less gross, but still gross.",
        SPIDER_HIDER = "Gah! More spiders!",
        SPIDER_SPITTER = "I hate spiders!",
        SPIDERHOLE = "It's encrusted with old webbing.",
        SPIDERHOLE_ROCK = "It's encrusted with old webbing.",
        STALAGMITE = "Looks like a rock to me.",
        STALAGMITE_TALL = "Rocks, rocks, rocks, rocks...",
        TREASURECHEST_TRAP = "How convenient!",

        TURF_CARPETFLOOR = "It's surprisingly scratchy.",
        TURF_CHECKERFLOOR = "These are pretty snazzy.",
        TURF_DIRT = "A chunk of ground.",
        TURF_FOREST = "A chunk of ground.",
        TURF_GRASS = "A chunk of ground.",
        TURF_MARSH = "A chunk of ground.",
        TURF_METEOR = "A chunk of moon ground.",
        TURF_PEBBLEBEACH = "A chunk of beach.",
        TURF_ROAD = "Hastily cobbled stones.",
        TURF_ROCKY = "A chunk of ground.",
        TURF_SAVANNA = "A chunk of ground.",
        TURF_WOODFLOOR = "These are floorboards.",

		TURF_CAVE="Yet another ground type.",
		TURF_FUNGUS="Yet another ground type.",
		TURF_SINKHOLE="Yet another ground type.",
		TURF_UNDERROCK="Yet another ground type.",
		TURF_MUD="Yet another ground type.",

		TURF_DECIDUOUS = "Yet another ground type.",
		TURF_SANDY = "Yet another ground type.",
		TURF_BADLANDS = "Yet another ground type.",
		TURF_DESERTDIRT = "A chunk of ground.",
		TURF_FUNGUS_GREEN = "A chunk of ground.",
		TURF_FUNGUS_RED = "A chunk of ground.",
		TURF_DRAGONFLY = "Do you want proof that it's fireproof?",

		POWCAKE = "Is this a joke? It needs to be a joke... right?",
        CAVE_ENTRANCE = "I wonder if that rock could be moved.",
        CAVE_ENTRANCE_RUINS = "It's probably hiding something.",
       
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "The earth itself rejects me!",
            OPEN = "I bet there's all sorts of things to discover down there.",
            FULL = "I'll have to wait until someone leaves to enter.",
        },
        CAVE_EXIT = 
        {
            GENERIC = "I'll just stay down here, I suppose.",
            OPEN = "I've had enough discovery for now.",
            FULL = "The surface is too crowded!",
        },

		MAXWELLPHONOGRAPH = "So that's where the music was coming from.",
		BOOMERANG = "A deadly toy",
		PIGGUARD = "What are you looking at, porc?",
		ABIGAIL = "Take good care of your sister.",
		ADVENTURE_PORTAL = "Why not?",
		AMULET = "Looks promising.",
		ANIMAL_TRACK = "Tracks. I wonder what could be at the end.",
		ARMORGRASS = "Slightly itchy..",
		ARMORMARBLE = "Épais... épais.",
		ARMORWOOD = "That is a perfectly reasonable piece of clothing.",
		ARMOR_SANITY = "Is... is that thing even safe?",
		ASH =
		{
			GENERIC = "All that's left after the fire has done its job.",
			REMAINS_GLOMMERFLOWER = "The flower was consumed by fire in the teleportation!",
			REMAINS_EYE_BONE = "The eyebone was consumed by fire in the teleportation!",
			REMAINS_THINGIE = "There's a perfectly scientific explanation for that.",
		},
		AXE = "A trusty axe.",
		BABYBEEFALO = 
		{
			GENERIC = "Awwww. So cute!",
		    SLEEPING = "Sweet dreams, smelly.",
        },
        BUNDLE = "Our supplies are in there!",
        BUNDLEWRAP = "Wrapping things up should make them easier to carry.",
		BACKPACK = "You could fit a whole lot of science in there.",
		BACONEGGS = "So simple yet so filling.",
		BANDAGE = "Medicine for the wounds.",
		BASALT = "What is this tough rock?!",
		BEARDHAIR = "Someone tell that scientist to keep his beards to himself.",
		BEARGER = "It's a badger? No wait it's a bear..?",
		BEARGERVEST = "Welcome to the hibernation station!",
		ICEPACK = "What a crafty trick. My food shouldn't spoil fast now.",
		BEARGER_FUR = "Duveteux.",
		BEDROLL_STRAW = "Reminds me of home.",
		BEEQUEEN = "C'est une grande fille!",
		BEEQUEENHIVE = 
		{
			GENERIC = "That's a big hive.",
			GROWING = "Isn't that hive a bit too big?",
		},
        BEEQUEENHIVEGROWN = "Yikes.. Yikes yikes yikes.",
        BEEGUARD = "I see she has her little minions. Preparer a la doleur!",
        HIVEHAT = "Perfect for harvesting honey.",
        MINISIGN =
        {
            GENERIC = "I could draw better than that!",
            UNDRAWN = "We should draw something on there.",
        },
        MINISIGN_ITEM = "It's not much use like this. We should place it.",
		BEE =
		{
			GENERIC = "Les mignonne petites abeilles .",
			HELD = "It's wiggling it's petite butt",
		},
		BEEBOX =
		{
			READY = "Seems to be ready for torching.",
			FULLHONEY = "It's filled to the brim with sweetness.",
			GENERIC = "Abeilles... lots of them",
			NOHONEY = "Not a sludge of honey.",
			SOMEHONEY = "Eh. I'll wait.",
			BURNT = "MY BEES!!",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "Il est rempli de champignons!",
			LOTS = "Seems to be ready for harvest.",
			SOME = "It should keep growing now.",
			EMPTY = "It could use some mushrooms.",
			ROTTEN = "The log doesnt seem to contain anymore nutrients.",
			BURNT = "What a waste.",
			SNOWCOVERED = "My experience with these tells me they won't be growing soon.",
		},
		BEEFALO =
		{
			FOLLOWER = "Big bushy cow.",
			GENERIC = "It's a beefalo!",
			NAKED = "He looks kinda depressed.",
			SLEEPING = "Not even a budge.",
            --Domesticated states:
            DOMESTICATED = "Stay. STAY! Good. Good beefalo.",
            ORNERY = "Don't look at me with that attitude.",
            RIDER = "This one seems to be willing to let me ride it.",
            PUDGY = "Is it me or is it getting a bit too fat.",
		},

		BEEFALOHAT = "That's a case of hat-hair waiting to happen.",
		BEEFALOWOOL = "It smells like beefalo tears.",
		BEEHAT = "Protects your skin, but squashes your meticulous coiffure.",
        BEESWAX = "Beeswax is a scientifically proven preservative!",
		BEEHIVE = "It's buzzing with activity.",
		BEEMINE = "It buzzes when shaken.",
		BEEMINE_MAXWELL = "Bottled mosquito rage!",
		BERRIES = "Red berries taste the best.",
		BERRIES_COOKED = "I don't think heat improved them.",
        BERRIES_JUICY = "Extra tasty, though they won't last long.",
        BERRIES_JUICY_COOKED = "Better eat them before they spoil!",
		BERRYBUSH =
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "C'est cinglant..",
			GENERIC = "Ooo berries!",
			PICKED = "It will grow back",
			DISEASED = "Those roots are rotting. It has a disease.",
			DISEASING = "Les racines pourrissent de toute façon..",
			BURNING = "I prefered my berries cooked, I guess.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It won't make any berries in this state.",
			WITHERED = "C'est cinglant..",
			GENERIC = "Those berries look bigger and more plump.",
			PICKED = "Thanks for your juicy goodness.",
			DISEASED = "Les racines pourrissent de toute façon.",
			DISEASING = "These leaves are curling up. That shouldn't be",
			BURNING = "Roasted berries anyone?",
		},
		BIGFOOT = "OH MON DIEU! WHAT THE HELL?",
		BIRDCAGE =
		{
			GENERIC = "A little bit empty. I'll need to fix that soon.",
			OCCUPIED = "Mignonne... Ahem.",
			SLEEPING = "Awwww, he's asleep.",
			HUNGRY = "Hungry little bird. I'll get you something.",
			STARVING = "Mon dieu you're deprived of food.",
			DEAD = "?",
			SKELETON = "Dead. Very dead.",
		},
		BIRDTRAP = "Time to catch those flying critters!",
		CAVE_BANANA_BURNT = "Not my fault!",
		BIRD_EGG = "A small, normal egg.",
		BIRD_EGG_COOKED = "Ah.. œuf sur le plat!",
		BISHOP = "YOU REMIND ME OF CAUCHON! PREPARE FOR PAIN!",
		BLOWDART_FIRE = "This seems fundamentally unsafe.",
		BLOWDART_SLEEP = "Just don't breathe in.",
		BLOWDART_PIPE = "Let's see if I still got good aim.",
		BLOWDART_YELLOW = "Zzzap.",
		BLUEAMULET = "Oo! Very cold to the touch!",
		BLUEGEM = "Like little lightning storms inside.",
		BLUEPRINT = 
		{ 
            COMMON = "More scribbles and technical stuff.",
            RARE = "I should ask science-guy for help on this one.",
        },
        SKETCH = "A picture of a ...  guy? We'll need somewhere to make it.",
		BLUE_CAP = "If the red ones are lethal then what are these blue ones?",
		BLUE_CAP_COOKED = "It's different now...",
		BLUE_MUSHROOM =
		{
			GENERIC = "Champignon bleu.",
			INGROUND = "Maybe it blooms in pure darkness.",
			PICKED = "Rest well little mushroom.",
		},
		BOARDS = "Les planches.",
		BONESHARD = "Morbidly white...",
		BONESTEW = "A stew that makes me hungry alright.",
		BUGNET = "Maybe I can catch the little cutefireflies.",
		BUSHHAT = "It's kind of scratchy.",
		BUTTER = "It can't be... It's butter?",
		BUTTERFLY =
		{
			GENERIC = "At least there's something beautiful here.",
			HELD = "Waxy little flutter bug.",
		},
		BUTTERFLYMUFFIN = "Ooo. Weird but cute.",
		BUTTERFLYWINGS = "Wait...are those streaks of butter?",
		BUZZARD = "It's... a vulture?",

		SHADOWDIGGER = "You and your frail old master...",

		CACTUS = 
		{
			GENERIC = "Cactus. It might taste goood",
			PICKED = "I hope it grows back.",
		},
		CACTUS_MEAT_COOKED = "It gives a weird tropical scent.",
		CACTUS_MEAT = "I think I should remove more of the spines.",
		CACTUS_FLOWER = "Like a rose with thorns and a big fat stem.",

		COLDFIRE =
		{
			EMBERS = "Does... Does this thing even have embers?",
			GENERIC = "Feu froid.",
			HIGH = "Now that is freezing.",
			LOW = "That's too low for comfort.",
			NORMAL = "Frais et confortable.",
			OUT = "And that's done.",
		},
		CAMPFIRE =
		{
			EMBERS = "It is but embers now.",
			GENERIC = "A nice respite from the outside.",
			HIGH = "Too hot toooo hot.",
			LOW = "I couldn't even feel the heat.",
			NORMAL = "Perfect.",
			OUT = "And it's gone.",
		},
		CANE = "It is... golden? Well I'll be trotting in style now.",
		CATCOON = "A playful little thing.",
		CATCOONDEN = 
		{
			GENERIC = "Mi mi mi mi mi... Hmm nothing",
			EMPTY = "Its owner ran out of lives.",
		},
		CATCOONHAT = "Soo fluffy!",
		COONTAIL = "I think it's still swishing.",
		CARROT = "A familiar veggie!",
		CARROT_COOKED = "Mmmm, simple yet satisfying.",
		CARROT_PLANTED = "We're gonna have carottes braisees au beurre tonight... or not.",
		CARROT_SEEDS = "It's a carrot seed.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "My penmanship might be abysmal but it should work.",
			BURNING = "So much for that.",
			BURNT = "Nothing but ash now.",
		},
		WATERMELON_SEEDS = "It's a melon seed.",
		CAVE_FERN = "It's a fern.",
		CHARCOAL = "Something to fuel the fire.",
        CHESSPIECE_PAWN = "Bald head.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "Wasn't that the piece that moves horizontally and vertically?",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "Jackass.",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "I feel angry just looking at it.",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_MUSE = "Hmm... Looks familiar.",
        CHESSPIECE_FORMAL = "Doesn't seem very \"kingly\" to me.",
        CHESSPIECE_HORNUCOPIA = "Makes my stomach rumble just looking at it.",
        CHESSPIECE_PIPE = "Ceci n'est pas une pipe.",
        CHESSPIECE_DEERCLOPS = "Heh... Hehe... Son of a biche.",
        CHESSPIECE_BEARGER = "I'll admit, I liked its fur.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Eurgh. It's so lifelike.",
        },
        CHESSPIECE_DRAGONFLY = "Ah, merde...",
        CHESSPIECE_BUTTERFLY = "I always like butterflies anytime.",
        CHESSPIECE_ANCHOR = "I could feel it already.",
        CHESSPIECE_MOON = "Why does the moon have to be so damn heavy.",
        CHESSJUNK1 = "A pile of broken chess pieces.",
        CHESSJUNK2 = "Another pile of broken chess pieces.",
        CHESSJUNK3 = "Someone got a game of chess happening?",
		CHESTER = "Grosse bouche de chien de citrouille!",
		CHESTER_EYEBONE =
		{
			GENERIC = "I don't like it staring at me.",
			WAITING = "Oh? It's sleeping.",
		},
		COOKEDMANDRAKE = "Finally it won't be disturbing anyone.",
		COOKEDMEAT = "Makeshift barbecue.",
		COOKEDMONSTERMEAT = "That's only somewhat more appetizing than when it was raw.",
		COOKEDSMALLMEAT = "Now there's no reason to worry about getting worms!",
		COOKPOT =
		{
			COOKING_LONG = "This is going to take a while.",
			COOKING_SHORT = "It's almost done!",
			DONE = "Mmmmm! It's ready to eat!",
			EMPTY = "It makes me hungry just to look at it.",
			BURNT = "The pot got cooked.",
		},
		CORN = "Ah. Reminds me of the farm back at home!",
		CORN_COOKED = "Mmm! Just like how mom made it.",
		CORN_SEEDS = "It's a corn seed.",
        CANARY =
		{
			GENERIC = "Ooo! I wonder if I can make you sing, little canari.",
			HELD = "I'm not squishing you, am I?",
		},
        CANARY_POISONED = "It's probably fine. I think it's not.",

		CRITTERLAB = "Is there something in there?",
        CRITTER_GLOMLING = "What an aerodynamical creature!",
        CRITTER_DRAGONLING = "It's wyrmed its way into my heart.",
		CRITTER_LAMB = "Much less mucusy than its momma.",
        CRITTER_PUPPY = "Pretty cute for a lil monster!",
        CRITTER_KITTEN = "You'd make a good lab assistant.",
        CRITTER_PERDLING = "My feathered friend.",
		CRITTER_LUNARMOTHLING = "I keep her around because she's good at mothematics.",

		CROW =
		{
			GENERIC = "Well Caw! Caw! Right back at you.",
			HELD = "Stop staring at me.",
		},
		CUTGRASS = "Cut grass, ready for arts and crafts.",
		CUTREEDS = "I could probably practise writting.",
		CUTSTONE = "Fresh from the mason.",
		DEADLYFEAST = "A most potent dish.",
		DEER =
		{
			GENERIC = "Is it staring at me? ...No, I guess not.",
			ANTLER = "Cool antlers...",
		},
        DEER_ANTLER = "Not so proud of your antlers now are you?",
        DEER_GEMMED = "It's being controlled by that beast!",
		DEERCLOPS = "SON OF A BICHE!",
		DEERCLOPS_EYEBALL = "Ripped straight from its head.",
		EYEBRELLAHAT =	"I prefered the parasol but this will do.",
		DEPLETED_GRASS =
		{
			GENERIC = "It's probably a tuft of grass.",
		},
        GOGGLESHAT = "What a stylish pair of goggles.",
        DESERTHAT = "Quality eye protection.",
		DEVTOOL = "It smells of bacon!",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "It's a pile of dirt... or IS it?",
		DIVININGROD =
		{
			COLD = "The signal is very faint.",
			GENERIC = "It's some kind of homing device.",
			HOT = "This thing's going crazy!",
			WARM = "I'm headed in the right direction.",
			WARMER = "Must be getting pretty close.",
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.",
			READY = "It looks like it needs a large key.",
			UNLOCKED = "Now the machine can work!",
		},
		DIVININGRODSTART = "That rod looks useful!",
		DRAGONFLY = "If Fafnir was here you'd be scampering away like the fly you are!",
		ARMORDRAGONFLY = "Hot mail!",
		DRAGON_SCALES = "They're still warm.",
		DRAGONFLYCHEST = "Next best thing to a lockbox!",
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "I don't think it's supposed to look like that.",
			GENERIC = "Produces a lot of heat, but not much light.", --no gems
			NORMAL = "Is it winking at me?", --one gem
			HIGH = "It's scalding!", --two gems
		},
        
        HUTCH = "What in The Constant are you, abomination?",
        HUTCH_FISHBOWL =
        {
            GENERIC = "It's a fishbowl.",
            WAITING = "Work already, zut!",
        },
		LAVASPIT = 
		{
			HOT = "Yuck! And Hot!!",
			COOL = "It's still wiggling.",
		},
		LAVA_POND = "A little bit of hell in this place.",
		LAVAE = "Too hot to handle.",
		LAVAE_COCOON = "Cooled off and chilled out.",
		LAVAE_PET = 
		{
			STARVING = "I'll need to get food for the little critter.",
			HUNGRY = "I hear a tiny stomach grumbling.",
			CONTENT = "That's.. That's a nice smile.",
			GENERIC = "Mignonne...",
		},
		LAVAE_EGG = 
		{
			GENERIC = "There's a faint warmth coming from inside.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I don't think that egg is warm enough.",
			COMFY = "It seems happy..",
		},
		LAVAE_TOOTH = "It's an egg tooth!",

		DRAGONFRUIT = "Ooo spikey!",
		DRAGONFRUIT_COOKED = "The fruit's still weird.",
		DRAGONFRUIT_SEEDS = "It's a weird fruit seed.",
		DRAGONPIE = "The dragonfruit is very filling.",
		DRUMSTICK = "Ready for gobbling.",
		DRUMSTICK_COOKED = "Even better for gobbling!",
		DUG_BERRYBUSH = "Now it can be taken anywhere.",
		DUG_BERRYBUSH_JUICY = "This could be replanted closer to home.",
		DUG_GRASS = "It can be planted anywhere now.",
		DUG_MARSH_BUSH = "This needs to be planted.",
		DUG_SAPLING = "This needs to be planted.",
		DURIAN = "Not this fruit again.",
		DURIAN_COOKED = "Eugh dégueulasse!",
		DURIAN_SEEDS = "Seeds from that horrid fruit.",
		EARMUFFSHAT = "Makes you warm and fuzzy inside. Outside, too.",
		EGGPLANT = "You'd really question the nomenclature.",
		EGGPLANT_COOKED = "I kind of wished it would be eggy.",
		EGGPLANT_SEEDS = "It's an eggplant seed.",
		
		ENDTABLE = 
		{
			BURNT = "A burnt vase on a burnt table.",
			GENERIC = "At least it is fun to look at.",
			EMPTY = "Mom would probably get a lily to plant on it.",
			WILTED = "Droopy.",
			FRESHLIGHT = "A little to brighten my day.",
			OLDLIGHT = "I guess even the light plants droop.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "What a waste of wood.",
			BURNT = "I have standards.",
			CHOPPED = "More wood for me.",
			POISON = "Ta gueule! You stupid tree!",
			GENERIC = "It looks like a birch tree.",
		},
		ACORN = "Little life protected by its hard shell.",
        ACORN_SAPLING = "It's growing",
		ACORN_COOKED = "The little white stuff tastes sweet.",
		BIRCHNUTDRAKE = "A mad little nut.",
		EVERGREEN =
		{
			BURNING = "What a waste of wood.",
			BURNT = "All but embers.",
			CHOPPED = "Le bois!",
			GENERIC = "Prickly and piney bois.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Tsk tsk.",
			BURNT = "...brings back memories!",
			CHOPPED = "Thank you Lord for the bounty of logs.",
			GENERIC = "This sad tree has no cones.",
		},
		TWIGGYTREE = 
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Aie! That's a lot of twigs.",
			GENERIC = "It's all wrinkled chock full of twigs",			
			DISEASED = "It shouldn't be like that.",
		},
		TWIGGY_NUT_SAPLING = "Twiggy little tree...",
        TWIGGY_OLD = "That looks old already.",
		TWIGGY_NUT = "You could see the light green seedling.",
		EYEPLANT = "Don't look at me you multi-eyed monstre.",
		INSPECTSELF = "I guess I'm fine?",
		FARMPLOT =
		{
			GENERIC = "I do remember how to plant stuff.",
			GROWING = "Tending to plants sure seems like a fond distant memory.",
			NEEDSFERTILIZER = "The soil has been dried of its nutrients.",
			BURNT = "Maybe we can use the ash for soap?",
		},
		FEATHERHAT = "I look... fabulous!",
		FEATHER_CROW = "Ripped from that crow.",
		FEATHER_ROBIN = "I do like robins..",
		FEATHER_ROBIN_WINTER = "I never knew we had snow robins.",
		FEATHER_CANARY = "Oooo! Golden feathers.",
		FEATHERPENCIL = "I could practise a bit of caligraphy here.",
		FEM_PUPPET = "She's trapped!",
		FIREFLIES =
		{
			GENERIC = "La lucioles mignonnes!",
			HELD = "So cute little glowy bugs.",
		},
		FIREHOUND = "I see the fire in its eyes.",
		FIREPIT =
		{
			EMBERS = "It is but embers now.",
			GENERIC = "A good fire pit.",
			HIGH = "Good thing it's contained!",
			LOW = "I couldn't even feel the heat.",
			NORMAL = "Nice and comfy.",
			OUT = "I should add fuel to it.",
		},
		COLDFIREPIT =
		{
			EMBERS = "Does... Does this thing even have embers?",
			GENERIC = "Feu froid.",
			HIGH = "Good thing it's contained!",
			LOW = "That's too low for comfort.",
			NORMAL = "Frais et confortable.",
			OUT = "Will normal fuel work on it?",
		},
		FIRESTAFF = "Heh.. eHeheh...",
		FIRESUPPRESSOR = 
		{	
			ON = "The fire suppressor's running.",
			OFF = "All quiet on the flinging front.",
			LOWFUEL = "The machine is low on... err whatever it uses.",
		},

		FISH = "Now I shall eat for a day.",
		FISHINGROD = "Hook, line and stick!",
		FISHSTICKS = "Sticks to your ribs.",
		FISHTACOS = "Crunchy and delicious!",
		FISH_COOKED = "Grilled to perfection.",
		FLINT = "Shiny and sharp... just how I like it",
		FLOWER = 
		{
            GENERIC = "Reminds me of home...",
            ROSE = "Thorny... but cute",
        },
        FLOWER_WITHERED = "The poor thing withered.",
		FLOWERHAT = "I'd make this back in the meadows.",
		FLOWER_EVIL = "Something so menacing yet aluring",
		FOLIAGE = "Ooo crunchy!",
		FOOTBALLHAT = "Very tough.",
        FOSSIL_PIECE = "The very death embeded in earth.",
        FOSSIL_STALKER =
        {
			GENERIC = "Still missing some pieces.",
			FUNNY = "My scientific instincts say this isn't quite right.",
			COMPLETE = "It's alive! Oh wait, no, it's not.",
        },
        STALKER = "STRAIGHT OUT OF HELL NOW ARE WE?!",
        STALKER_ATRIUM = "Why'd it have to be so big?",
        STALKER_MINION = "Anklebiters!",
        THURIBLE = "It smells like chemicals.",
        ATRIUM_OVERGROWTH = "I don't recognize any of these symbols.",
		FROG =
		{
			DEAD = "I hate frogs anyway.",
			GENERIC = "Malicieuse petite diables.",
			SLEEPING = "You're dinner once I get you.",
		},
		FROGGLEBUNWICH = "Showed those diables who's the predator.",
		FROGLEGS = "As long as it tastes good.",
		FROGLEGS_COOKED = "It tastes like.... hmm... like chicken.",
		FRUITMEDLEY = "Fruity.",
		FURTUFT = "Black and white fur.", 
		GEARS = "Looks like some mechanical.. stuff.",
		GHOST = "Oh boo hoo.",
		GOLDENAXE = "Uhuu. Choppin with style.",
		GOLDENPICKAXE = "...but wasn't gold soft?",
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?",
		GOLDENSHOVEL = "Well if it is more durable then why not?",
		GOLDNUGGET = "Ohhoo. Gold! It's GOLD!",
		GRASS =
		{
			BARREN = "Hmm. We need fertilizer for this. Manure would be suitable",
			WITHERED = "Merde. It's withering. Now how to do about it.",
			BURNING = "That's burning fast!",
			GENERIC = "A tuft of grass... Takes me back to the time in the fields.",
			PICKED = "It was cut down in the prime of its life.",
			DISEASED = "Yikes. Yeah it's rotting within.",
			DISEASING = "Oh no. This is not good. There is rot within it.",
		},
		GRASSGEKKO = 
		{
			GENERIC = "Huh. Is that hair? No. That's Grass. A Grasslizard?",	
			DISEASED = "The poor thing..",
		},
		GREEN_CAP = "Err... I hope this isn't the toxic one.",
		GREEN_CAP_COOKED = "It should be safe to consume now, I guess?",
		GREEN_MUSHROOM =
		{
			GENERIC = "Champignons verts.",
			INGROUND = "Maybe it would bloom later on dusk.",
			PICKED = "It might comeback?",
		},
		GUNPOWDER = "I could have used it back in Orleans... but that's another story.",
		HAMBAT = "I'd eat it but, you don't always get the chance to whack people with meat.",
		HAMMER = "Stop! It's time! To hammer things!",
		HEALINGSALVE = "The stinging means that it's working.",
		HEATROCK =
		{
			FROZEN = "Merde. That's freezing already!",
			COLD = "Very cool to the touch.",
			GENERIC = "So it absorbs the heat... and the cold?",
			WARM = "Hmm, that's very nice to hold.",
			HOT = "I thought this thing would be scalding but it's very warm.",
		},
		HOME = "A house? In the middle of nowhere?",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "Le Miel!",
		HONEYCOMB = "Very waxy. Finally got to touch one.",
		HONEYHAM = "Mmm.. MMM! Oh that slaps my cheeks.",
		HONEYNUGGETS = "...did I even put chicken in this? Wait do we even have chickens?",
		HORN = "It sounds like a beefalo field in there.",
		HOUND = "FILS DE PUTE!... AND I MEANT THAT LITERALLY!",
		HOUNDCORPSE =
		{
			GENERIC = "Eugh! what is that blasphemous smell.",
			BURNING = "Just like in Rouen.",
			REVIVING = "...Hey! HEY! THAT'S CHEATING! Only He can do that!",
		},
		HOUNDBONE = "Ominous.",
		HOUNDMOUND = "Disgusting Dogs and their filthy remnants.",
		ICEBOX = "I have harnessed the power of cold!",
		ICEHAT = "Stay cool, boy.",
		ICEHOUND = "What the? THEY'RE ICE!? FROIDE CHIENNE! FROIDE CHIENNE!",
		INSANITYROCK =
		{
			ACTIVE = "TAKE THAT, SANE SELF!",
			INACTIVE = "It's more of a pyramid than an obelisk.",
		},
		JAMMYPRESERVES = "Probably should have made a jar.",

		KABOBS = "Bien. Brochettes",
		KILLERBEE =
		{
			GENERIC = "Looks like this bee's got an attitude.",
			HELD = "Pssh you small little bee. Ah! almost stung me.",
		},
		KNIGHT = "Check it out!",
		KOALEFANT_SUMMER = "Here here you little meatsack.",
		KOALEFANT_WINTER = "The craving of meat and warmth compel me.",
		KRAMPUS = "AIE! AU VOLEUR!",
		KRAMPUS_SACK = "Yuck. It's soo slimey",
		LEIF = "He's huge!",
		LEIF_SPARSE = "He's huge!",
		LIGHTER  = "Ugh.. Pyromaniac girl's gadget of mass destruction.",
		LIGHTNING_ROD = 
		{
			CHARGED = "I'd use this to strike those English scum back to where they came from.",
			GENERIC = "Oh. Thank You Lord. Now... what do i do with it?",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "Chèvre stupide.",
			CHARGED = "MERDE! CHÉVRE ÉLECTRIQUE! CHÉVRE ÉLECTRIQUE!",
		},
		LIGHTNINGGOATHORN = "It's like a miniature lightning rod.",
		GOATMILK = "HNngnghmN! WHAT WAS THAT?! It was tingly!",
		LITTLE_WALRUS = "He won't be cute and cuddly forever.",
		LIVINGLOG = "It looks... haunting. I-I dont like it.",
		LOG =
		{
			BURNING = "Ahh... that shouldn't be right. That should be burning in the fire pit.",
			GENERIC = "Fresh from the trees.",
		},
		LUCY = "That's a prettier axe than I'm used to.",
		LUREPLANT = "I want to punch it.",
		LUREPLANTBULB = "Uhh... such fibrous meat. Is this even safe to it?",
		MALE_PUPPET = "He's trapped!",

		MANDRAKE_ACTIVE = "Ta gueule! Boucle-la!",
		MANDRAKE_PLANTED = "I've heard strange things about those plants.",
		MANDRAKE = "Noisy little brat.",

        MANDRAKESOUP = "Well, he won't be waking up again.",
        MANDRAKE_COOKED = "I could still hear its squeaks.",
        MAPSCROLL = "A blank map. Doesn't seem very useful.",
        MARBLE = "I like the swirls.",
        MARBLEBEAN = "I wonder how much this would cost.",
        MARBLEBEAN_SAPLING = "It looks carved.",
        MARBLESHRUB = "Of course... it is a shrub.",
        MARBLEPILLAR = "I think I could use that.",
        MARBLETREE = "Time to harvest it.. somehow.",
        MARSH_BUSH =
        {
			BURNT = "No more prickly stuff I guess.",
            BURNING = "That's burning way too fast!",
            GENERIC = "It looks thorny.",
            PICKED = "AIE! Sous-merde!",
        },
        BURNT_MARSH_BUSH = "Burnt to the crisp.",
        MARSH_PLANT = "It's a plant.",
        MARSH_TREE =
        {
            BURNING = "Spikes and fire! What a combination.",
            BURNT = "Now it's burnt and spiky.",
            CHOPPED = "Not pricking anyone anymore!",
            GENERIC = "Prickly cactus wannabe!",
        },
        MAXWELL = "Old man of many sins.",
        MAXWELLHEAD = "He's got a receeding hairline.",
        MAXWELLLIGHT = "I wonder how they work.",
        MAXWELLLOCK = "Looks almost like a key hole.",
        MAXWELLTHRONE = "That doesn't look very comfortable.",
        MEAT = "Fresh from the hunt. This should do well.",
        MEATBALLS = "A hefty serving of meat.",
        MEATRACK =
        {
            DONE = "Time for some bœuf séché!",
            DRYING = "I'd smoke it but I guess salt should do.",
            DRYINGINRAIN = "And it just had to rain.",
            GENERIC = "Let's dry some proteins.",
            BURNT = "Merde. I wanted more séché.",
            DONE_NOTMEAT = "Yeah whatever that is. That's dry.",
            DRYING_NOTMEAT = "It dries... and dries",
            DRYINGINRAIN_NOTMEAT = "Rain, why now of all times.",
        },
        MEAT_DRIED = "Viande de boeuf séchée.",
        MERM = "As if the porcs weren't disgusting enough!",
        MERMHEAD =
        {
            GENERIC = "Disgusting. Outright disgusting.",
            BURNT = "Well that smells even worse.",
        },
        MERMHOUSE =
        {
            GENERIC = "Shabby? Not even a peasant would live in that.",
            BURNT = "Well no use knowing who lives there.",
        },
        MINERHAT = "Why didn't I think of this before?",
        MONKEY = "Curious little guy.",
        MONKEYBARREL = "Did that just move?",
        MONSTERLASAGNA = "A horrible mistake.",
        FLOWERSALAD = "I do like a mix of vegetables every now and then.",
        ICECREAM = "We have icecream here? Sweet!",
        WATERMELONICLE = "What a treat for the hot summer.",
        TRAILMIX = "I could use some of this while exploring.",
        HOTCHILI = "Five alarm!",
        GUACAMOLE = "I like that flavor..",
        MONSTERMEAT = "Ugh. I don't think I should eat that.",
        MONSTERMEAT_DRIED = "It gives of a putrid stench.",
        MOOSE = "I don't exactly know what that thing is.",
        MOOSE_NESTING_GROUND = "It puts its babies there.",
        MOOSEEGG = "Aw look at them struggle..",
        MOSSLING = "Mignonne! But you will die by my hand.",
        FEATHERFAN = "Down, to bring the temperature down.",
        MINIFAN = "Somehow the breeze comes out the back twice as fast.",
        GOOSE_FEATHER = "Douillet et duveteux... ",
        STAFF_TORNADO = "The weather under my command.",
        MOSQUITO =
        {
            GENERIC = "Dégoutant petit suceur de sang.",
            HELD = "EST CE QUE C'EST MON SANG!?",
        },
        MOSQUITOSACK = "It's squishy...",
        MOUND =
        {
            DUG = "Une tombe est une tombe.",
            GENERIC = "Que dieux donne paix a votre âme, peut importe qui vous êtes.",
        },
        NIGHTLIGHT = "It gives off a spooky light.",
        NIGHTMAREFUEL = "I feel like it's looking right into me",
        NIGHTSWORD = "Oddly terrifying. Even I am perturbed.",
        NITRE = "Mhmm... yellow powdery thing",
        ONEMANBAND = "Sing hymns of.. uhh something.",
        OASISLAKE =
		{
			GENERIC = "So this is an oasis? How nice!",
			EMPTY = "As dry as the desert.",
		},
        PANDORASCHEST = "Should I or should I not?",
        PANFLUTE = "I don't know how to play a panflute.",
        PAPYRUS = "I could practise some caligraphy while I am at it.",
        WAXPAPER = "I'd use this for wrapping food.",
        PENGUIN = "Must be breeding season.",
        PERD = "You twat get back here!!",
        PEROGIES = "These turned out pretty good.",
        PETALS = "Beautiful little petal",
        PETALS_EVIL = "I feel slightly faint... yet weirdly happy.",
        PHLEGM = "Merde it's all... sticky",
        PICKAXE = "Makes me want to mine",
        PIGGYBACK = "This little piggy's gone... \"home\".",
        PIGHEAD =
        {
            GENERIC = "Looks like an offering to the beast.",
            BURNT = "Crispy.",
        },
        PIGHOUSE =
        {
            FULL = "I can see a snout pressed up against the window.",
            GENERIC = "These pigs have pretty fancy houses.",
            LIGHTSOUT = "Come ON! I know you're home!",
            BURNT = "Not so fancy now, cochon!",
        },
        PIGKING = "Bien, un porc est un porc!",
        PIGMAN =
        {
            DEAD = "Someone should tell its family.",
            FOLLOWER = "Welcome to the entourage, fat boy",
            GENERIC = "They kind of creep me out.",
            GUARD = "Looks serious.",
            WEREPIG = "Not a friendly pig!!",
        },
        PIGSKIN = "Okay, that's kinda cute.",
        PIGTENT = "Smells like bacon.",
        PIGTORCH = "Sure looks cozy.",
        PINECONE = "I can hear a tiny tree inside it, trying to get out.",
        PINECONE_SAPLING = "It'll be a tree soon!",
        LUMPY_SAPLING = "How did this tree even reproduce?",
        PITCHFORK = "Now I just need an angry mob to join.",
        PLANTMEAT = "That doesn't look very appealing.",
        PLANTMEAT_COOKED = "At least it's warm now.",
        PLANT_NORMAL =
        {
            GENERIC = "Leafy!",
            GROWING = "Guh! It's growing so slowly!",
            READY = "Mmmm. Ready to harvest.",
            WITHERED = "The heat killed it.",
        },
        POMEGRANATE = "It looks like the inside of an alien's brain.",
        POMEGRANATE_COOKED = "Haute Cuisine!",
        POMEGRANATE_SEEDS = "It's a pome-whatsit seed.",
        POND = "I can't see the bottom!",
        POOP = "I should fill my pockets!",
        FERTILIZER = "That is definitely a bucket full of poop.",
        PUMPKIN = "It's as big as my head!",
        PUMPKINCOOKIE = "That's a pretty gourd cookie!",
        PUMPKIN_COOKED = "How did it not turn into a pie?",
        PUMPKIN_LANTERN = "Spooky!",
        PUMPKIN_SEEDS = "It's a pumpkin seed.",
        PURPLEAMULET = "Is it just me or did this thing speak?",
        PURPLEGEM = "Bien, It's purple. Mignonne",
        RABBIT =
        {
            GENERIC = "He's looking for carrots.",
            HELD = "Furry little critter",
        },
        RABBITHOLE =
        {
            GENERIC = "That must lead to someplace full of fluffy rabbits.",
            SPRING = "I don't think we're going anywhere with that..",
        },
        RAINOMETER =
        {
            GENERIC = "It measures cloudiness.",
            BURNT = "Not much use now.",
        },
        RAINCOAT = "A more effective method against the rain.",
        RAINHAT = "This is gonna mess with my hair..",
        RATATOUILLE = "An excellent source of fiber.",
        RAZOR = "I could think of a few thinks to do with this.",
        REDGEM = "It sparkles with inner warmth.",
        RED_CAP = "That stench... Eugh! Repugnant!",
        RED_CAP_COOKED = "It's different now...",
        RED_MUSHROOM =
        {
            GENERIC = "Champignons rouge.",
            INGROUND = "Sooner or later it will come back up.",
            PICKED = "I hope it grows back.",
        },
        REEDS =
        {
            BURNING = "That's really burning!",
            GENERIC = "I always thought they would be near ponds or rivers.",
            PICKED = "Took the best parts of it.",
        },
        RELIC = "Ancient household goods.",
        RUINS_RUBBLE = "This can be fixed.",
        RUBBLE = "Just bits and pieces of rock.",
        RESEARCHLAB =
        {
            GENERIC = "Now... uhh... If i press thi- No wait.",
            BURNT = "Well.. that's a shame.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "Uhh okay. Merde! So if I pull this... YES! wait no.",
            BURNT = "I was just getting started on it..",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "This is getting out of hand. Where are the buttons?",
            BURNT = "And it's burnt.. And not floating anymore.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "So Presti.. Pretsihat.. Prehat? Hat-machine",
            BURNT = "Zut. I had something up for that.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "What a handsome devil!",
            BURNT = "Not much use anymore.",
        },
        RESURRECTIONSTONE = "I feel a spiritual connection to that stone.",
        ROBIN =
        {
            GENERIC = "Does that mean winter is gone?",
            HELD = "Mon mignonne petit canari....",
        },
        ROBIN_WINTER =
        {
            GENERIC = "Life in the frozen wastes.",
            HELD = "It's so soft. Soo fluffy. C'est trop mignon.",
        },
        ROBOT_PUPPET = "They're trapped!",
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",
            OUT = "Looks fragile.",
            LOW = "The lava's crusting over.",
            NORMAL = "Nice and comfy.",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "I think I can lift this one.",
            RAISED = "It's out of reach.",
        },
        ROCK = "I want to beat it",
        PETRIFIED_TREE = "You could almost see them scared.",
        ROCK_PETRIFIED_TREE = "You could almost see them scared.",
        ROCK_PETRIFIED_TREE_OLD = "You could almost see them scared.",
        ROCK_ICE =
        {
            GENERIC = "I could see myself.",
            MELTED = "Best to wait till it freezes again.",
        },
        ROCK_ICE_MELTED = "Best to wait till it freezes again.",
        ICE = "Chilly.",
        ROCKS = "We could make stuff with these.",
        ROOK = "Storm the castle!",
        ROPE = "Some short lengths of rope.",
        ROTTENEGG = "Yuck. Eugh. Repugnant!",
        ROYAL_JELLY = "It smells sweet! Maybe a small taste perhaps?",
        JELLYBEAN = "Ooo!! Sweeties. Sweet beans!",
        SADDLE_BASIC = "Now I need an animal to ride.",
        SADDLE_RACE = "This saddle really flies!",
        SADDLE_WAR = "The only problem is the saddle sores.",
        SADDLEHORN = "This could take a saddle off.",
        SALTLICK = "no.. NO STOP! I'm not thinking about it.",
        BRUSH = "I bet the beefalo really like this.",
		SANITYROCK =
		{
			ACTIVE = "I don't feel good looking at that thing!",
			INACTIVE = "Where did the rest of it go?",
		},
		SAPLING =
		{
			BURNING = "That's burning fast!",
			WITHERED = "It might be okay if it cooled down.",
			GENERIC = "Baby trees are so cute!",
			PICKED = "That'll teach him.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "Err, something's not right.",
		},
   		SCARECROW = 
   		{
			GENERIC = "Lookin fabulous.",
			BURNING = "This reminds me of that time in Rouen.",
			BURNT = "He looks damn sad.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "We can make stone sculptures with this.",
			BLOCK = "Ready for sculpting.",
			SCULPTURE = "A masterpiece!",
			BURNT = "Burnt right down.",
   		},
        SCULPTURE_KNIGHTHEAD = "Where's the rest of it?",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "It's an odd marble statue.",
			UNCOVERED = "I guess he cracked under the pressure.",
			FINISHED = "At least it's back in one piece now.",
			READY = "Something's moving inside.",
		},
        SCULPTURE_BISHOPHEAD = "Bien? Pierre finally got what he deserved.",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "It looks old, but it feels new.",
			UNCOVERED = "There's a big piece missing.",
			FINISHED = "Now what?",
			READY = "Something's moving inside.",
		},
        SCULPTURE_ROOKNOSE = "A tubby nose.",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "It's some sort of marble statue.",
			UNCOVERED = "It's not in the best shape.",
			FINISHED = "All patched up.",
			READY = "Something's moving inside.",
		},
        GARGOYLE_HOUND = "I am happy that's a statue.",
        GARGOYLE_WEREPIG = "It looks very lifelike.",
		SEEDS = "Each one is a tiny mystery.",
		SEEDS_COOKED = "That cooked the life right out of 'em!",
		SEWING_KIT = "Darn it all to hell!",
		SEWING_TAPE = "Good for mending.",
		SHOVEL = "There's a lot going on underground.",
		SILK = "Very silky and smooth.",
		SKELETON = "Better you than me.",
		SCORCHED_SKELETON = "Spooky.",
		SKULLCHEST = "I'm not sure if I want to open it.",
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
			SLEEPING = "It's barely making a peep.",
		},
		SMALLMEAT = "A tiny chunk of dead animal.",
		SMALLMEAT_DRIED = "A little jerky.",
		SPAT = "What a crusty looking animal.",
		SPEAR = "That's one pointy stick.",
		SPEAR_WATHGRITHR = "It feels very stabby.",
		WATHGRITHRHAT = "Pretty fancy hat, that.",
		SPIDER =
		{
		--the horror
			DEAD = "Quelle horreur!!",
			--i hate spider
			GENERIC = "Je deteste les araignees!",
			SLEEPING = "I'd better not be here when he wakes up.",
		},
		--sticky
		SPIDERDEN = "Ugh! Gluant!",
		SPIDEREGGSACK = "Oeufs de monstres. Filthy and disgusting.",
		SPIDERGLAND = "Smells like the wine back in Orlean.",
		SPIDERHAT = "Aie! Putain! Is that part of her brain?",
		SPIDERQUEEN = "Elle est ENORME!",
		SPIDER_WARRIOR =
		{
		--go away, "context is pain in the ass" literally ball breaker
			DEAD = "Casse-toi, cassa couille!",
			GENERIC = "Oh you look like you wanna fight you plouc! .",
			SLEEPING = "Sale creature de l'enfer...",
		},
		--pile of rot
		SPOILED_FOOD = "Ugh! Tas de pourriture.",
        STAGEHAND =
        {
			AWAKE = "AIE!...keep those hands to yourself.",
			--Don't Mess with Me... IM WARNING YOU
			HIDING = "M'énerve pas... JE TE PREVIENS!",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "It's a fancy marble statue.",
            TYPE1 = "Don't lose your head now!",
            TYPE2 = "Statuesque.",
            TYPE3 = "I wonder who the artist is.", --bird bath type statue
        },
		STATUEHARP = "What happened to the head?",
		STATUEMAXWELL = "He's a lot shorter in person.",
		STEELWOOL = "Scratchy metal fibers.",
		STINGER = "Strait from the bee's behind",
		STRAWHAT = "Reminds me of my time in the farm.",
		STUFFEDEGGPLANT = "It's really stuffing!",
		SWEATERVEST = "This vest is dapper as all get-out.",
		REFLECTIVEVEST = "Keep off, evil sun!",
		HAWAIIANSHIRT = "It's not lab-safe!",
		TAFFY = "MMM!! Tres sucre!",
		TALLBIRD = "That's a tall... bird!",
		TALLBIRDEGG = "Will it hatch?",
		TALLBIRDEGG_COOKED = "Ca a besoin de plus de sel",
		TALLBIRDEGG_CRACKED = "Ahh... ouef",
		{
			COLD = "Is it shivering or am I?",
			GENERIC = "Looks like it's hatching!",
			HOT = "I think it's too hot",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "What the... It's bigger than the chickens I tended to back then!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "You need some food and quick, huh?",
			STARVING = "It has a dangerous look in its eye.",
			SLEEPING = "It's getting some shut-eye",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "With this I can surely pass through space and time!",
			GENERIC = "This appears to be a nexus to another world!",
			LOCKED = "There's still something missing.",
			PARTIAL = "Soon, the invention will be complete!",
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.",
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.",
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...",
		TELEPORTATO_RING = "A ring that could focus dimensional energies.",
		TELESTAFF = "That could reveal the world.",
		TENT = 
		{
			GENERIC = "Looks confortable.",
			BURNT = "Now I feel really... really crestfallen.",
		},
		SIESTAHUT = 
		{
			GENERIC = "A cool way to beat the sun.",
			BURNT = "Bien... c'est triste.",
		},
		TENTACLE = "Poulpes in the soil? With SPIKES? Non non non!",
		TENTACLESPIKE = "That's pretty brutal... and slimey",
		TENTACLESPOTS = "That scientist said something about it being uhh... genetalia.",
		TENTACLE_PILLAR = "A slimy pole.",
        TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.",
		TENTACLE_PILLAR_ARM = "Little slippery arms.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "What a nice hat.",
		TORCH = "Merci pour la lumiere.",
		TRANSISTOR = "It's whirring with AHH! ELECTRIQUE!.",
		TRAP = "I wove it real tight.",
		TRAP_TEETH = "Heh.. heheh... HEHE! Ahem. The trap is set.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!",
		TREASURECHEST = 
		{
			GENERIC = "It's a tickle trunk!",
			BURNT = "That trunk was truncated.",
		},
		TREASURECHEST_TRAP = "How convenient!",
		SACRED_CHEST = 
		{
			GENERIC = "I hear whispers. It wants something.",
			LOCKED = "It's passing its judgment.",
		},
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.",
		
		TRINKET_1 = "Hmm Maybe that pyromaniac psychopath would like these?", --Melted Marbles
		TRINKET_2 = "It's a... It's uhh... What is this?", --Fake Kazoo
		TRINKET_3 = "This irritates me... And I don't know why... grr HOW DO YOU UNTANGLE THIS?", --Gord's Knot
		TRINKET_4 = "Pssh, mignonne.", --Gnome
		TRINKET_5 = "Sadly it's too small for me to escape on.", --Toy Rocketship
		TRINKET_6 = "Their electricity carrying days are over.", --Frazzled Wires
		TRINKET_7 = "Hehe... hehhe... hihihi...", --Ball and Cup
		TRINKET_8 = "Bien, bien, I never got to experience bathtubs though.", --Rubber Bung
		TRINKET_9 = "I'm more of a zipper person, myself.", --Mismatched Buttons
		TRINKET_10 = "Hihihi, I'm sure that mime would want this as a gift.", --Dentures
		TRINKET_11 = "Hal whispers beautiful lies to me.", --Lying Robot
		TRINKET_12 = "Yeah... no.", --Dessicated Tentacle
		TRINKET_13 = "It's small.. and weirdly cute.", --Gnomette
		TRINKET_14 = "Hmm I've mostly had wine but I'd like to try tea someday...", --Leaky Teacup
		TRINKET_15 = "...ooo is this a pawn?", --Pawn
		TRINKET_16 = "...Chess. I wanna play that sometime.", --Pawn
		TRINKET_17 = "Wha- Why? You poor thing you don't even know what you are.", --Bent Spork
		TRINKET_18 = "I wonder what it's hiding?", --Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", --Unbalanced Top
		TRINKET_20 = "Wigfrid keeps jumping out and hitting me with it?!", --Backscratcher
		TRINKET_21 = "Maybe some omelette du fromage... but I'll need cheese and the egg.", --Egg Beater
		TRINKET_22 = "I have a few theories about this string.", --Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", --Shoehorn
		TRINKET_24 = "Hmm... no cats.", --Lucky Cat Jar
		TRINKET_25 = "Smells like... smells like nothing .", --Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", --Potato Cup
		TRINKET_27 = "If you unwound it you could poke someone from really far away.", --Coat Hanger
		TRINKET_28 = "It's a rook. cute little thing.", --Rook
        TRINKET_29 = "Mmm.. cute little thing", --Rook
        TRINKET_30 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_31 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_32 = "I know someone who'd have a ball with this!", --Cubic Zirconia Ball
        TRINKET_33 = "I hope this doesn't attract spiders.", --Spider Ring
        TRINKET_34 = "Let's make a wish. For science.", --Monkey Paw
        TRINKET_35 = "Not a single drop. Curious to what was in it.", --Empty Elixir
        TRINKET_36 = "Pokey.", --Faux fangs
        TRINKET_37 = "Might save this for that scientist.", --Broken Stake
        TRINKET_38 = "I think it came from another world. One with grifts.", -- Binoculars Griftlands trinket
        TRINKET_39 = "I wonder where the other one is?", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Holding it makes me feel like bartering.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "It's a little warm to the touch.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "It's full of someone's childhood memories.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "It's not very good at jumping.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "It's some plant thing.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "You turn this annd.. nothing..", -- Odd Radio ONI trinket
        TRINKET_46 = "Little thing..", -- Hairdryer ONI trinket
        
        HALLOWEENCANDY_1 = "Yeah. yeah. I like sweets. Ta guele.",
        HALLOWEENCANDY_2 = "Hmm... crunchy I think? Maybe they melt in the mouth?",
        HALLOWEENCANDY_3 = "It's... corn.",
        HALLOWEENCANDY_4 = "They wriggle on the way down.",
        HALLOWEENCANDY_5 = "Peut-être encore une? Non?",
        HALLOWEENCANDY_6 = "I... don't think I'll be eating those.",
        HALLOWEENCANDY_7 = "Everyone'll be raisin' a fuss over these.",
        HALLOWEENCANDY_8 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_9 = "Mm..MM!! It's sticky.",
        HALLOWEENCANDY_10 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_11 = "Much better tasting than the real thing.",
        HALLOWEENCANDY_12 = "...I think i had too much sweets.", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Oh, my poor jaw.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "What the-OO CHAUDE! CHAUDE!.", --Hot Lava pepper candy
        CANDYBAG = "Ah! I hope they got the minty ones.",

		HALLOWEEN_ORNAMENT_1 = "A spectornament I could hang in a tree.",
		HALLOWEEN_ORNAMENT_2 = "Completely batty decoration.",
		HALLOWEEN_ORNAMENT_3 = "This wood look good hanging somewhere.", 
		HALLOWEEN_ORNAMENT_4 = "Almost i-tentacle to the real ones.",
		HALLOWEEN_ORNAMENT_5 = "Eight-armed adornment.",
		HALLOWEEN_ORNAMENT_6 = "Everyone's raven about tree decorations these days.", 

		HALLOWEENPOTION_DRINKS_WEAK = "I was hoping for something bigger.",
		HALLOWEENPOTION_DRINKS_POTENT = "A potent potion.",
        HALLOWEENPOTION_BRAVERY = "Full of grit.",
		HALLOWEENPOTION_MOON = "Infused with transforming such-and-such.",
		HALLOWEENPOTION_FIRE_FX = "Crystallized inferno.", 
		MADSCIENCE_LAB = "Sanity is a small price to pay for science!",
		LIVINGTREE_ROOT = "Something's in there! I'll have to root it out.", 
		LIVINGTREE_SAPLING = "It'll grow up big and horrifying.",

        DRAGONHEADHAT = "So who gets to be the head?",
        DRAGONBODYHAT = "I'm middling on this middle piece.",
        DRAGONTAILHAT = "Someone has to bring up the rear.",
        PERDSHRINE =
        {
            GENERIC = "I feel like it wants something.",
            EMPTY = "I've got to plant something there.",
            BURNT = "That won't do at all.",
        },
        REDLANTERN = "This lantern feels more special than the others.",
        LUCKY_GOLDNUGGET = "What a lucky find!",
        FIRECRACKERS = "Filled with explosion science!",
        PERDFAN = "It's inordinately large.",
        REDPOUCH = "Is there something inside?",
        WARGSHRINE = 
        {
            GENERIC = "I should make something fun.",
            EMPTY = "I need to put a torch in it.",
            BURNING = "I should make something fun.", --for willow to override
            BURNT = "It burned down.",
        },
        CLAYWARG = 
        {
        	GENERIC = "A terror cotta monster!",
        	STATUE = "Did it just move?",
        },
        CLAYHOUND = 
        {
        	GENERIC = "I knew it! It was alive all along!!",
        	STATUE = "Eerily realistic.",
        },
        HOUNDWHISTLE = "This'd stop a dog in its tracks.",
        CHESSPIECE_CLAYHOUND = "That thing's the leashed of my worries.",
        CHESSPIECE_CLAYWARG = "And I didn't even get eaten!",

		PIGSHRINE =
		{
            GENERIC = "More stuff to make.",
            EMPTY = "It's hungry for meat.",
            BURNT = "Burnt out.",
		},
		PIG_TOKEN = "This looks important.",
		PIG_COIN = "This'll pay off in a fight.",
		YOTP_FOOD1 = "A feast fit for me.",
		YOTP_FOOD2 = "A meal only a beast would love.",
		YOTP_FOOD3 = "Nothing fancy.",

		PIGELITE1 = "What are you looking at?", --BLUE
		PIGELITE2 = "He's got gold fever!", --RED
		PIGELITE3 = "Here's mud in your eye!", --WHITE
		PIGELITE4 = "Wouldn't you rather hit someone else?", --GREEN

		PIGELITEFIGHTER1 = "What are you looking at?", --BLUE
		PIGELITEFIGHTER2 = "He's got gold fever!", --RED
		PIGELITEFIGHTER3 = "Here's mud in your eye!", --WHITE
		PIGELITEFIGHTER4 = "Wouldn't you rather hit someone else?", --GREEN

		BISHOP_CHARGE_HIT = "Ow!",
		TRUNKVEST_SUMMER = "Wilderness casual.",
		TRUNKVEST_WINTER = "Winter survival gear.",
		TRUNK_COOKED = "Somehow even more nasal than before.",
		TRUNK_SUMMER = "A light breezy trunk.",
		TRUNK_WINTER = "A thick, hairy trunk.",
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.",
		TURKEYDINNER = "Mmmm.",
		TWIGS = "It's a bunch of small twigs.",
		UMBRELLA = "I always hate when my hair gets wet and poofy.",
		GRASS_UMBRELLA = "My hair looks good wet... it's when it dries that's the problem.",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "I'm waffling on whether it needs more syrup.",
		WALL_HAY = 
		{	
			GENERIC = "Hmmmm. I guess that'll have to do.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "This seems like a bad idea.",
		WALL_STONE = "That's a nice wall.",
		WALL_STONE_ITEM = "They make me feel so safe.",
		WALL_RUINS = "An ancient piece of wall.",
		WALL_RUINS_ITEM = "A solid piece of history.",
		WALL_WOOD = 
		{
			GENERIC = "Pointy!",
			BURNT = "Burnt!",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "Spacey and smooth!",
		WALL_MOONROCK_ITEM = "Very light, but surprisingly tough.",
		FENCE = "It's just a wood fence.",
        FENCE_ITEM = "All we need to build a nice, sturdy fence.",
        FENCE_GATE = "It opens. And closes sometimes, too.",
        FENCE_GATE_ITEM = "All we need to build a nice, sturdy gate.",
		WALRUS = "Walruses are natural predators.",
		WALRUSHAT = "It's covered with walrus hairs.",
		WALRUS_CAMP =
		{
			EMPTY = "Who could it be camping in this yard.",
			GENERIC = "It even looks cozy from here.",
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.",
		WARDROBE = 
		{
			GENERIC = "It holds dark, forbidden secrets...",
            BURNING = "NO MY CLOTHES!!",
			BURNT = "It's out of style now.",
		},
		WARG = "You might be something to reckon with, big dog.",
		WASPHIVE = "I think those bees are mad.",
		WATERBALLOON = "What a scientific marvel!",
		WATERMELON = "Sticky sweet.",
		WATERMELON_COOKED = "Juicy and warm.",
		WATERMELONHAT = "Let the juice run down your face.",
		WAXWELLJOURNAL = "Spooky.",
		WETGOOP = "It tastes like nothing.",
        WHIP = "Nothing like loud noises to help keep the peace.",
		WINTERHAT = "It'll be good for when winter comes.",
		WINTEROMETER = 
		{
			GENERIC = "I always thought silver was more... solid.",
			BURNT = "Oh no. The thermometer's burnt.",
		},

        WINTER_TREE =
        {
            BURNT = "Now that is just disapointing..",
            BURNING = "That's not nice.",
            CANDECORATE = "Happy Winter's Feast!",
            YOUNG = "It's almost Winter's Feast!",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "I need a pine cone for that.",
            BURNT = "Time to build another one.",
		},
        WINTER_ORNAMENT = "Every scientist appreciates a good bauble.",
        WINTER_ORNAMENTLIGHT = "A tree's not complete without some electricity.",
        WINTER_ORNAMENTBOSS = "This one is especially impressive.",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTGORGE = "For some reason it makes me hungry.",

        WINTER_FOOD1 = "It's a little man-shapped cookie.", --gingerbread cookie
        WINTER_FOOD2 = "Crispy goodness. I want more!", --sugar cookie
        WINTER_FOOD3 = "It's tough!", --candy cane
        WINTER_FOOD4 = "What is this? And why does it taste so succulent.", --fruitcake
        WINTER_FOOD5 = "It's... It's a log. Eh what's the worst that can happen.", --yule log cake
        WINTER_FOOD6 = "Back then I got one from an Englishman.", --plum pudding
        WINTER_FOOD7 = "Interesting. And sweet too!", --apple cider
        WINTER_FOOD8 = "Nice. Just very nice.", --hot cocoa
        WINTER_FOOD9 = "Oh that hits.", --eggnog

        KLAUS = "What on earth is that thing!",
        KLAUS_SACK = "I want it. I really want it.",
		KLAUSSACKKEY = "You and your antlers served your own downfall.",
		WORMHOLE =
		{
			GENERIC = "Creepy, uncanny yet inviting.",
			OPEN = "Maybe... Well what's the worst that can happen.",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.",
		ACCOMPLISHMENT_SHRINE = "Congratulations.",        
		LIVINGTREE = "Is it watching me?",
		ICESTAFF = "Froide... Very chilling.",
		REVIVER = "This should bring those ghosts back to life.",
		SHADOWHEART = "It still beats with the shadows...",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "What. Is. That.",
			LINE_2 = "I can't even read the runes let alone understand them.",
			LINE_3 = "Oh here's something about... darkness... washing over.. cats?",
			LINE_4 = "They look... beautiful? no different. Underneath?",
			LINE_5 = "It's like those nightmares I get when the moon is full.",
		},
        ATRIUM_STATUE = "I don't understand it.",
        ATRIUM_LIGHT = 
        {
			ON = "Profané lumiére.",
			OFF = "Something or someone should turn it on.",
		},
        ATRIUM_GATE =
        {
			ON = "The profanity...",
			OFF = "It is silent.",
			CHARGING = "What's that sound!?",
			DESTABILIZING = "It's acting uncanny.",
			COOLDOWN = "It seems to be resting. I should too.",
        },
        ATRIUM_KEY = "If you listen closely....",
		LIFEINJECTOR = "I... guess it works that way.",
		SKELETON_PLAYER =
		{
			MALE = "%s must've died. Paix a son ame",
			FEMALE = "Que Dieu ait son ame.",
			ROBOT = "Requiescet in pace %s.",
			DEFAULT = "%s must've died. Repose en paix",
		},
		HUMANMEAT = "Mais, c'est tabou",
		HUMANMEAT_COOKED = "Err... okay I guess?",
		HUMANMEAT_DRIED = "Not giving us a lot of choices now, are we?",
		ROCK_MOON = "That rock came from the moon.",
		MOONROCKNUGGET = "What an enticing brilliance. So alien.",
		MOONROCKCRATER = "I wonder what goes in it. ",
		MOONROCKSEED = "It's... It's calling me...",

        REDMOONEYE = "M.. Magic? How could I see for such distances",
        PURPLEMOONEYE = "I don't like how it stares back at me.",
        GREENMOONEYE = "It just stares...",
        ORANGEMOONEYE = "Bien, this should tell me where everyone is.",
        YELLOWMOONEYE = "It's like clairvoyance.",
        BLUEMOONEYE = "Keeping an eye out on... whatever is there.",

        --Arena Event
        LAVAARENA_BOARLORD = "That's the guy in charge here.",
        BOARRIOR = "You sure are big!",
        BOARON = "I can take him!",
        PEGHOOK = "That spit is corrosive!",
        TRAILS = "He's got a strong arm on him.",
        TURTILLUS = "Its shell is so spiky!",
        SNAPPER = "This one's got bite.",
		RHINODRILL = "He's got a nose for this kind of work.",
		BEETLETAUR = "I can smell him from here!",

        LAVAARENA_PORTAL = 
        {
            ON = "I'll just be going now.",
            GENERIC = "That's how we got here. Hopefully how we get back, too.",
        },
        LAVAARENA_KEYHOLE = "It needs a key.",
		LAVAARENA_KEYHOLE_FULL = "That should do it.",
        LAVAARENA_BATTLESTANDARD = "Everyone, break the Battle Standard!",
        LAVAARENA_SPAWNER = "This is where those enemies are coming from.",

        HEALINGSTAFF = "It conducts regenerative energy.",
        FIREBALLSTAFF = "It calls a meteor from above.",
        HAMMER_MJOLNIR = "It's a heavy hammer for hitting things.",
        SPEAR_GUNGNIR = "I could do a quick charge with that.",
        BLOWDART_LAVA = "That's a weapon I could use from range.",
        BLOWDART_LAVA2 = "It uses a strong blast of air to propel a projectile.",
        LAVAARENA_LUCY = "That weapon's for throwing.",
        WEBBER_SPIDER_MINION = "I guess they're fighting for us.",
        BOOK_FOSSIL = "This'll keep those monsters held for a little while.",
		LAVAARENA_BERNIE = "He might make a good distraction for us.",
		SPEAR_LANCE = "It gets to the point.",
		BOOK_ELEMENTAL = "I can't make out the text.",
		LAVAARENA_ELEMENTAL = "It's a rock monster!",

   		LAVAARENA_ARMORLIGHT = "Light, but not very durable.",
		LAVAARENA_ARMORLIGHTSPEED = "Lightweight and designed for mobility.",
		LAVAARENA_ARMORMEDIUM = "It offers a decent amount of protection.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "That could help me hit a little harder.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "I'd have energy for a few more stunts wearing that.",
		LAVAARENA_ARMORHEAVY = "That's as good as it gets.",
		LAVAARENA_ARMOREXTRAHEAVY = "This armor has been petrified for maximum protection.",

		LAVAARENA_FEATHERCROWNHAT = "Those fluffy feathers make me want to run!",
        LAVAARENA_HEALINGFLOWERHAT = "The blossom interacts well with healing magic.",
        LAVAARENA_LIGHTDAMAGERHAT = "My strikes would hurt a little more wearing that.",
        LAVAARENA_STRONGDAMAGERHAT = "It looks like it packs a wallop.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Looks like it amplifies healing expertise.",
        LAVAARENA_EYECIRCLETHAT = "It has a gaze full of science.",
        LAVAARENA_RECHARGERHAT = "Those crystals will quickened my abilities.",
        LAVAARENA_HEALINGGARLANDHAT = "This garland will restore a bit of my vitality.",
        LAVAARENA_CROWNDAMAGERHAT = "That could cause some major destruction.",

		LAVAARENA_ARMOR_HP = "That should keep me safe.",

		LAVAARENA_FIREBOMB = "It smells like brimstone.",
		LAVAARENA_HEAVYBLADE = "A sharp looking instrument.",

        --Quagmire
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",
		
        QUAGMIRE_HOE = "It's a farming instrument.",
        
        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful chemical reaction.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful temperature experiment.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",
        
		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
        QUAGMIRE_POT = "This one holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},
		
		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",

		
		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",

		
		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",
        
        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },
        
        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",
        
        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",
        
        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",
        
        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "She's made a sort of automatic defense system.",
        	OFF = "It needs some electricity.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "What an ingenious idea!",
        	OFF = "It needs some electricity.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "Looks science-y. How does it work?",
        	LOWPOWER = "It's getting low on power.",
        	OFF = "I could get it working, if Winona's busy.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "Hey! That's not science!",
        	LOWPOWER = "It'll turn off soon.",
        	OFF = "Science beats magic, every time.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },

        --Wormwood
        COMPOSTWRAP = "Wormwood offered me a bite, but I respectfully declined.",
        ARMOR_BRAMBLE = "The best offense is a good defense.",
        TRAP_BRAMBLE = "It'd really poke whoever stepped on it.",

        BOATFRAGMENT03 = "Not much left of it.",
        BOATFRAGMENT04 = "Not much left of it.",
        BOATFRAGMENT05 = "Not much left of it.",
		BOAT_LEAK = "I should patch that up before we sink.",
        MAST = "Avast! A mast!",
        SEASTACK = "It's a rock.",
        FISHINGNET = "Nothing but net.",
        ANTCHOVIES = "Yeesh. Can I toss it back?",
        STEERINGWHEEL = "I could have been a sailor in another life.",
        ANCHOR = "I wouldn't want my boat to float away.",
        BOATPATCH = "Just in case of disaster.",
        DRIFTWOOD_TREE = 
        {
            BURNING = "That driftwood's burning!",
            BURNT = "Doesn't look very useful anymore.",
            CHOPPED = "There might still be something worth digging up.",
            GENERIC = "A dead tree that washed up on shore.",
        },

        DRIFTWOOD_LOG = "It floats on water.",

        MOON_TREE = 
        {
            BURNING = "The tree is burning!",
            BURNT = "The tree burned down.",
            CHOPPED = "That was a pretty thick tree.",
            GENERIC = "I didn't know trees grew on the moon.",
        },
		MOON_TREE_BLOSSOM = "It fell from the moon tree.",

        MOONBUTTERFLY = 
        {
        	GENERIC = "My vast scientific knowledge tells me it's... a moon butterfly.",
        	HELD = "I've got you now.",
        },
		MOONBUTTERFLYWINGS = "We're really winging it now.",
        MOONBUTTERFLY_SAPLING = "A moth turned into a tree? Lunacy!",
        ROCK_AVOCADO_FRUIT = "I'd shatter my teeth on that.",
        ROCK_AVOCADO_FRUIT_RIPE = "Uncooked stone fruit is the pits.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "It's actually soft enough to eat now.",
        ROCK_AVOCADO_FRUIT_SPROUT = "It's growing.",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "Its fruit growing days are over.",
			WITHERED = "It's pretty hot out.",
			GENERIC = "It's a bush... from the moon!",
			PICKED = "It'll take awhile to grow more fruit.",
			DISEASED = "It looks pretty sick.",
            DISEASING = "Err, something's not right.",
			BURNING = "It's burning!",
		},
        DEAD_SEA_BONES = "That's what they get for coming up on land.",
        HOTSPRING = 
        {
        	GENERIC = "If only I could soak my weary bones.",
        	BOMBED = "Just a simple chemical reaction.",
        	GLASS = "Water turns to glass under the moon. That's just science.",
			EMPTY = "I'll just have to wait for it to fill up again.",
        },
        MOONGLASS = "It's very sharp.",
        MOONGLASS_ROCK = "I can practically see my reflection in it.",
        BATHBOMB = "It's just textbook chemistry.",
        TRAP_STARFISH =
        {
            GENERIC = "Aw, what a cute little starfish!",
            CLOSED = "It tried to chomp me!",
        },
        DUG_TRAP_STARFISH = "It's not fooling anyone now.",
        SPIDER_MOON = 
        {
        	GENERIC = "Oh good. The moon mutated it.",
        	SLEEPING = "Thank science, it stopped moving.",
        	DEAD = "Is it really dead?",
        },
        MOONSPIDERDEN = "That's not a normal spider den.",
		FRUITDRAGON =
		{
			GENERIC = "It's cute, but it's not ripe yet.",
			RIPE = "I think it's ripe now.",
			SLEEPING = "It's snoozing.",
		},
        PUFFIN =
        {
            GENERIC = "Wow! That's.. That's a cute bird!!",
            HELD = "Aww. Oiseau mignon.",
            SLEEPING = "Sleep well little one.",
        },

		MOONGLASSAXE = "I've made it extra effective.",
		GLASSCUTTER = "Very sharp! I like this.",

        ICEBERG =
        {
            GENERIC = "Let's steer clear of that.",
            MELTED = "It's completely melted.",
        },
        ICEBERG_MELTED = "It's completely melted.",

        MINIFLARE = "I can light it to let everyone know I'm here.",

		MOON_FISSURE = 
		{
			GENERIC = "I feel peaceful. Yet this peace is perturbing.", 
			NOLIGHT = "Cleary pained screams... or is it just me?",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "Oui, oui ta guele.",
            GENERIC = "Hm? What did you say?",
        },

        MOON_ALTAR_IDOL = "Wherever you came from you should not be here.",
        MOON_ALTAR_GLASS = "I could see Gilles... no wait that's impossible.",
        MOON_ALTAR_SEED = "You want a.. what? I don't understand you.",

        MOON_ALTAR_ROCK_IDOL = "What is that... is that a face?",
        MOON_ALTAR_ROCK_GLASS = "I feel like that \"glasscheibengefühl\" thing.",
        MOON_ALTAR_ROCK_SEED = "Sometimes I wish I didn't understand langue de la lune.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I think tanks are in order.",
            BURNT = "No more seafaring. Zut...",
        },
        BOAT_ITEM = "Seafaring... ah la vaste ocean",
        STEERINGWHEEL_ITEM = "Hmm but where is the rudder?",
        ANCHOR_ITEM = "Bien, Iron anchors are a luxery now. A stone should do well",
        MAST_ITEM = "Bon voyage.",
        MUTATEDHOUND = 
        {
        	DEAD = "Arrière, sale créature de l'enfer!",
        	GENERIC = "OH MON DIEU! QU'EST-CE QUE C'EST?",
        	SLEEPING = "That's a good doggie now don't wake up and I'll fry you and feed you to Fafnir.",
        },

        MUTATED_PENGUIN = 
        {
			DEAD = "It's dead. Va te faire foutre.",
			GENERIC = "QUE C'EST LAID! KILL IT! KILL IT!",
			SLEEPING = "Peep one more time I dare you and I'll fry you and I'll eat you myself.",
		},
        CARRAT = 
        {
        	DEAD = "That's the end of that.",
        	GENERIC = "Are carrots supposed to have legs?",
        	HELD = "You're kind of ugly up close.",
        	SLEEPING = "It's almost cute.",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "Bien, It's kelp. Soggy kelp.",
            PICKED = "I've always wanted to try what it tasted like.",
        },
		BULLKELP_ROOT = "I can plant it in deep water.",
        KELPHAT = "Ughh as if my torq wasn't bad enough.",
		KELP = "Very... very slimey and wet.",
		KELP_COOKED = "It's closer to a liquid than a solid.",
		KELP_DRIED = "Ooo. Sarriette",

		GESTALT = "They're promising me... No that's wrong! NON!",

		COOKIECUTTER = "I don't like the way it's looking at my boat...",
		COOKIECUTTERSHELL = "A shell of its former self.",
		COOKIECUTTERHAT = "At least my hair will stay dry.",
		SALTSTACK =
		{
			GENERIC = "Are those natural formations?",
			MINED_OUT = "It's mined... it's all mined!",
			GROWING = "I guess the ocean deposits salt into it.",
		},
		SALTROCK = "Non. Not doing it.",
		SALTBOX = "Ingenious. Now the food won't spoil so fast.",

        MALBATROSS = "A fowl beast indeed!",
        MALBATROSS_FEATHER = "Plucked from a fine feathered fiend.",
        MALBATROSS_BEAK = "Smells fishy.",
        MAST_MALBATROSS_ITEM = "It's lighter than it looks.",
        MAST_MALBATROSS = "Spread my wings and sail away!",
		MALBATROSS_FEATHERED_WEAVE = "I'm making a quill-t!",

        WALKINGPLANK = "I'm tempted...",
        OAR = "Je dois pagayer.",
		OAR_DRIFTWOOD = "Je dois pagayer.",

		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Now we're cookin'!",
            DONE = "Now we're done cookin'!",

			COOKING_LONG = "That meal is going to take a while.",
			COOKING_SHORT = "It'll be ready in no-time!",
			EMPTY = "I bet there's nothing in there.",
        },
        
        PORTABLEBLENDER_ITEM = "It mixes all the food.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "This will spice things up.",
            DONE = "Should make things a little tastier.",
        },
        SPICEPACK = "These are spices I never knew of!",
        SPICE_GARLIC = "A powerfully potent powder.",
        SPICE_SUGAR = "Sucré! Sucré!",
        SPICE_CHILI = "A flagon of fiery fluid.",
        SPICE_SALT = "La Sel.",
        MONSTERTARTARE = "There's got to be something else to eat around here.",
        FRESHFRUITCREPES = "MMM! Crouqant et sucré.",
        FROGFISHBOWL = "Is that just... frogs stuffed inside a fish?",
        POTATOTORNADO = "Potato, scientifically infused with the power of a tornado!",
        DRAGONCHILISALAD = "I hope I can handle the spice level.",
        GLOWBERRYMOUSSE = "Warly sure can cook.",
        VOLTGOATJELLY = "It's shockingly delicious.",
        NIGHTMAREPIE = "It's a little spooky.",
        BONESOUP = "Bon repas, Warley.",
        MASHEDPOTATOES = "I've heard cooking is basically chemistry. I should try it.",
        POTATOSOUFFLE = "I forgot what good food tasted like.",
        MOQUECA = "He's as talented a chef as I am a scientist.",
        GAZPACHO = "How in science does it taste so good?",
        ASPARAGUSSOUP = "Smells like it tastes.",
        VEGSTINGER = "Can you use the celery as a straw?",
        BANANAPOP = "No, not brain freeze! I need that for science!",
        CEVICHE = "Can I get a bigger bowl? This one looks a little shrimpy.",
        SALSA = "Ah.. AH!.. AH! Épicé... épicé..!",
        PEPPERPOPPER = "What a mouthful!",

        TURNIP = "Bien, c'est navet.",
        TURNIP_COOKED = "Ah, perfect.",
        TURNIP_SEEDS = "Graines de mignon.",
        
        GARLIC = "The number one breath enhancer.",
        GARLIC_COOKED = "Perfectly browned.",
        GARLIC_SEEDS = "A handful of odd seeds.",
        
        ONION = "A nice little onion.",
        ONION_COOKED = "Nicely cooked.",
        ONION_SEEDS = "...I won't question it anymore.",
        
        POTATO = "Bien! Pommes de terre.",
        POTATO_COOKED = "I love that scent.",
        POTATO_SEEDS = "Qu- QUOI?! QUOI? How?",
        
        TOMATO = "Tomates Juteuses.",
        TOMATO_COOKED = "Goody!",
        TOMATO_SEEDS = "A handful of odd seeds.",

        ASPARAGUS = "It's asparagus.", 
        ASPARAGUS_COOKED = "That seems about right.",
        ASPARAGUS_SEEDS = "It's asparagus seeds.",

        PEPPER = "Poivre. Trés épicé.",
        PEPPER_COOKED = "I'd like to try it.",
        PEPPER_SEEDS = "Graines de poivre.",

        WEREITEM_BEAVER = "Now that lumberjack has piqued my interest.",
        WEREITEM_GOOSE = "Oooh what's this? Voodoo?",
        WEREITEM_MOOSE = "I always knew that lumberjack had something taboo.",

        MERMHAT = "Finally, I can talk to those monsters.",
        MERMTHRONE =
        {
            GENERIC = "Looks fit for a swamp king!",
            BURNT = "There was something fishy about that throne anyway.",
        },        
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "I'm keeping an eye on that fish faced abomination",
            BURNT = "I feel slightly bad for her hard work now.",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "Huh. That actually looks nice.",
            BURNT = "Bon sang! Nauséabond!",
        },

        MERMWATCHTOWER_REGULAR = "Err I guess good for them?.",
        MERMWATCHTOWER_NOKING = "The question is, who are they guarding?.",
        MERMKING = "Roi de porc!",
        MERMGUARD = "I feel very guarded around these guys...",
        MERM_PRINCE = "They operate on a first-come, first-sovereigned basis.",

    },

    DESCRIBE_GENERIC = "Well... not much to say about it.",
    DESCRIBE_TOODARK = "Trop sombre!",
    DESCRIBE_SMOLDERING = "That thing is smoldering!",
    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Mmm. A bit too salty but savory nonetheless.",
    },
}
