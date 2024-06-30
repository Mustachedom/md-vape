how to install

step 1 add these items to your items.lua and add the images 
```
["vegetable_glycol"] 				 = {["name"] = "vegetable_glycol", 			  	["label"] = "Vegetable Glycerin", 		["weight"] = 100, 		["type"] = "item", 		["image"] = "vegetableglycol.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["propelyne_glycol"] 				 = {["name"] = "propelyne_glycol", 			  	["label"] = "Propelyne Glycol", 		["weight"] = 100, 		["type"] = "item", 		["image"] = "propelyneglycol.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["nicotine"] 						 = {["name"] = "nicotine", 			  			["label"] = "Nicotine", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "nicotine.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["apple_extract"] 						 = {["name"] = "apple_extract", 			  			["label"] = "Apple Extract", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "apple_extract.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["watermelon_extract"] 						 = {["name"] = "watermelon_extract", 			  			["label"] = "Watermelon Extract", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "watermelon_extract.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["watermelon_vape"] 						 = {["name"] = "watermelon_vape", 			  			["label"] = "Watermelon Vape", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "vape.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["menthol_vape"] 						 = {["name"] = "menthol_vape", 			  			["label"] = "Menthol Vape", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "vape.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["unflavored_juice"] 						 = {["name"] = "unflavored_juice", 			  			["label"] = "Unflavored Juice", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "unflavored_juice.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["apple_vape"] 						 = {["name"] = "apple_vape", 			  			["label"] = "Apple Vape", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "vape.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
["menthol_extract"] 						 = {["name"] = "menthol_extract", 			  			["label"] = "Menthol Extract", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "menthol_extract.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},

```

or if you're using ox inv
```
["apple_extract"] = {
		label = "Apple Extract",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "apple_extract.png",
		}
	},

	["watermelon_extract"] = {
		label = "Watermelon Extract",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "watermelon_extract.png",
		}
	},

	["watermelon_vape"] = {
		label = "Watermelon Vape",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vape.png",
		}
	},

	["vegetable_glycol"] = {
		label = "Vegetable Glycerin",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vegetableglycol.png",
		}
	},

	["propelyne_glycol"] = {
		label = "Propelyne Glycol",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "propelyneglycol.png",
		}
	},

	["menthol_vape"] = {
		label = "Menthol Vape",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vape.png",
		}
	},

	["unflavored_juice"] = {
		label = "Unflavored Juice",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vapebottle.png",
		}
	},

	["menthol_extract"] = {
		label = "Menthol Vape",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "menthol_extract.png",
		}
	},

	["apple_vape"] = {
		label = "Apple Vape",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vape.png",
		}
	},

	["nicotine"] = {
		label = "Nicotine",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "nicotine.png",
		}
	},
```

Step 2 Fill Out The Config 
inside the register table in the config there is something that says event = ''
thats where you put your billing event, with so many banking/billing scripts i made the event you need to put a config option

IF YOU ASK

Q:Why doesn't this work i have enabled turned to false,

A:think for one second.

Q: Does this work with ox?
A: read the config


Q: How do i add more locations
A: copy and paste



