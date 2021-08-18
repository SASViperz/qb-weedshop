--########################################## We Love You Kakarot#2550 ##########################################--
--##############################################################################################################--
--###################################### Event Without Chance Of Seed ##########################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

--[[RegisterServerEvent('qb-weedshop:server:OGKushPick')
AddEventHandler('qb-weedshop:server:OGKushPick', function(Area, Coral, Bool)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("weed_og_kush", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_og_kush"], "add")
end)]]

RegisterServerEvent('qb-weedshop:server:add:to:register')
AddEventHandler('qb-weedshop:server:add:to:register', function(Price, Note)
    local RandomID = math.random(1111,9999)
    Config.ActivePayments[RandomID] = {['Price'] = Price, ['Note'] = Note}
    TriggerClientEvent('qb-weedshop:client:sync:register', -1, Config.ActivePayments)
end)

RegisterServerEvent('qb-weedshop:server:pay:receipt')
AddEventHandler('qb-weedshop:server:pay:receipt', function(Price, Note, Id)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveMoney('cash', Price, 'burger-shot') then
        if Config.ActivePayments[tonumber(Id)] ~= nil then
            Config.ActivePayments[tonumber(Id)] = nil
            
            TriggerEvent('qb-weedshop:give:receipt:to:workers', Note, Price)
            TriggerClientEvent('qb-weedshop:client:sync:register', -1, Config.ActivePayments)
            print(Price)
            TriggerEvent("qb-bossmenu:server:addAccountMoney", "weedshop", Price)

            TriggerClientEvent('QBCore:Notify', src, 'You paid $'..Price..'.' , "success")
        else
            TriggerClientEvent('QBCore:Notify', src, 'Error..', "error")
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'You don\'t have enough cash.', "error")
    end
end)

--##############################################################################################################--
--############################################### OGKush Picking ###############################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent('qb-weedshop:server:OGKushPick')
AddEventHandler('qb-weedshop:server:OGKushPick', function(Area, Coral, Bool)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local random = math.random(1,10)
    if random <= 5 then
        Player.Functions.AddItem("weed_og_kush_seed", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_og_kush_seed"], "add")
   else
    Player.Functions.AddItem("weed_og_kush", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_og_kush"], "add")
   end
end)

--##############################################################################################################--
--############################################# Purple-Haze Picking ############################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent('qb-weedshop:server:PurpleHazePick')
AddEventHandler('qb-weedshop:server:PurpleHazePick', function(Area, Coral, Bool)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local random = math.random(1,10)
    if random <= 5 then
        Player.Functions.AddItem("weed_purple_haze_seed", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_purple_haze_seed"], "add")
   else
    Player.Functions.AddItem("weed_purple_haze", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_purple_haze"], "add")
   end
end)

--##############################################################################################################--
--################################################# AK47 Picking ###############################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent('qb-weedshop:server:AK47Pick')
AddEventHandler('qb-weedshop:server:AK47Pick', function(Area, Coral, Bool)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local random = math.random(1,10)
    if random <= 5 then
        Player.Functions.AddItem("weed_ak47_seed", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_ak47_seed"], "add")
   else
    Player.Functions.AddItem("weed_ak47", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_ak47"], "add")
   end
end)

--##############################################################################################################--
--################################################# Skunk Picking ##############################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent('qb-weedshop:server:SkunkPick')
AddEventHandler('qb-weedshop:server:SkunkPick', function(Area, Coral, Bool)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local random = math.random(1,10)
    if random <= 5 then
        Player.Functions.AddItem("weed_skunk_seed", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_skunk_seed"], "add")
   else
    Player.Functions.AddItem("weed_skunk", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_skunk"], "add")
   end
end)

--##############################################################################################################--
--########################################### White-Widow Picking ##############################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent('qb-weedshop:server:WhiteWidowPick')
AddEventHandler('qb-weedshop:server:WhiteWidowPick', function(Area, Coral, Bool)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local random = math.random(1,10)
    if random <= 5 then
        Player.Functions.AddItem("weed_white_widow_seed", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_white_widow_seed"], "add")
   else
    Player.Functions.AddItem("weed_white_widow", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_white_widow"], "add")
   end
end)

--##############################################################################################################--
--############################################# Amnesia Picking ################################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent('qb-weedshop:server:AmnesiaPick')
AddEventHandler('qb-weedshop:server:AmnesiaPick', function(Area, Coral, Bool)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local random = math.random(1,10)
    if random <= 5 then
        Player.Functions.AddItem("weed_amnesia_seed", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_amnesia_seed"], "add")
   else
    Player.Functions.AddItem("weed_amnesia", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_amnesia"], "add")
   end
end)

--##############################################################################################################--
--################################################## OGKush ####################################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent("qb-weedshop:server:OGKushh")
AddEventHandler("qb-weedshop:server:OGKushh", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rolling_paper = Player.Functions.GetItemByName("rolling_paper")
    local weed_og_kush = Player.Functions.GetItemByName("weed_og_kush")
    if rolling_paper ~= nil and weed_og_kush ~= nil then
            Player.Functions.RemoveItem("rolling_paper", 1)
            Player.Functions.RemoveItem("weed_og_kush", 1)
            Player.Functions.AddItem("OG_Kush", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["OG_Kush"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'Rolled Up OG-Kush Joint.')
    else
        TriggerClientEvent("QBCore:Notify", src, "Missing something!", "error")
    end
end)

--##############################################################################################################--
--################################################ Purple-Haze #################################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent("qb-weedshop:server:PurpleHaze")
AddEventHandler("qb-weedshop:server:PurpleHaze", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rolling_paper = Player.Functions.GetItemByName("rolling_paper")
    local weed_purple_haze = Player.Functions.GetItemByName("weed_purple_haze")
    if rolling_paper ~= nil and weed_purple_haze ~= nil then
            Player.Functions.RemoveItem("rolling_paper", 2)
            Player.Functions.RemoveItem("weed_purple_haze", 1)
            Player.Functions.AddItem("purple_haze", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["purple_haze"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'Rolled Up Purple-Haze Joint.')
    else
        TriggerClientEvent("QBCore:Notify", src, "Missing something!", "error")
    end
end)

--##############################################################################################################--
--################################################## AK47 ######################################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent("qb-weedshop:server:AK47")
AddEventHandler("qb-weedshop:server:AK47", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rolling_paper = Player.Functions.GetItemByName("rolling_paper")
    local weed_ak47 = Player.Functions.GetItemByName("weed_ak47")
    if rolling_paper ~= nil and weed_ak47 ~= nil then
            Player.Functions.RemoveItem("rolling_paper", 2)
            Player.Functions.RemoveItem("weed_ak47", 1)
            Player.Functions.AddItem("ak47", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["ak47"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'Rolled Up AK47 Joint.')
    else
        TriggerClientEvent("QBCore:Notify", src, "Missing something!", "error")
    end
end)

--##############################################################################################################--
--################################################## Skunk #####################################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent("qb-weedshop:server:Skunk")
AddEventHandler("qb-weedshop:server:Skunk", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rolling_paper = Player.Functions.GetItemByName("rolling_paper")
    local weed_skunk = Player.Functions.GetItemByName("weed_skunk")
    if rolling_paper ~= nil and weed_skunk ~= nil then
            Player.Functions.RemoveItem("rolling_paper", 2)
            Player.Functions.RemoveItem("weed_skunk", 1)
            Player.Functions.AddItem("skunk", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["skunk"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'Rolled Up Skunk Joint.')
    else
        TriggerClientEvent("QBCore:Notify", src, "Missing something!", "error")
    end
end)

--##############################################################################################################--
--############################################### White-Widow ##################################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent("qb-weedshop:server:WhiteWidow")
AddEventHandler("qb-weedshop:server:WhiteWidow", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rolling_paper = Player.Functions.GetItemByName("rolling_paper")
    local weed_white_widow = Player.Functions.GetItemByName("weed_white_widow")
    if rolling_paper ~= nil and weed_white_widow ~= nil then
            Player.Functions.RemoveItem("rolling_paper", 2)
            Player.Functions.RemoveItem("weed_white_widow", 1)
            Player.Functions.AddItem("white_widow", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["white_widow"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'Rolled Up White-Widow Joint.')
    else
        TriggerClientEvent("QBCore:Notify", src, "Missing something!", "error")
    end
end)

--##############################################################################################################--
--################################################# Amnesia ####################################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--

RegisterServerEvent("qb-weedshop:server:Amnesia")
AddEventHandler("qb-weedshop:server:Amnesia", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rolling_paper = Player.Functions.GetItemByName("rolling_paper")
    local weed_amnesia = Player.Functions.GetItemByName("weed_amnesia")
    if rolling_paper ~= nil and weed_amnesia ~= nil then
            Player.Functions.RemoveItem("rolling_paper", 2)
            Player.Functions.RemoveItem("weed_amnesia", 1)
            Player.Functions.AddItem("amnesia", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["amnesia"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'Rolled Up Amnesia Joint.')
    else
        TriggerClientEvent("QBCore:Notify", src, "Missing something!", "error")
    end
end)

--##############################################################################################################--
--############################################## Sorry I Was Bored #############################################--
--################################################## Pluto ❤ ##################################################--
--##############################################################################################################--