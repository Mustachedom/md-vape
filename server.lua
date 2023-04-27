local QBCore = exports['qb-core']:GetCoreObject()

---- crafting
RegisterNetEvent("md-vape:server:feistyvape")
AddEventHandler("md-vape:server:feistyvape", function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	
	if 	Player.Functions.RemoveItem("vegetable_glycol", 1) then
		if 	Player.Functions.RemoveItem("propelyne_glycol", 1) then
			if Player.Functions.RemoveItem("nicotine", 1) then
				Player.Functions.AddItem("feistyvape", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['vegetable_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['propelyne_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['nicotine'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['feistyvape'], "add", 1)
			else
			TriggerClientEvent('QBCore:Notify', src, "you dont have nicotine", "error")
			end
		else 
		TriggerClientEvent('QBCore:Notify', src, "you dont have propelyne_glycol", "error")
		end
	else
	TriggerClientEvent('QBCore:Notify', src, "you dont have vegetable_glycol", "error")
	end
end)

RegisterNetEvent("md-vape:server:brums_vape")
AddEventHandler("md-vape:server:brums_vape", function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	
	if 	Player.Functions.RemoveItem("vegetable_glycol", 1) then
		if 	Player.Functions.RemoveItem("propelyne_glycol", 1) then
			if Player.Functions.RemoveItem("nicotine", 1) then
				Player.Functions.AddItem("brums_vape", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['vegetable_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['propelyne_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['nicotine'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['brums_vape'], "add", 1)
			else
			TriggerClientEvent('QBCore:Notify', src, "you dont have nicotine", "error")
			end
		else 
		TriggerClientEvent('QBCore:Notify', src, "you dont have propelyne_glycol", "error")
		end
	else
	TriggerClientEvent('QBCore:Notify', src, "you dont have vegetable_glycol", "error")
	end
end)


RegisterNetEvent("md-vape:server:apple_vape")
AddEventHandler("md-vape:server:apple_vape", function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	
	if 	Player.Functions.RemoveItem("vegetable_glycol", 1) then
		if 	Player.Functions.RemoveItem("propelyne_glycol", 1) then
			if Player.Functions.RemoveItem("nicotine", 1) then
				Player.Functions.AddItem("apple_vape", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['vegetable_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['propelyne_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['nicotine'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['apple_vape'], "add", 1)
			else
			TriggerClientEvent('QBCore:Notify', src, "you dont have nicotine", "error")
			end
		else 
		TriggerClientEvent('QBCore:Notify', src, "you dont have propelyne_glycol", "error")
		end
	else
	TriggerClientEvent('QBCore:Notify', src, "you dont have vegetable_glycol", "error")
	end
end)

RegisterNetEvent("md-vape:server:watermelon_vape")
AddEventHandler("md-vape:server:watermelon_vape", function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	
	if 	Player.Functions.RemoveItem("vegetable_glycol", 1) then
		if 	Player.Functions.RemoveItem("propelyne_glycol", 1) then
			if Player.Functions.RemoveItem("nicotine", 1) then
				Player.Functions.AddItem("watermelon_vape", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['vegetable_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['propelyne_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['nicotine'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['watermelon_vape'], "add", 1)
			else
			TriggerClientEvent('QBCore:Notify', src, "you dont have nicotine", "error")
			end
		else 
		TriggerClientEvent('QBCore:Notify', src, "you dont have propelyne_glycol", "error")
		end
	else
	TriggerClientEvent('QBCore:Notify', src, "you dont have vegetable_glycol", "error")
	end
end)

RegisterNetEvent("md-vape:server:yellow_vape")
AddEventHandler("md-vape:server:yellow_vape", function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	
	if 	Player.Functions.RemoveItem("vegetable_glycol", 1) then
		if 	Player.Functions.RemoveItem("propelyne_glycol", 1) then
			if Player.Functions.RemoveItem("nicotine", 1) then
				Player.Functions.AddItem("yellow_vape", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['vegetable_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['propelyne_glycol'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['nicotine'], "remove", 1)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['yellow_vape'], "add", 1)
			else
			TriggerClientEvent('QBCore:Notify', src, "you dont have nicotine", "error")
			end
		else 
		TriggerClientEvent('QBCore:Notify', src, "you dont have propelyne_glycol", "error")
		end
	else
	TriggerClientEvent('QBCore:Notify', src, "you dont have vegetable_glycol", "error")
	end
end)
---------------- usuable items

QBCore.Functions.CreateUseableItem("feistyvape", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	
	if TriggerClientEvent("md-vape:client:feistyvape", src) then
		Player.Functions.RemoveItem("feistyvape", 1)
    end
end)

QBCore.Functions.CreateUseableItem("brums_vape", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	
	if TriggerClientEvent("md-vape:client:brums_vape", src) then
		Player.Functions.RemoveItem("brums_vape", 1)
    end
end)

QBCore.Functions.CreateUseableItem("apple_vape", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	
	if TriggerClientEvent("md-vape:client:apple_vape", src) then
		Player.Functions.RemoveItem("apple_vape", 1)
    end
end)

QBCore.Functions.CreateUseableItem("watermelon_vape", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if TriggerClientEvent("md-vape:client:watermelon_vape", src) then
		Player.Functions.RemoveItem("watermelon_vape", 1)
    end
end)

QBCore.Functions.CreateUseableItem("yellow_vape", function(source, item)
   local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if TriggerClientEvent("md-vape:client:astro", src) then
		Player.Functions.RemoveItem("astro", 1)
    end
end)


