local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
	for k, v in pairs (Config.StashLoc) do 
	if v.job == '' or v.job == "" or v.job == nil then v.job = 1 end
		if v.enabled then
		local options = {
				{ icon = "fas fa-sign-in-alt", label = 'Open Stash', num = k, event = 'md-vape:client:OpenStash',
				  canInteract = function()
					if QBCore.Functions.GetPlayerData().job.name == v.job then return true end end
				},
			}
			if Config.oxtarget then 
				exports.ox_target:addBoxZone({coords = v.loc, size = vec3(v.w, v.l,v.height * 2),debug = Config.Debug,rotation = v.rot, options = options,})
			else
				exports['qb-target']:AddBoxZone('mdvapestash'..k, vector3(v.loc.x, v.loc.y, v.loc.z), v.l, v.w, { name = 'mdvapestash'..k, minZ = v.loc.z - v.height , maxZ = v.loc.z + v.height, debugPoly = Config.Debug, heading = v.rot},  {options = options, distance = 2.0})
			end
		end
	end
	for k, v in pairs (Config.StoreLoc) do 
		if v.job == '' or v.job == "" or v.job == nil then v.job = 1 end
		if v.enabled then
			local options = {
					{ icon = "fas fa-sign-in-alt", label = 'Open Store', num = k,  event = 'md-vape:client:OpenShop',
						canInteract = function()
							if QBCore.Functions.GetPlayerData().job.name == v.job  or v.job == 1 then return true end end
					},
				}
			if Config.oxtarget then 
				exports.ox_target:addBoxZone({coords = v.loc, size = vec3(v.w, v.l,v.height * 2),debug = Config.Debug,rotation = v.rot, options = options,})
			else
				exports['qb-target']:AddBoxZone('vapestore'..k, vector3(v.loc.x, v.loc.y, v.loc.z), v.l, v.w, { name = 'vapestore'..k, minZ = v.loc.z-v.height, maxZ = v.loc.z + v.height, debugPoly = Config.Debug, heading = v.rot },  {options = options, distance = 2.0})
			end
		end
	end
	for k, v in pairs (Config.Register) do 
		if v.job == '' or v.job == "" or v.job == nil then v.job = 1 end
		if v.enabled then
			local options = {
					{ icon = "fas fa-sign-in-alt", label = 'Charge Customer', event = v.event, num = k, 
						canInteract = function()
							if QBCore.Functions.GetPlayerData().job.name == v.job  then return true end end
					},
					{ icon = "fas fa-sign-in-alt", label = 'Boss Menu', event = 'qb-bossmenu:client:OpenMenu', num = k, 
						canInteract = function()
							if QBCore.Functions.GetPlayerData().job.name == v.job and QBCore.Functions.GetPlayerData().job.isBoss then return true end end
					},
					{ icon = "fas fa-sign-in-alt", label = 'Toggle Duty', type = 'server', event = 'QBCore:ToggleDuty', num = k, 
					canInteract = function()
						if QBCore.Functions.GetPlayerData().job.name == v.job then return true end end
				},
				}
			if Config.oxtarget then 
				exports.ox_target:addBoxZone({coords = v.loc, size = vec3(v.w, v.l,v.height * 2),debug = Config.Debug,rotation = v.rot, options = options,})
			else
				exports['qb-target']:AddBoxZone('vaperegister'..k, vector3(v.loc.x, v.loc.y, v.loc.z), v.l, v.w, { name = 'vaperegister'..k, minZ = v.loc.z - v.height, maxZ = v.loc.z + v.height, debugPoly = Config.Debug, heading = v.rot}, {options = options, distance = 2.0})
			end
		end
	end
	for k, v in pairs (Config.Tray) do 
		if v.job == '' or v.job == "" or v.job == nil then v.job = 1 end
		if v.enabled then
			local options = {
					{ icon = "fas fa-sign-in-alt", label = 'Open Tray', num = k, event = 'md-vape:client:OpenTray', },
				}
			if Config.oxtarget then 
				exports.ox_target:addBoxZone({coords = v.loc, size = vec3(v.w, v.l,v.height * 2),debug = Config.Debug,rotation = v.rot, options = options,})
			else
				exports['qb-target']:AddBoxZone('vape_tray'..k, vector3(v.loc.x, v.loc.y, v.loc.z), v.l, v.w, { name = 'vape_tray'..k, minZ = v.loc.z - v.height, maxZ = v.loc.z + v.height, debugPoly = Config.Debug, heading = v.rot}, {options = options, distance = 2.0})
			end
		end
	end
	for k, v in pairs (Config.Craft) do 
		if v.job == '' or v.job == "" or v.job == nil then v.job = 1 end
		if v.enabled then
				local options = {
					{ icon = "fas fa-sign-in-alt", label = 'Craft', num = k,  event = 'md-vape:client:CraftMenu',
						canInteract = function()
							if QBCore.Functions.GetPlayerData().job.name == v.job and QBCore.Functions.GetPlayerData().job.grade.level >= v.rank or v.job == 1 then return true end end
					},
				}
			if Config.oxtarget then 
				exports.ox_target:addBoxZone({coords = v.loc, size = vec3(v.w, v.l,v.height * 2),debug = Config.Debug,rotation = v.rot, options = options,})
			else
				exports['qb-target']:AddBoxZone('vapecraft'..k, vector3(v.loc.x, v.loc.y, v.loc.z), v.l, v.w, { name = 'vapecraft'..k,minZ = v.loc.z - v.height, maxZ = v.loc.z + v.height, debugPoly = Config.Debug, heading = v.rot}, {options = options, distance = 2.0})
			end
		end
	end
end)


RegisterNetEvent('md-vape:client:OpenShop', function(data)
	local ShopMenu = {}
	
	for k, v in pairs (Config.ingridients) do 
		ShopMenu[#ShopMenu + 1] = {
			icon = GetImage(k), description = '$'.. v.price, title = GetLabel(k), event = "md-vape:client:BuyShops",
				args = { item = k, cost = v.price, amount = v.amount, loc = data.num}
			}
		
		lib.registerContext({id = 'vapeingridients',title = "Ingridient Store", options = ShopMenu})
	end
lib.showContext('vapeingridients')
end)

RegisterNetEvent('md-vape:client:CraftMenu', function(data)
	local Craft = {}
	
	for k, v in pairs (Config.Recipes) do 
		Craft[#Craft + 1] = {
			   	icon = GetImage(k), description =  v.text, title = GetLabel(k), event = "md-vape:client:Craft",
				args = { 	item = k, 	table = v.recipe, 	loc = data.num }
			}
		lib.registerContext({id = 'vapecraft',title = "Vape Making", options = Craft})
	end
	lib.showContext('vapecraft')
end)


RegisterNetEvent('md-vape:client:BuyShops', function(data)
if Config.ingridients[data.item] == nil then print'hmm thats weird, how did you get here with it not sending the right data ;) log created' return end
local input = lib.inputDialog('Puchase ' .. GetLabel(data.item), {
	{type = 'number', label = 'How Many Do You Want', description = 'Price: $' .. data.cost , min = 1, max = data.amount, required = true},
})
if input[1] == nil then return end
TriggerServerEvent('md-vape:server:purchase', input[1], data)
end)

RegisterNetEvent('md-vape:client:Craft', function(data)
	if Config.Recipes[data.item] == nil then print'hmm thats weird, how did you get here with it not sending the right data ;) log created' return end
	if not progressbar('Making ' .. GetLabel(data.item).. '!', 4000, 'uncuff') then return end
	TriggerServerEvent('md-vape:server:craft', data)
end)

RegisterNetEvent('md-vape:client:Consume', function(effect, stat, val, item)
if effect == '' or effect == "" or effect == nil then effect = 1 end
if stat == '' or stat == "" or stat == nil then stat = 1 end
if val == '' or val == "" or val == nil then val = 1 end

if not progressbar('Using Your '.. GetLabel(item) .. '!', 4000, Config.Consume[item]['emote'] or 'smoke') then return end 
	if  stat == 'thirst' or stat == 'hunger' then 
		TriggerServerEvent('md-vape:server:updatestatus', stat, val)
	elseif stat == 'health' then 
		local health = GetEntityHealth(PlayerPedId()) 
		SetEntityHealth(PlayerPedId(), health + stat) 
	elseif stat == 'stress' then 
		TriggerServerEvent('md-vape:server:updatestatus', stat, val)
	end
	if effect == 'alien' then 
		AlienEffect()
	elseif effect == 'xtc' then
		EcstasyEffect()
	elseif effect == 'trevor' then 
		TrevorEffect()
	elseif effect == 'meth' then
		MethBagEffect()
	elseif effect == 'coke' then
		CokeBaggyEffect()
	else

	end
end)

RegisterNetEvent('md-vape:client:OpenStash', function(data)
	if Config.OxInv then
		exports.ox_inventory:openInventory('stash', {id = 'VapeStash_'..data.num})
	else	
		if Config.QBNewInv then 
			TriggerServerEvent('md-vape:server:OpenStashQB', data)
		else
			TriggerEvent("inventory:client:SetCurrentStash", 'VapeStash_'..data.num)
			TriggerServerEvent("inventory:server:OpenInventory", "stash", 'VapeStash_'..data.num, {
				maxweight = Config.StashLoc[data.num].weight,
				slots = Config.StashLoc[data.num].slots,
			})
		end
	end	
end)
RegisterNetEvent('md-vape:client:OpenTray', function(data)
	if Config.OxInv then
		exports.ox_inventory:openInventory('stash', {id = 'Vape_Tray'..data.num})
	else	
		if Config.QBNewInv then 
			TriggerServerEvent('md-vape:server:OpenTrayQB', data)
		else
			TriggerEvent("inventory:client:SetCurrentStash", 'Vape_Tray'..data.num)
			TriggerServerEvent("inventory:server:OpenInventory", "stash", 'Vape_Tray'..data.num, {
				maxweight = Config.Tray[data.num].weight,
				slots = Config.Tray[data.num].slots,
			})
		end
	end	
end)
