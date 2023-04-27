how to install


step 1 add these items to your items.lua
```
["vegetable_glycol"] 				 = {["name"] = "vegetable_glycol", 			  	["label"] = "Vegetable Glycerin", 		["weight"] = 100, 		["type"] = "item", 		["image"] = "vegetableglycol.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["propelyne_glycol"] 				 = {["name"] = "propelyne_glycol", 			  	["label"] = "Propelyne Glycol", 		["weight"] = 100, 		["type"] = "item", 		["image"] = "propelyneglycol.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["nicotine"] 						 = {["name"] = "nicotine", 			  			["label"] = "Nicotine", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "nicotine.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["apple_vape"] 						 = {["name"] = "apple_vape", 			  			["label"] = "Apple Vape", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "apple_vape.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["brums_vape"] 						 = {["name"] = "brums_vape", 			  			["label"] = "Brums Vape", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "brums_vape.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["feistyvape"] 						 = {["name"] = "feistyvape", 			  			["label"] = "Feisty Vape", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "feistyvape.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["watermelon_vape"] 						 = {["name"] = "watermelon_vape", 			  			["label"] = "Watermelon Vape", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "nicotine.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["yellow_vape"] 						 = {["name"] = "yellow_vape", 			  			["label"] = "Yellow Vape", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "yellow_vape.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
```
step 2 add this to your qb-management
this goes in Config.BossMenus = {
```
	['vapeshop'] = {
        vector3(375.71, -824.16, 30.09),
    },
```
and this goes to Config.BossMenuZones = {
```
	['vapeshop'] = {
        { coords = vector3(375.71, -824.16, 30.09), length = 1.15, width = 2.6, heading = 353.0, minZ = 28.59, maxZ = 32.99 },
    },
```
step 3 add billing feature to your phone/payment scripts
```
ie jim.payments, gks-phone,qb-phone, okokbanking, renewed-phone
```
step 4 
```
add images
```

step 5  add this to qb-core -> shared -> jobs.lua

```
['vapeshop'] = {
		label = 'Vape Shop',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 500 },
			['1'] = { name = 'Management', isboss = true, payment = 0 },
        },
	},
```

If you change your job name then in the client file do this 

``` 
Control + f and type 
job = "vapeshop",

and replace with 
job = "whateveryouchangeditto",
```

step 6 add this to your emotes ( dp or rp emotes)
``` 
 ["hitvape"] = {
    "mp_player_inteat@burger",
    "mp_player_int_eat_burger",
        "Hit Vape",
    AnimationOptions = {
        Prop = 'brum_voopoo_drag2',
        PropBone = 18905,
        PropPlacement = {
            0.12, 0.05, 0.03, -60.0, 140.0, 360.0
        },
        EmoteMoving = true,
        EmoteLoop = true,
		 PtfxAsset = "core",
            PtfxName = "exp_grd_bzgas_smoke",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.0100,
                0.0600,
                0.6600,
                0.0,
                0.0,
                0.0,
                2.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['vape'],
            PtfxWait = 0,
            PtfxCanHold = true
    }
},
```