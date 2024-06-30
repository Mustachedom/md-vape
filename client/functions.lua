local QBCore = exports['qb-core']:GetCoreObject()

local progressbartype = Config.progressbartype 
local minigametype = Config.minigametype
local notifytype = Config.Notify 
local dispatch = Config.Dispatch

function progressbar(text, time, anim)
	TriggerEvent('animations:client:EmoteCommandStart', {anim}) 
	if progressbartype == 'oxbar' then 
	  if lib.progressBar({ duration = time, label = text, useWhileDead = false, canCancel = true, disable = { car = true, move = true},}) then 
		TriggerEvent('animations:client:EmoteCommandStart', {"c"}) 
		if GetResourceState('scully_emotemenu') == 'started' then
			exports.scully_emotemenu:cancelEmote()
		end
		return true
	  end	 
	elseif progressbartype == 'oxcir' then
	  if lib.progressCircle({ duration = time, label = text, useWhileDead = false, canCancel = true, position = 'bottom', disable = { car = true,move = true},}) then 
		TriggerEvent('animations:client:EmoteCommandStart', {"c"}) 
		if GetResourceState('scully_emotemenu') == 'started' then
			exports.scully_emotemenu:cancelEmote()
		end	
		return true
	  end
	elseif progressbartype == 'qb' then
	local test = false
		local cancelled = false
	  QBCore.Functions.Progressbar("drink_something", text, time, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, disableInventory = true,
	  }, {}, {}, {}, function()-- Done
		test = true
		TriggerEvent('animations:client:EmoteCommandStart', {"c"}) 
		if GetResourceState('scully_emotemenu') == 'started' then
			exports.scully_emotemenu:cancelEmote()
		end
	  end, function()
		cancelled = true
		if GetResourceState('scully_emotemenu') == 'started' then
			exports.scully_emotemenu:cancelEmote()
		end
	end)
	  repeat 
		Wait(100)
	  until cancelled or test
	  if test then return true end
	else
		print"dude, it literally tells you what you need to set it as in the config"
	end	  
  end

function minigame(num1, num2)
    local check
	if minigametype == 'ps' then
    	exports['ps-ui']:Circle(function(success)
        	check = success
    	end, num1, num2) 
    	return check
	elseif minigametype == 'ox' then
		num1 = 'easy'
		if num2 <= 6 then num2 = 'hard' elseif num2 >= 7 and num2 <= 12 then num2 = 'medium' else num2 = 'easy' end
		local success = lib.skillCheck({num1, num2}, {'1', '2', '3', '4'})
		return success 
    elseif minigametype == 'none' then
		return true
	else	
		
        print"dude, it literally tells you what you need to set it as in the config"
    end
end


 function Notify(text, type)
	if notifytype =='ox' then
	  lib.notify({title = text, type = type})
        elseif notifytype == 'qb' then
	  QBCore.Functions.Notify(text, type)
	elseif notifytype == 'okok' then
	  exports['okokNotify']:Alert('', text, 4000, type, false)
	else 
       	print"dude, it literally tells you what you need to set it as in the config"
    	end   
  end

  function ItemCheck(item)
	local success 
	if GetResourceState('ox_inventory') == 'started' then
		if exports.ox_inventory:GetItemCount(item) >= 1 then return true else Notify('You Need ' .. QBCore.Shared.Items[item].label .. " !", 'error') end
	else
		if QBCore.Shared.Items[item] == nil then print("There Is No " .. item .. " In Your QB Items.lua") return end
		if QBCore.Functions.HasItem(item) then success = item return success else Notify('You Need ' .. QBCore.Shared.Items[item].label .. " !", 'error') end
	end
	end
function Email(sender, subject, message)
	if Config.Phone == 'yflip' then
		local receiver = GetPlayerServerId(PlayerId())
		local insertId, received = exports["yflip-phone"]:SendMail({
			title = subject,
			sender = sender,
			senderDisplayName = sender,
			content = message,
			
		}, 'phoneNumber', receiver)
	elseif Config.Phone == 'qs' then
		TriggerServerEvent('qs-smartphone:server:sendNewMail', {
   		sender = sender,
   		subject = subject,
    		message = message,
    		button = {}
		})
	else
		TriggerServerEvent('qb-phone:server:sendNewMail', {
			sender = sender,
			subject = subject,
			message = message,
		})
	end
end	  

function PoliceCall(chance)
	local math = math.random(1,100)
	if math <= chance then
		if dispatch == 'ps' then 
			exports['ps-dispatch']:DrugSale()
		elseif dispatch == 'cd' then
			local data = exports['cd_dispatch']:GetPlayerInfo()
			TriggerServerEvent('cd_dispatch:AddNotification', {
				job_table = {'police', }, 
				coords = data.coords,
				title = '420-69 Drug Sale',
				message = 'A '..data.sex..' robbing a store at '..data.street, 
				flash = 0,
				unique_id = data.unique_id,
				sound = 1,
				blip = {
					sprite = 431, 
					scale = 1.2, 
					colour = 3,
					flashes = false, 
					text = '420-69 Drug Sale',
					time = 5,
					radius = 0,
				}
			})
		elseif	dispatch == 'core' then
			exports['core_dispatch']:addCall("420-69", "Drugs Are Being Sold", {
				{icon="fa-ruler", info="4.5 MILES"},
				}, {GetEntityCoords(PlayerPedId())}, "police", 3000, 11, 5 )
		elseif dispatch == 'aty' then 
			exports["aty_dispatch"]:SendDispatch('Drug Sale', '420-69', 40, {'police'})
		elseif dispatch == 'qs' then
			exports['qs-dispatch']:DrugSale()
		else
			print('Congrats, You Choose 0 of the options :)')	
		end
	else
	end
end

function GetCops(number)
	if number == 0 then return true end
	local need = false
	local nope = false
	QBCore.Functions.TriggerCallback('md-drugs:server:GetCoppers', function(amount)
		if amount >= number then need = true else Notify('You Need '.. number - amount .. ' More Cops To Do This', 'error') nope = true end
	end)
	repeat 
		Wait(100)
	until need or nope
	if need then return true end
end


function GetImage(img)
	if GetResourceState('ox_inventory') == 'started' then
		local Items = exports['ox_inventory']:Items()
		if Items[img]['client']['image'] == nil then 
			return Items[img]
		else
			return Items[img]['client']['image']
		end
	elseif GetResourceState('ps-inventory') == 'started' then
		return "nui://ps-inventory/html/images/".. QBCore.Shared.Items[img].image
	elseif GetResourceState('lj-inventory') == 'started' then
		return "nui://lj-inventory/html/images/".. QBCore.Shared.Items[img].image
	elseif GetResourceState('qb-inventory') == 'started' then
		return "nui://qb-inventory/html/images/".. QBCore.Shared.Items[img].image
	elseif GetResourceState('qs-inventory') == 'started' then
		return "nui://qs-inventory/html/img/".. QBCore.Shared.Items[img].image
	elseif GetResourceState('origen_inventory') == 'started' then
		return "nui://origen_inventory/html/img/".. QBCore.Shared.Items[img].image
	elseif GetResourceState('core_inventory') == 'started' then
		return "nui://core_inventory/html/img/".. QBCore.Shared.Items[img].image
	end
end

function GetLabel(label)
	if GetResourceState('ox_inventory') == 'started' then
		local Items = exports['ox_inventory']:Items()
			return Items[label]['label']
	else 
		return QBCore.Shared.Items[label].label
	end
end

function EcstasyEffect()
    local startStamina = 50
    SetFlash(0, 0, 500, 20000, 500)
    while startStamina > 0 do
        Wait(1000)
        startStamina = startStamina - 1
        RestorePlayerStamina(PlayerId(), 1.0)
        if math.random(1, 100) < 51 then
            SetFlash(0, 0, 500, 7000, 500)
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
        end
    end
    if IsPedRunning(PlayerPedId()) then
        SetPedToRagdoll(PlayerPedId(), math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
    end

    startStamina = 0
end


function MethBagEffect()
    local startStamina = 30
    TrevorEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
    while startStamina > 0 do
        Wait(1000)
        if math.random(5, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(5, 100) < 51 then
            TrevorEffect()
        end
    end
    startStamina = 0
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

function TrevorEffect()
    StartScreenEffect("DrugsTrevorClownsFightIn", 3.0, 0)
    Wait(3000)
    StartScreenEffect("DrugsTrevorClownsFight", 3.0, 0)
    Wait(3000)
	StartScreenEffect("DrugsTrevorClownsFightOut", 3.0, 0)
	StopScreenEffect("DrugsTrevorClownsFight")
	StopScreenEffect("DrugsTrevorClownsFightIn")
	StopScreenEffect("DrugsTrevorClownsFightOut")
end


function CokeBaggyEffect()
    local startStamina = 20
    local ped = PlayerPedId()
    AlienEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.1)
    while startStamina > 0 do
        Wait(1000)
        if math.random(1, 100) < 20 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(1, 100) < 10 and IsPedRunning(ped) then
            SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
        end
        if math.random(1, 300) < 10 then
            AlienEffect()
            Wait(math.random(3000, 6000))
        end
    end
    if IsPedRunning(ped) then
        SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, 0, 0, 0)
    end

    startStamina = 0
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

function AlienEffect()
    StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
    Wait(math.random(5000, 8000))
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Wait(math.random(5000, 8000))
    StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
    StopScreenEffect("DrugsMichaelAliensFightIn")
    StopScreenEffect("DrugsMichaelAliensFight")
    StopScreenEffect("DrugsMichaelAliensFightOut")
end