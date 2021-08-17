local CurrentWorkObject = {}
local LoggedIn = false
local InRange = false

Citizen.CreateThread(function()
  while true do
    local sleep = 2000
      
          local PlayerCoords = GetEntityCoords(PlayerPedId())
          local Distance = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, -1195.1990966797,-893.78881835938,13.99524307251, true)
          local craft = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 375.8447,-824.7562,29.18074, true)
          local duty = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 381.7812,-819.0594,29.51204, true)
          local storage = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 374.4853, -828.501, 29.302, true)
          local OGKushPlant1 = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 383.2511, -813.894, 29.304, true)
          local OGKushPlant2 = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 382.3458, -813.890, 29.304, true)
          local PurpleHazePlant1 = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 380.4015, -813.826, 29.304, true)
          local PurpleHazePlant2 = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 379.3347, -813.746, 29.304, true)
          local AK47Plant1 = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 378.1763, -813.721, 29.304, true)
          local AK47Plant2 = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 378.2573, -811.944, 29.304, true)
          local SkunkPlant1 = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 379.3203, -811.953, 29.304, true)
          local SkunkPlant2 = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 380.5997, -811.956, 29.304, true)
          local WhiteWidowPlant = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 381.7623, -811.963, 29.304, true)
          local AmnesiaPlant = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 382.8617, -811.961, 29.304, true)
          InRange = false
            if craft < 10 then sleep = 2 end
            if craft < 1.2 then
                InRange = true
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(375.8447,-824.7562,29.18074 ,'~g~G~w~ - Craft Joints')
                    if IsControlJustPressed(0, 47) then -- G
                        TriggerEvent("craftjoint")
                    end
                  end
            end
            if duty < 10 then sleep = 2 end
            if duty < 1.0 then
                InRange = true
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' then
                QBCore.Functions.DrawText3D(381.7812,-819.0594,29.51204 ,'~g~G~w~ - Clock In/Out')
                    if IsControlJustPressed(0, 47) then -- G
                        TriggerEvent("weedclock")
                    end
                  end
            end
            if storage < 10 then sleep = 2 end
            if storage < 1.0 then
                InRange = true
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(374.4853, -828.501, 29.302 ,'~g~G~w~ - Weed Shop Storage')
                    if IsControlJustPressed(0, 47) then -- G
                        TriggerEvent("qb-weedshop:client:open:cold:storage")
                    end
                  end
            end
            if OGKushPlant1 < 10 then sleep = 2 end
            if OGKushPlant1 < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(383.2511, -813.894, 29.304 ,'~g~G~w~ - Pick OG-Kush plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking OG-Kush marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:OGKushPick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if OGKushPlant2 < 10 then sleep = 2 end
            if OGKushPlant2 < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(382.3458, -813.890, 29.304 ,'~g~G~w~ - Pick OG-Kush plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking OG-Kush marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:OGKushPick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if PurpleHazePlant1 < 10 then sleep = 2 end
            if PurpleHazePlant1 < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(380.4015, -813.826, 29.304 ,'~g~G~w~ - Pick Purple-Haze plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking Purple-Haze marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:PurpleHazePick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if PurpleHazePlant2 < 10 then sleep = 2 end
            if PurpleHazePlant2 < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(379.3347, -813.746, 29.304 ,'~g~G~w~ - Pick Purple-Haze plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking Purple-Haze marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:PurpleHazePick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if AK47Plant1 < 10 then sleep = 2 end
            if AK47Plant1 < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(378.1763, -813.721, 29.304 ,'~g~G~w~ - Pick AK47 plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking AK47 marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:AK47Pick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if AK47Plant2 < 10 then sleep = 2 end
            if AK47Plant2 < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(378.2573, -811.944, 29.304 ,'~g~G~w~ - Pick AK47 plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking AK47 marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:AK47Pick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if SkunkPlant1 < 10 then sleep = 2 end
            if SkunkPlant1 < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(379.3203, -811.953, 29.304 ,'~g~G~w~ - Pick Skunk plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking Skunk marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:SkunkPick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if SkunkPlant2 < 10 then sleep = 2 end
            if SkunkPlant2 < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(380.5997, -811.956, 29.304 ,'~g~G~w~ - Pick Skunk plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking Skunk marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:SkunkPick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if WhiteWidowPlant < 10 then sleep = 2 end
            if WhiteWidowPlant < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(381.7623, -811.963, 29.304 ,'~g~G~w~ - Pick White-Widow plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking White-Widow marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:WhiteWidowPick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
            if AmnesiaPlant < 10 then sleep = 2 end
            if AmnesiaPlant < 0.4 then
                InRange = true
                local playerPed = PlayerPedId()
                if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
                QBCore.Functions.DrawText3D(382.8617, -811.961, 29.304 ,'~g~G~w~ - Pick Amnesia plant')
                    if IsControlJustPressed(0, 47) then -- G
                      TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant')
                      QBCore.Functions.Progressbar("search_register", "Picking Amnesia marijuana..", 5500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                      }, {}, {}, {}, function() -- Done
                        ClearPedTasks(GetPlayerPed(-1))
                        TriggerServerEvent('qb-weedshop:server:AmnesiaPick')
                      end, function()
                        ClearPedTasks(GetPlayerPed(-1))
                      end) -- Cancel
                    end
                  end
            end
          Citizen.Wait(sleep)
  end
end)

------------- Context -------------

 RegisterNetEvent('weedclock')
AddEventHandler('weedclock', function()
  TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "| Sign In / Off |",
            txt = ""
        },
        {
            id = 2,
            header = "| Signing On/Off Duty |",
            txt = "| Use this to sign in/off |",
            params = {
                event = "ClockInWeed"
            }
        },
    })
end)

RegisterNetEvent('craftjoint')
AddEventHandler('craftjoint', function()
  TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "Joint Crafting ",
            txt = ""
        },
        {
            id = 2,
            header = "OG-Kush Joint",
            txt = "1x OG-Kush 2g | 1x Rolling Paper",
            params = {
                event = "qb-weedshop:trigger:OGKushh"
            }
        },
            {
            id = 3,
            header = "Purple-Haze Joint",
            txt = "1x Purple Haze 2g | 1x Rolling Paper",
            params = {
                event = "qb-weedshop:trigger:PurpleHaze"
            }
        },
        {
            id = 4,
            header = "AK47 Joint",
            txt = "1x AK47 2g | 1x Rolling Paper",
            params = {
                event = "qb-weedshop:trigger:AK47"
            }
        },
        {
            id = 5,
            header = "Skunk Joint",
            txt = "1x Skunk 2g | 1x Rolling Paper",
            params = {
                event = "qb-weedshop:trigger:Skunk"
            }
        },
        {
            id = 6,
            header = "White-Widow Joint",
            txt = "1x White Widow 2g | 1x Rolling Paper",
            params = {
                event = "qb-weedshop:trigger:WhiteWidow"
            }
        },
        {
          id = 7,
          header = "Amnesia Joint",
          txt = "1x Amnesia 2g | 1x Rolling Paper",
          params = {
              event = "qb-weedshop:trigger:Amnesia"
          }
      },
    })
end)

------------- Load Anim -------------

function RequestAnimationDict(AnimDict)
  RequestAnimDict(AnimDict)
  while not HasAnimDictLoaded(AnimDict) do
      Citizen.Wait(1)
  end
end

------------- Blip -------------

Citizen.CreateThread(function()
  local blip = AddBlipForCoord(377.4846, -836.813, 29.291)
  SetBlipSprite(blip, 140)
  SetBlipAsShortRange(blip, true)
  SetBlipScale(blip, 0.5)
  SetBlipColour(blip, 1)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString("Weed Dispensary")
  EndTextCommandSetBlipName(blip)
end)

------------- Events -------------

RegisterNetEvent("ClockInWeed")
 AddEventHandler("ClockInWeed", function()
     TriggerServerEvent('QBCore:ToggleDuty')
 end)

RegisterNetEvent('qb-weedshop:client:open:cold:storage')
AddEventHandler('qb-weedshop:client:open:cold:storage', function()
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "WeedShopStash", {maxweight = 1000000, slots = 20})
    TriggerEvent("inventory:client:SetCurrentStash", "WeedShopStash")
end)

------------- OGKush -------------

RegisterNetEvent("qb-weedshop:trigger:OGKushh")
AddEventHandler("qb-weedshop:trigger:OGKushh", function()
    local playerPed = PlayerPedId()
    if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
        QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
            if result then
                RequestAnimationDict("anim@amb@business@weed@weed_inspecting_high_dry@")
                TaskPlayAnim(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector" ,1.0, 1.0, -1, 16, 1, true, true, true)
                QBCore.Functions.Progressbar("search_register", "Rolling Up OG-Kush..", 7500, false, true, {
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    TriggerServerEvent('qb-weedshop:server:OGKushh')
                    TriggerEvent('inventory:client:set:busy', false)
                    StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
                end, function()
                    TriggerEvent('inventory:client:set:busy', false)
                    QBCore.Functions.Notify( "Canceled..", "error")
                    StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
                end)
            else
                QBCore.Functions.Notify('You do not have the required items!', "error")
            end
        end, "rolling_paper" and "weed_og_kush")
    end
end)

------------- Purple-Haze -------------

RegisterNetEvent("qb-weedshop:trigger:PurpleHaze")
AddEventHandler("qb-weedshop:trigger:PurpleHaze", function()
  local playerPed = PlayerPedId()
  if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
      QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
          if result then
              RequestAnimationDict("anim@amb@business@weed@weed_inspecting_high_dry@")
              TaskPlayAnim(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector" ,1.0, 1.0, -1, 16, 1, true, true, true)
              QBCore.Functions.Progressbar("search_register", "Rolling Up Purple-Haze..", 7500, false, true, {
                  disableMovement = true,
                  disableCarMovement = false,
                  disableMouse = false,
                  disableCombat = true,
              }, {}, {}, {}, function() -- Done
                  TriggerServerEvent('qb-weedshop:server:PurpleHaze')
                  TriggerEvent('inventory:client:set:busy', false)
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end, function()
                  TriggerEvent('inventory:client:set:busy', false)
                  QBCore.Functions.Notify( "Canceled..", "error")
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end)
          else
              QBCore.Functions.Notify('You do not have the required items!', "error")
          end
      end, "rolling_paper" and "weed_purple_haze")
  end
end)

------------- AK47 -------------

RegisterNetEvent("qb-weedshop:trigger:AK47")
AddEventHandler("qb-weedshop:trigger:AK47", function()
  local playerPed = PlayerPedId()
  if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
      QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
          if result then
              RequestAnimationDict("anim@amb@business@weed@weed_inspecting_high_dry@")
              TaskPlayAnim(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector" ,1.0, 1.0, -1, 16, 1, true, true, true)
              QBCore.Functions.Progressbar("search_register", "Rolling Up AK47..", 7500, false, true, {
                  disableMovement = true,
                  disableCarMovement = false,
                  disableMouse = false,
                  disableCombat = true,
              }, {}, {}, {}, function() -- Done
                  TriggerServerEvent('qb-weedshop:server:AK47')
                  TriggerEvent('inventory:client:set:busy', false)
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end, function()
                  TriggerEvent('inventory:client:set:busy', false)
                  QBCore.Functions.Notify( "Canceled..", "error")
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end)
          else
              QBCore.Functions.Notify('You do not have the required items!', "error")
          end
      end, "rolling_paper" and "weed_ak47")
  end
end)

------------- Skunk -------------

RegisterNetEvent("qb-weedshop:trigger:Skunk")
AddEventHandler("qb-weedshop:trigger:Skunk", function()
  local playerPed = PlayerPedId()
  if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
      QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
          if result then
              RequestAnimationDict("anim@amb@business@weed@weed_inspecting_high_dry@")
              TaskPlayAnim(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector" ,1.0, 1.0, -1, 16, 1, true, true, true)
              QBCore.Functions.Progressbar("search_register", "Rolling Up Skunk..", 7500, false, true, {
                  disableMovement = true,
                  disableCarMovement = false,
                  disableMouse = false,
                  disableCombat = true,
              }, {}, {}, {}, function() -- Done
                  TriggerServerEvent('qb-weedshop:server:Skunk')
                  TriggerEvent('inventory:client:set:busy', false)
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end, function()
                  TriggerEvent('inventory:client:set:busy', false)
                  QBCore.Functions.Notify( "Canceled..", "error")
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end)
          else
              QBCore.Functions.Notify('You do not have the required items!', "error")
          end
      end, "rolling_paper" and "weed_skunk")
  end
end)

------------- White-Widow -------------

RegisterNetEvent("qb-weedshop:trigger:WhiteWidow")
AddEventHandler("qb-weedshop:trigger:WhiteWidow", function()
  local playerPed = PlayerPedId()
  if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
      QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
          if result then
              RequestAnimationDict("anim@amb@business@weed@weed_inspecting_high_dry@")
              TaskPlayAnim(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector" ,1.0, 1.0, -1, 16, 1, true, true, true)
              QBCore.Functions.Progressbar("search_register", "Rolling Up White-Widow..", 7500, false, true, {
                  disableMovement = true,
                  disableCarMovement = false,
                  disableMouse = false,
                  disableCombat = true,
              }, {}, {}, {}, function() -- Done
                  TriggerServerEvent('qb-weedshop:server:WhiteWidow')
                  TriggerEvent('inventory:client:set:busy', false)
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end, function()
                  TriggerEvent('inventory:client:set:busy', false)
                  QBCore.Functions.Notify( "Canceled..", "error")
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end)
          else
              QBCore.Functions.Notify('You do not have the required items!', "error")
          end
      end, "rolling_paper" and "weed_white_widow")
  end
end)

------------- Amnesia -------------

RegisterNetEvent("qb-weedshop:trigger:Amnesia")
AddEventHandler("qb-weedshop:trigger:Amnesia", function()
  local playerPed = PlayerPedId()
  if QBCore.Functions.GetPlayerData().job.name =='weedshop' and QBCore.Functions.GetPlayerData().job.onduty then
      QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
          if result then
              RequestAnimationDict("anim@amb@business@weed@weed_inspecting_high_dry@")
              TaskPlayAnim(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector" ,1.0, 1.0, -1, 16, 1, true, true, true)
              QBCore.Functions.Progressbar("search_register", "Rolling Up Amnesia..", 7500, false, true, {
                  disableMovement = true,
                  disableCarMovement = false,
                  disableMouse = false,
                  disableCombat = true,
              }, {}, {}, {}, function() -- Done
                  TriggerServerEvent('qb-weedshop:server:Amnesia')
                  TriggerEvent('inventory:client:set:busy', false)
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end, function()
                  TriggerEvent('inventory:client:set:busy', false)
                  QBCore.Functions.Notify( "Canceled..", "error")
                  StopAnimTask(PlayerPedId(), "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
              end)
          else
              QBCore.Functions.Notify('You do not have the required items!', "error")
          end
      end, "rolling_paper" and "weed_amnesia")
  end
end)

-----------------------------------
