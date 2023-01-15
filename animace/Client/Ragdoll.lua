local leanbar = false
local ragdoll = false
local crosshands = false
local handsup = false
local mp_pointing = false
local dictanims = {
  point = "anim@mp_point",
  lean = "amb@prop_human_bum_shopping_cart@male@idle_a",
  handsup = "random@mugging3",
  crosshands = "amb@world_human_hang_out_street@female_arms_crossed@base",
}

Citizen.CreateThread(function()
  RequestAnimDict(dictanims.crosshands)
  while not HasAnimDictLoaded(dictanims.crosshands) do
    Citizen.Wait(100)
  end
  RequestAnimDict(dictanims.handsup)
  while not HasAnimDictLoaded(dictanims.handsup) do
    Citizen.Wait(100)
  end
  RequestAnimDict(dictanims.lean)
  while not HasAnimDictLoaded(dictanims.lean) do
    Citizen.Wait(100)
  end
  RequestAnimDict(dictanims.point)
  while not HasAnimDictLoaded(dictanims.point) do
      Wait(0)
  end
end)

RegisterKeyMapping('rag', '~y~[Animace]~w~ Ragdoll', 'keyboard', '')
RegisterCommand("rag", function(source, args, raw)
  if ragdoll then 
    ragdoll = false 
  else
    if not ESX.GetPlayerData().dead then 
      ragdoll = true 
      CreateThread(function()
        while ragdoll do
          Wait(0)
          SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
        end
      end)
    end
  end
end)

function crosshandsvole()
  local playerped = PlayerPedId()
	if crosshands then
		ClearPedTasks(playerped)
		crosshands = false
	else
    TaskPlayAnim(playerped, dictanims.crosshands, "base", 8.0, 8.0, -1, 51, 0, false, false, false)
		crosshands = true
	end
end

RegisterKeyMapping('crosshands', '~y~[Animace]~w~ Skřížit ruce', 'keyboard', 'G')
RegisterCommand('crosshands', function()
  crosshandsvole()
end)

RegisterKeyMapping('handsup', '~y~[Animace]~w~ Zvednout Ruce', 'keyboard', 'X')
RegisterCommand('handsup', function()
  local ped = PlayerPedId()
  if not handsup then 
    handsup = true
    TaskPlayAnim(ped, dictanims.handsup, "handsup_standing_base", 8.0, 8.0, -1, 51, 0, false, false, false)
    if IsPedInAnyVehicle(ped, false) then
      local vehicle = GetVehiclePedIsIn(ped, false)
      if GetPedInVehicleSeat(vehicle, -1) == ped then
        CreateThread(function()
          while handsup do
              Wait(1)
              DisableControlAction(0, 59, true) -- Disable steering in vehicle
              DisableControlAction(0,21,true) -- disable sprint
              DisableControlAction(0,24,true) -- disable attack
              DisableControlAction(0,25,true) -- disable aim
              DisableControlAction(0,47,true) -- disable weapon
              DisableControlAction(0,58,true) -- disable weapon
              DisableControlAction(0,71,true) -- veh forward
              DisableControlAction(0,72,true) -- veh backwards
              DisableControlAction(0,63,true) -- veh turn left
              DisableControlAction(0,64,true) -- veh turn right
              DisableControlAction(0,263,true) -- disable melee
              DisableControlAction(0,264,true) -- disable melee
              DisableControlAction(0,257,true) -- disable melee
              DisableControlAction(0,140,true) -- disable melee
              DisableControlAction(0,141,true) -- disable melee
              DisableControlAction(0,142,true) -- disable melee
              DisableControlAction(0,143,true) -- disable melee
              DisableControlAction(0,75,true) -- disable exit vehicle
              DisableControlAction(27,75,true) -- disable exit vehicle
          end
        end)
      end
    end
  else
    ClearPedTasks(ped)
    handsup = false
  end
end)

function leanbarvole()
  local playerped = PlayerPedId()
  local invehicle = IsPedInAnyVehicle(playerped, false)
  if DoesEntityExist(playerped) then
    if not invehicle then 
      if leanbar then
        ClearPedSecondaryTask(playerped)
        leanbar = false
      else
        TaskPlayAnim(playerped, dictanims.lean, "idle_c", 1.0, 1.0, -1, 51, 0, false, false, false)
        leanbar = true
      end
    end
  end
end

RegisterKeyMapping('leanbar', '~y~[Animace]~w~ Opření', 'keyboard', '')
RegisterCommand('leanbar', function()
  if not ESX.GetPlayerData().dead then 
    leanbarvole()
  end
end)

startPointing = function()
    local ped = PlayerPedId()
    SetPedCurrentWeaponVisible(ped, 0, 1, 1, 1)
    SetPedConfigFlag(ped, 36, 1)
	  TaskMoveNetworkByName(ped, 'task_mp_pointing', 0.5, false, dictanims.point, 24)
end

stopPointing = function()
    local ped = PlayerPedId()
	RequestTaskMoveNetworkStateTransition(ped, 'Stop')
    if not IsPedInjured(ped) then
        ClearPedSecondaryTask(ped)
    end
    if not IsPedInAnyVehicle(ped, 1) then
        SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1)
    end
    SetPedConfigFlag(ped, 36, 0)
    ClearPedSecondaryTask(PlayerPedId())
end

RegisterCommand('point', function()
  if not ESX.GetPlayerData().dead then 
      if not IsPedInAnyVehicle(PlayerPedId(), false) then
          if mp_pointing then
              stopPointing()
              mp_pointing = false
          else
              startPointing()
              mp_pointing = true
          end
          while mp_pointing do
              local ped = PlayerPedId()
              local camPitch = GetGameplayCamRelativePitch()
              if camPitch < -70.0 then
                  camPitch = -70.0
              elseif camPitch > 42.0 then
                  camPitch = 42.0
              end
              camPitch = (camPitch + 70.0) / 112.0

              local camHeading = GetGameplayCamRelativeHeading()
              local cosCamHeading = Cos(camHeading)
              local sinCamHeading = Sin(camHeading)
              if camHeading < -180.0 then
                  camHeading = -180.0
              elseif camHeading > 180.0 then
                  camHeading = 180.0
              end
              camHeading = (camHeading + 180.0) / 360.0

              local blocked = 0
              local nn = 0

              local coords = GetOffsetFromEntityInWorldCoords(ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
              local ray = Cast_3dRayPointToPoint(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, ped, 7);
              nn,blocked,coords,coords = GetRaycastResult(ray)	
              SetTaskMoveNetworkSignalFloat(ped, "Pitch", camPitch)
              SetTaskMoveNetworkSignalFloat(ped, "Heading", camHeading * -1.0 + 1.0)
              SetTaskMoveNetworkSignalBool(ped, "isBlocked", blocked)
              SetTaskMoveNetworkSignalBool(ped, "isFirstPerson", GetCamViewModeForContext(GetCamActiveViewModeContext()) == 4)
              Wait(1)
          end
      end
    end
end)

RegisterKeyMapping('point', '~y~[Animace]~w~ Ukazovat', 'keyboard', 'b')
