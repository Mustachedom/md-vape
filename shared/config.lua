Config = {}

--- function stuff
Config.OxInv = false -- If you Use OxInv Then Here You Go
Config.QBNewInv = true
Config.oxtarget = false
Config.progressbartype = 'qb' -- either 'qb', 'oxcir', 'oxbar'
Config.minigametype = 'ox' -- either 'ps' or 'ox' or 'none'
Config.Notify = 'ox' -- -- either 'qb' or 'ox' or 'okok'
Config.Phone = 'qb' -- either 'qb' or 'yflip' or 'qs'
Config.Dispatch = 'ps' -- either 'ps', 'cd', 'core', 'aty'
--- function stuff end

-- store stuff
Config.BestBudz = true -- do you want to use this location? No? mark it false
Config.HookahLounge = true-- do you want to use this location? No? mark it false
Config.SingleUse = true -- if vapes are single use
Config.RemoveChance = 20 -- IF Config.SingleUse IS FALSE THIS IS THE % CHANCE THE VAPE WILL BE REMOVED ON USE
Config.Debug = true

Config.ingridients = { -- things you buy in the store
	["vegetable_glycol"] 	 = { price = 0, amount = 20,},
	["propelyne_glycol"]	 = { price = 0, amount = 20,},
	["nicotine"] 		 	 = { price = 0, amount = 20,},
	["apple_extract"] 		 = { price = 0, amount = 20,},
	["watermelon_extract"] 	 = { price = 0, amount = 20,},
	["menthol_extract"]      = { price = 0, amount = 20,},
}

Config.StashLoc = { -- where the stashes are
	{loc = vector3(379.88, -819.56, 29.51),  slots = 50, weight = 100000, l = 2.0, w = 0.5,height = 1.0, rot = 0, job = '', enabled = Config.BestBudz}, -- best budz
	{loc = vector3(381.82, -819.58, 29.51),  slots = 50, weight = 100000, l = 2.0, w = 0.5,height = 1.0, rot = 0, job = '', enabled = Config.BestBudz}, -- best budz
	{loc = vector3(383.58, -819.65, 29.51),  slots = 50, weight = 100000, l = 2.0, w = 0.5,height = 1.0, rot = 0, job = '', enabled = Config.BestBudz}, -- best budz
	{loc = vector3(101.54, 199.97, 108.54),  slots = 50, weight = 100000, l = 0.75, w = 0.90,height = 1.0, rot = 160, job = '', enabled = Config.HookahLounge}, -- best budz
	{loc = vector3(100.67, 200.29, 108.54),  slots = 50, weight = 100000, l = 0.75, w = 0.90,height = 1.0, rot = 160, job = '', enabled = Config.HookahLounge}, -- best budz
}

Config.StoreLoc = { -- where the stores are
	{loc = vector3(445.45, -978.79, 30.72), l = 2.0 , w = 0.8 , job = '', height = 0.6, rot = 0,   enabled = Config.BestBudz}, -- best budz
	{loc = vector3(374.73, -825.49, 29.25), l = 0.8 , w = 2.0 , job = '', height = 0.6, rot = 0,   enabled = Config.BestBudz}, -- best budz
	{loc = vector3(377.11, -825.49, 29.25), l = 0.8 , w = 2.0 , job = '', height = 0.6, rot = 0,   enabled = Config.BestBudz}, -- best budz
	{loc = vector3(379.67, -825.49, 29.25), l = 0.8 , w = 2.0 , job = '', height = 0.6, rot = 0,   enabled = Config.BestBudz}, -- best budz
	{loc = vector3(97.93, 199.92, 107.94),  l = 0.8 , w = 1.0 , job = '', height = 0.5, rot = 160, enabled = Config.HookahLounge}, --  hookah lounge
	{loc = vector3(96.71, 200.36, 107.95),  l = 0.8 , w = 1.0 , job = '', height = 0.5, rot = 160, enabled = Config.HookahLounge}, --  hookah lounge
	{loc = vector3(95.48, 200.78, 107.87),  l = 0.8 , w = 1.0 , job = '', height = 0.5, rot = 160, enabled = Config.HookahLounge}, --  hookah lounge
}

Config.Register = { -- where the registers are
	{loc = vector3(380.24, -827.33,  29.25),l = 0.60,w = 0.60,height = 0.60, rot = 0, job = '', event = '',enabled = Config.BestBudz}, -- best budz
	{loc = vector3(375.54, -827.33,  29.25),l = 0.5, w = 0.5, height = 0.60, rot = 0, job = '', event = '',enabled = Config.BestBudz}, -- best budz
	{loc = vector3(99.27, 204.44, 108.46), l = 0.5, w = 0.5, height = 0.25, rot = 0, job = '', event = '',enabled = Config.HookahLounge}, -- hookah lounge
}

Config.Tray = { -- where the Trays are
	{loc = vector3(378.78, -827.36,  29.00),	slots = 50, weight = 100000,	l = 0.5, w = 2.0,height = 0.5, rot = 0, enabled = Config.BestBudz}, -- best budz
	{loc = vector3(376.85, -827.34,  29.00),	slots = 50, weight = 100000,	l = 0.5, w = 2.0,height = 0.5, rot = 0, enabled = Config.BestBudz}, -- best budz
	{loc = vector3(375.5,  -828.80,  29.00), slots = 50, weight = 100000,	l = 2.0, w = 0.5,height = 0.5, rot = 0, enabled = Config.BestBudz}, -- best budz
	{loc = vector3(374.33, -830.01,  29.00),	slots = 50, weight = 100000,	l = 0.5, w = 2.0,height = 0.5, rot = 0, enabled = Config.BestBudz}, -- best budz
	{loc = vector3(98.69,  199.37, 108.45),	slots = 50, weight = 100000,	l = 0.5, w = 0.5,height = 0.25, rot = 160, enabled = Config.HookahLounge}, -- hookah lounge
}

Config.Craft = { --  where the crafting is 
	{loc = vector3(445.44, -976.64, 30.62),	l = 0.5, w = 2.0,height = 0.5, rot = 0, enabled = Config.BestBudz}, -- best budz
	{loc = vector3(94.53, 200.77, 108.34),	l = 0.5, w = 0.5,height = 0.5, rot = 160, enabled = Config.HookahLounge}, -- hookah lounge
	
}
Config.Recipes = { -- recipes for crafting
	['unflavored_juice'] = {
		text = 'Nicotine X 1 | Propelyne Glycol X 1 | Vegetable Glycol X 1',
		recipe = {	['nicotine'] = 1,	['propelyne_glycol'] = 1,	['vegetable_glycol'] = 1,}
	},
	['apple_vape'] = {
		text = 'Unflavored Vape Juice X 1 | Apple Extract X 1',
		recipe = {	['unflavored_juice'] = 1,	['apple_extract'] = 1,}
	},
	['watermelon_vape'] = {
		text = 'Unflavored Vape Juice X 1 | Watermelon Extract X 1',
		recipe = {	['unflavored_juice'] = 1,	['watermelon_extract'] = 1,}
	},
	['menthol_vape'] = {
		text = 'Unflavored Vape Juice X 1 | Menthol Extract X 1',
		recipe = {	['unflavored_juice'] = 1,	['menthol_extract'] = 1,}
	},
}
--[[
effect = alien, xtc, meth, trevor, coke
stat = stress, health, thirst, hunger, 
statval = how much it gives you  
emote = whatever emote you want or defaults to smoke
if you dont want any effects, stats, or statvalues you can leave blank so for example
['watermelon_vape'] = {},
--]]

Config.Consume = {
	['apple_vape'] = 	  {effect = 'alien', stat = 'stress', statval = 10},
	['watermelon_vape'] =  {effect = 'alien', stat = 'stress', statval = 10},
	['menthol_vape'] =    {effect = 'alien', stat = 'stress', statval = 10},
}