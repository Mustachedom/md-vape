local QBCore = exports['qb-core']:GetCoreObject()

--------- Stashes
RegisterNetEvent('md-stashes:client:vapeshop1', function ()
    TriggerEvent("inventory:client:SetCurrentStash", "vapeshop1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "vapeshop1", {
        maxweight = 4000000,
        slots = 500,
    })
end)
RegisterNetEvent('md-stashes:client:vapeshop2', function ()
    TriggerEvent("inventory:client:SetCurrentStash", "vapeshop2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "vapeshop2", {
        maxweight = 4000000,
        slots = 500,
    })
end)

----- stores
RegisterNetEvent('md-vape:client:openvapeshop', function()
TriggerServerEvent("inventory:server:OpenInventory", "shop", "vape shop", Config.vapeshop)
end)


RegisterNetEvent('md-vape:client:feistyvapecraft', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
	else
	exports["rpemotes"]:EmoteCommandStart("uncuff", 0)
	end
		QBCore.Functions.Progressbar("vape", "Crafting", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
		    
			TriggerServerEvent("md-vape:server:feistyvape")
		end)
end)

RegisterNetEvent('md-vape:client:brums_vapecraft', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
	else
	exports["rpemotes"]:EmoteCommandStart("uncuff", 0)
	end
		QBCore.Functions.Progressbar("vape", "Crafting", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
		    
			TriggerServerEvent("md-vape:server:brums_vape")
		end)
end)

RegisterNetEvent('md-vape:client:apple_vapecraft', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
	else
	exports["rpemotes"]:EmoteCommandStart("uncuff", 0)
	end
		QBCore.Functions.Progressbar("vape", "Crafting", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
		    
			TriggerServerEvent("md-vape:server:apple_vape")
		end)
end)

RegisterNetEvent('md-vape:client:watermelon_vapecraft', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
	else
	exports["rpemotes"]:EmoteCommandStart("uncuff", 0)
	end
		QBCore.Functions.Progressbar("vape", "Crafting", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
		    
			TriggerServerEvent("md-vape:server:watermelon_vape")
		end)
end)

RegisterNetEvent('md-vape:client:yellow_vapecraft', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
	else
	exports["rpemotes"]:EmoteCommandStart("uncuff", 0)
	end
		QBCore.Functions.Progressbar("vape", "Crafting", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
		    
			TriggerServerEvent("md-vape:server:yellow_vape")
		end)
end)

------------------- usuable item event
RegisterNetEvent('md-vape:client:feistyvape', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"hitvape"})
	else
	exports["rpemotes"]:EmoteCommandStart("hitvape", 0)
	end
		QBCore.Functions.Progressbar("vape", "Smoking vape", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
		    exports['ps-buffs']:StaminaBuffEffect(15000, 1.1)
				if Config.rp then
					exports["rpemotes"]:EmoteCancel(forceCancel)
				else
					ClearPedTasks(PlayerPedId())
				end
		end)
end)

RegisterNetEvent('md-vape:client:apple_vape', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"hitvape"})
	else
	exports["rpemotes"]:EmoteCommandStart("hitvape", 0)
	end
		QBCore.Functions.Progressbar("vape", "Smoking vape", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
			exports["ps-buffs"]:AddArmorBuff(15000, 10)
							if Config.rp then
					exports["rpemotes"]:EmoteCancel(forceCancel)
				else
					ClearPedTasks(PlayerPedId())
				end
		end)
end)

RegisterNetEvent('md-vape:client:brums_vape', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"hitvape"})
	else
	exports["rpemotes"]:EmoteCommandStart("hitvape", 0)
	end
		QBCore.Functions.Progressbar("vape", "Smoking vape", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
		    exports['ps-buffs']:StaminaBuffEffect(15000, 1.4)
							if Config.rp then
					exports["rpemotes"]:EmoteCancel(forceCancel)
				else
					ClearPedTasks(PlayerPedId())
				end
		end)
end)

RegisterNetEvent('md-vape:client:watermelon_vape', function()
		QBCore.Functions.Progressbar("vape", "Smoking vape..", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
			TriggerEvent('animations:client:EmoteCommandStart', {"hitvape"})
			Wait(250) 
			exports['ps-buffs']:AddStressBuff(20000, 25)
							if Config.rp then
					exports["rpemotes"]:EmoteCancel(forceCancel)
				else
					ClearPedTasks(PlayerPedId())
				end
		end)
end)

RegisterNetEvent('md-vape:client:yellow_vape', function()
	if Config.rp then
	TriggerEvent('animations:client:EmoteCommandStart', {"hitvape"})
	else
	exports["rpemotes"]:EmoteCommandStart("hitvape", 0)
	end
		QBCore.Functions.Progressbar("vape", "Smoking vape", 2000, false, false, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
		   exports['ps-buffs']:SwimmingBuffEffect(10000, 1.4)
		   exports["rpemotes"]:EmoteCancel(forceCancel)
		end)
end)

------------- targets

CreateThread(function()
	if Config.Target == "ox" then
	exports.ox_target:addBoxZone({
		coords = Config.craftloc,
		size = vec3(1.5,1.5,1.75),
		rotation = 11.0,
		debug = false,
		drawsprite = true,
		options = {
			{
				event = "md-vape:client:feistyvapecraft",
				icon = "fas fa-sign-in-alt",
				label = "Craft Feisty Vape",
				groups = {'vapeshop'},
			},
			{
				event = "md-vape:client:brums_vapecraft",
				icon = "fas fa-sign-in-alt",
				label = "Craft Brums Vape",
				groups = {'vapeshop'},
			},
			{
				event = "md-vape:client:apple_vapecraft",
				icon = "fas fa-sign-in-alt",
				label = "Craft Apple Vape",
				groups = {'vapeshop'},
			},
			{
				event = "md-vape:client:watermelon_vapecraft",
				icon = "fas fa-sign-in-alt",
				label = "Craft Watermelon Vape",
				groups = {'vapeshop'},
			},
			{
				event = "md-vape:client:yellow_vapecraft",
				icon = "fas fa-sign-in-alt",
				label = "Craft Yellow Vape",
				groups = {'vapeshop'},
			}
		}
	}) 

	exports.ox_target:addBoxZone({
		coords = Config.storeloc,
		size = vec3(1.5,1.5,1.75),
		rotation = 11.0,
		debug = false,
		drawsprite = true,
		options = {
			{
				event = 'md-vape:client:openvapeshop',
				icon = "fas fa-sign-in-alt",
				label = "Shop",
				groups = {'vapeshop'},
			},
		}
	})

	exports.ox_target:addBoxZone({
	coords = Config.stashloc,
 	size = vec3(1,1,1),
 	rotation = 11.0,
 	debug = false,
 	drawsprite = true,
 	options = {
		{
			event = 'md-stashes:client:vapeshop1',
			icon = "fas fa-sign-in-alt",
			label = "Stash",
			groups = {'vapeshop'},
		},
		}
	})

 	exports.ox_target:addBoxZone({
		coords = Config.stashtwoloc,
	 	size = vec3(1,1,1),
	 	rotation = 11.0,
	 	debug = false,
	 	drawsprite = true,
	 	options = {
		{
            event = 'md-stashes:client:vapeshop2',
			icon = "fas fa-sign-in-alt",
			label = "Stash",
			groups = {'vapeshop'},
		}
	}
	})
	else
	exports['qb-target']:AddBoxZone("craftvape",Config.craftloc,1.5, 1.75, { -- 963.37, -2122.95, 31.47
	name = "craftvape",
	heading = 11.0,
	debugPoly = false,
	minZ = Config.craftloc-2,
	maxZ = Config.craftloc+2,
}, {
	options = {
		{
            type = "client",
            event = "md-vape:client:feistyvapecraft",
			icon = "fas fa-sign-in-alt",
			label = "Craft Feisty Vape",
			job = "vapeshop"
		},
		{
            type = "client",
            event = "md-vape:client:brums_vapecraft",
			icon = "fas fa-sign-in-alt",
			label = "Craft Brums Vape",
			job = "vapeshop"
		},
		{
            type = "client",
            event = "md-vape:client:apple_vapecraft",
			icon = "fas fa-sign-in-alt",
			label = "Craft Apple Vape",
			job = "vapeshop"
		},
		{
            type = "client",
            event = "md-vape:client:watermelon_vapecraft",
			icon = "fas fa-sign-in-alt",
			label = "Craft Watermelon Vape",
			job = "vapeshop"
		},
		{
            type = "client",
            event = "md-vape:client:yellow_vapecraft",
			icon = "fas fa-sign-in-alt",
			label = "Craft Yellow Vape",
			job = "vapeshop"
		},
	},
	distance = 2.5
 })
 
 exports['qb-target']:AddBoxZone("vapestoreloc",Config.storeloc,1.5, 1.75, { -- 963.37, -2122.95, 31.47
	name = "vapestoreloc",
	heading = 11.0,
	debugPoly = false,
	minZ = Config.storeloc-2,
	maxZ = Config.storeloc+2,
}, {
	options = {
		{
            type = "client",
            event = 'md-vape:client:openvapeshop',
			icon = "fas fa-sign-in-alt",
			label = "Craft",
			job = "vapeshop"
		},
	},
	distance = 2.5
 })
 
 exports['qb-target']:AddBoxZone("vapestashloc",Config.stashloc,1.5, 1.75, { -- 963.37, -2122.95, 31.47
	name = "vapestoreloc",
	heading = 11.0,
	debugPoly = false,
	minZ = Config.stashloc-2,
	maxZ = Config.stashloc+2,
}, {
	options = {
		{
            type = "client",
            event = 'md-stashes:client:vapeshop1',
			icon = "fas fa-sign-in-alt",
			label = "Craft",
			job = "vapeshop"
		},
	},
	distance = 2.5
 })
  exports['qb-target']:AddBoxZone("vapestashtwoloc",Config.stashtwoloc,1.5, 1.75, { -- 963.37, -2122.95, 31.47
	name = "vapestashtwoloc",
	heading = 11.0,
	debugPoly = false,
	minZ = Config.stashtwoloc-2,
	maxZ = Config.stashtwoloc+2,
}, {
	options = {
		{
            type = "client",
            event = 'md-stashes:client:vapeshop2',
			icon = "fas fa-sign-in-alt",
			label = "Craft",
			job = "vapeshop"
		},
	},
	distance = 2.5
 })
end)
