local QBCore = exports['qb-core']:GetCoreObject()


CreateThread(function()
	if Config.OxInv then
		for k, v in pairs (Config.StashLoc) do 
			if v.weight == nil then v.weight = Config.Defaultweight end
			if v.slots == nil then v.slots = Config.Defaultslot end
			local stash = {
			id = 'VapeStash_'..k,
			slots = v.slots,
			weight = v.weight,
			}
			exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight)
		end
		for k, v in pairs (Config.Tray) do 
			if v.weight == nil then v.weight = Config.Defaultweight end
			if v.slots == nil then v.slots = Config.Defaultslot end
			local stash = {
			id = 'Vape_Tray'..k,
			slots = v.slots,
			weight = v.weight,
			}
			exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight)
		end
	end
end)
	

for k, v in pairs (Config.Consume) do 
	QBCore.Functions.CreateUseableItem(k, function(source, item)
		local src = source
		local Player = QBCore.Functions.GetPlayer(src)
		if Config.SingleUse then 
			Player.Functions.RemoveItem(k, 1)
			TriggerClientEvent('md-vape:client:Consume', src, v.effect, v.stat, v.statval, k)
		else
			local math = math.random(1,100)
			if math <= Config.RemoveChance then 
				Player.Functions.RemoveItem(k, 1)
			end
			TriggerClientEvent('md-vape:client:Consume', src, v.effect, v.stat, v.statval, k)
		end
	end)
end
RegisterNetEvent('md-vape:server:updatestatus', function(stat, statval)
    local Player = QBCore.Functions.GetPlayer(source)
    if stat == "thirst" then
        local value = Player.PlayerData.metadata.thirst + statval
        Player.Functions.SetMetaData('thirst', value)
        TriggerClientEvent('hud:client:UpdateNeeds', source, Player.PlayerData.metadata.hunger, value)
    elseif stat == "hunger" then
        local value = Player.PlayerData.metadata.hunger + statval
        Player.Functions.SetMetaData('hunger', value)
        TriggerClientEvent('hud:client:UpdateNeeds', source, Player.PlayerData.metadata.thirst, value)
    elseif stat == "stress" then 
        local value = Player.PlayerData.metadata.stress - statval
        Player.Functions.SetMetaData('stress', value)
        TriggerClientEvent('hud:client:UpdateStress', source, Player.PlayerData.metadata.stress, value)
    elseif stat == "armor" then
        local value = Player.PlayerData.metadata.armor + statval
        TriggerEvent('hospital:server:SetArmor', value) 
        TriggerClientEvent('hud:client:UpdateStress', source, Player.PlayerData.metadata.armor, value)
    else
    end
end)
RegisterServerEvent('md-vape:server:purchase', function(amount, data)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local playerPed = GetPlayerPed(source)
	if CheckDist(source, playerPed, Config.StoreLoc[data.loc]['loc']) then return end
	if Config.ingridients[data.item] == nil then return end
	if Config.ingridients[data.item]['price'] ~= data.cost then return end
	if Player.Functions.RemoveMoney('bank', amount * data.cost) then 
		AddItem(data.item, amount)
	end
end)

local function checkTable(player, table)
	local need = 0
	local have = 0
	for k, v in pairs (table) do 
		need = need + 1
		if Itemcheck(player, k, v, 'true') then have = have + 1  end
	end
	if need == have then
		return true
	else
	end
end

RegisterServerEvent('md-vape:server:craft', function(data)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local playerPed = GetPlayerPed(source)
	if CheckDist(source, playerPed, Config.Craft[data.loc]['loc']) then return end
	if Config.Recipes[data.item] == nil then return end
	if not checkTable(Player, data.table) then return end
	for k, v in pairs (data.table) do 
		RemoveItem(k, v)
	end
	AddItem(data.item, 1)
	
end)

RegisterServerEvent('md-vape:server:OpenStashQB', function(data)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local stashdata = {
		label = Config.StashLoc[data.num]['job'] .. '-' .. data.num, maxweight = Config.StashLoc[data.num]['weight'], slots = Config.StashLoc[data.num]['slots']
	}

	exports['qb-inventory']:OpenInventory(source, Config.StashLoc[data.num]['job'] .. '-' .. data.num, stashdata)
end)

RegisterServerEvent('md-vape:server:OpenTrayQB', function(data)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local stashdata = {
		label = 'VapeTray' .. data.num, maxweight = Config.Tray[data.num]['weight'], slots = Config.Tray[data.num]['slots']
	}

	exports['qb-inventory']:OpenInventory(source, 'VapeTray' .. data.num, stashdata)
end)