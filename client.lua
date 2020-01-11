
local function chatMessage(msg)
	TriggerEvent('chatMessage', '', {0, 0, 0}, msg)
end

function DisplayHelpText(helpText)
	SetTextComponentFormat("CELL_EMAIL_BCON")
	AddTextComponentString(helpText)
	DisplayHelpTextFromStringLabel(0,0,1,-1)
end

safehouses = {

	xin = {
		position = vector3(-266.7, -955.64, 31.2),
		destination = vector4(-272.45, -940.2, 92.5, 70.0),
	},
	xinExit = {
		position = vector3(-269.95, -941.15, 92.5),
		destination = vector4(-267.25, -959.65, 31.2, 156.25),
	},
	
	matt = {
		position = vector3(-906.8, -451.9, 39.6),
		destination = vector4(-891.9, -434.4, 121.6, 24.35),
	},
	mattExit = {
		position = vector3(-890.75, -436.7, 121.6),
		destination = vector4(-908.95, -453.3, 39.6, 108.2),
	},
	
	ambiguX = {
		position = vector3(-1370.95, -503.5, 33.15),
		destination = vector4(-1396.35, -480.0, 71.0, -83.7)
	},
	ambiguXExit = {
		position = vector3(-1399.35, -480.4, 72.0),
		destination = vector4(-1372.6, -505.1, 32.15, 127.6),
	},
	
	clubhouse = {
		position = vector3(-1470.8, -921.1, 10.0),
		destination = vector4(1121.0, -3151.0, -37.1, 2.4)
	},
	clubhouseExit = {
		position = vector3(1121.0, -3152.4, -37.1),
		destination = vector4(-1469.25, -922.45, 10.0, -130.25),
	},
	
	farbod = {
		position = vector3(-777.1, 319.5, 85.65),
		destination = vector4(-779.75, 323.6, 211.95, -91.9)
	},
	farbodExit = {
		position = vector3(-783.9, 323.65, 211.95),
		destination = vector4(-777.0, 316.95, 85.65, 178.4),
	},
	
	cabdep = {
		position = vector3(-72.3, -1821.35, 26.9),
		destination = vector4(971.1, -2991.1, -39.65, -180.0),
	},
	cabdepExit = {
		position = vector3(970.85, -2987.75, -39.65),
		destination = vector4(-70.3, -1823.0, 26.9, -130.0),
	},
	
	cabdepVehicle = {
		vehicle = true,
		position = vector3(-70.9, -1822.4, 26.45),
		destination = vector3(971.65, -2994.35, -40.15),
		rotation = vector3(0.0, 0.0, -173.0),
	},	
	cabdepVehicleExit = {
		vehicle = true,
		position = vector3(970.75, -2989.85, -40.15),
		destination = vector3(-68.1, -1825.55, 26.45),
		rotation = vector3(0.0, 0.0, -140.85),
	},
	
	niko = {
		position = vector3(-1733.4, 379.7, 89.7),
		destination = vector4(-681.35, 591.3, 145.35, -130.0),
	},
	nikoExit = {
		position = vector3(-682.4, 592.45, 145.35),
		destination = vector4(-1734.35, 381.7, 89.7, 30.85),
	},
	
	club = {
		position = vector3(-430.3, -24.3, 46.2),
		destination = vector4(-1569.75, -3014.4, -74.45, 0.0),
	},
	clubExit = {
		position = vector3(-1569.5, -3017.2, -74.45),
		destination = vector4(-428.35, -24.25, 46.2, -94.15),
	},
	
	clubGarage = {
		position = vector3(-454.75, -48.45, 44.5),
		destination = vector4(-1642.7, -2989.7, -76.95, -92.05),
	},
	clubGarageExit = {
		position = vector3(-1644.9, -2989.8, -76.75),
		destination = vector4(-457.8, -51.1, 44.5, 122.65),
	},
	
	clubGarageVehicle = {
		vehicle = true,
		position = vector3(-454.9, -49.5, 44.5),
		destination = vector3(-1636.05, -2990.15, -77.95),
		rotation = vector3(-6.31, -0.08, -90.71),
	},	
	clubGarageVehicleExit = {
		vehicle = true,
		position = vector3(-1642.8, -2990.1, -77.2),
		destination = vector3(-462.75, -51.95, 43.9),
		rotation = vector3(0.0, 0.0, 86.5),
	},
	
	muriel = {
		position = vector3(307.55, -1005.6, 29.3),
		destination = vector4(346.6, -1004.7, -99.2, 0.6),
	},
	murielExit = {
		position = vector3(346.5, -1012.8, -99.2),
		destination = vector4(307.55, -1003.25, 29.3, 2.25),
	},
	
	casino = {
		position = vector3(924.4, 46.6, 81.1),
		destination = vector4(1090.5, 210.05, -49.05, -53.85),
	},
	casinoExit = {
		position = vector3(1089.6, 205.9, -49.0),
		destination = vector4(922.4, 47.75, 81.1, 58.55),
	},
	
	casinoGarage = {
		position = vector3(936.3, 1.45, 78.75),
		destination = vector4(1380.05, 182.35, -49.0, 0.0),
	},
	casinoGarageExit = {
		position = vector3(1380.0, 178.0, -49.0),
		destination = vector4(935.0, -0.95, 78.75, 150.9),
	},
	
	casinoGarageVeh = {
		vehicle = true,
		position = vector3(934.95, -0.6, 78.3),
		destination = vector3(1340.45, 183.55, -48.55),
		rotation = vector3(-3.0, 0.7, -90.0),
	},
	casinoGarageVehExit = {
		vehicle = true,
		position = vector3(1336.75, 190.6, -48.35),
		destination = vector3(931, -6.0, 78.3),
		rotation = vector3(0.0, 0.0, 147.8),
	},
	
	switch = {
		position = vector3(-614.65, 46.25, 43.55),
		destination = vector4(-605.6, 58.95, 98.2, 90.0)
	},
	switchExit = {
		position = vector3(-603.0, 58.9, 98.2),
		destination = vector4(-614.65, 43.05, 43.55, -180.0),
	},
	
}

--DrawMarker(type, x, y, z, dirX, dirY, dirZ, rotX, rotY, rotZ, 
--scaleX, scaleY, scaleZ, colorR, colorG, colorB, alpha, bobUpAndDown, 
--faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)

Citizen.CreateThread(function()
	SetPlayerControl(PlayerId(), true, 0)
	FreezeEntityPosition(GetVehiclePedIsIn(PlayerPedId(), false), false)
	FreezeEntityPosition(PlayerPedId(), false)
	DoScreenFadeIn(1000)
	while true do
		for i,v in pairs(safehouses) do
			if v.vehicle ~= true then
				if not IsPedInAnyVehicle(PlayerPedId(), false) then
					DrawMarker(1, v.position.x, v.position.y, v.position.z-1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.3, 255, 255, 100, 150, false, false, false, true)
					-- DrawMarker(0, v.position.x, v.position.y, v.position.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.8, 1.0, 255, 255, 100, 150, true, false, false, true)
					-- DrawMarker(2, v.position.x, v.position.y, v.position.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.8, -1.0, 255, 255, 100, 50, false, true, false, false)
					-- DrawMarker(1, v.position.x, v.position.y, v.position.z-1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 255, 100, 100, false, false, false, true)
					local pos = GetEntityCoords(PlayerPedId())
					if GetDistanceBetweenCoords(pos, v.position, true) < 1.0 then
						DoScreenFadeOut(1000)
						SetPlayerControl(PlayerId(), false, 0)
						Citizen.Wait(1000)
						SetEntityCoords(PlayerPedId(), v.destination.x, v.destination.y, v.destination.z, 0.0, 0.0, 0.0, true)
						SetEntityRotation(PlayerPedId(), 0.0, 0.0, v.destination.w, 0, true)
						FreezeEntityPosition(PlayerPedId(), true)
						repeat Wait(0) until HasCollisionLoadedAroundEntity(PlayerPedId())
						Citizen.Wait(300)
						SetPlayerControl(PlayerId(), true, 0)
						FreezeEntityPosition(PlayerPedId(), false)
						DoScreenFadeIn(1000)
					end
				end
			else
				if IsPedInAnyVehicle(PlayerPedId(), false) then
					DrawMarker(1, v.position.x, v.position.y, v.position.z-1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 0.3, 255, 255, 100, 150, false, false, false, true)
					-- DrawMarker(1, v.position.x, v.position.y, v.position.z-1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 0.5, 255, 255, 100, 100, false, false, false, true)
					local pos = GetEntityCoords(GetVehiclePedIsIn(PlayerPedId(), false))
					if GetDistanceBetweenCoords(pos, v.position, true) < 3.0 then
						DoScreenFadeOut(1000)
						SetPlayerControl(PlayerId(), false, 0)
						Citizen.Wait(1000)
						SetEntityCoords(GetVehiclePedIsIn(PlayerPedId(), false), v.destination.x, v.destination.y, v.destination.z-0.5, 0.0, 0.0, 0.0, true)
						SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), false), v.rotation.x, v.rotation.y, v.rotation.z, 0, true)
						FreezeEntityPosition(GetVehiclePedIsIn(PlayerPedId(), false), true)
						repeat Wait(0) until HasCollisionLoadedAroundEntity(GetVehiclePedIsIn(PlayerPedId(), false))
						Citizen.Wait(300)
						SetPlayerControl(PlayerId(), true, 0)
						FreezeEntityPosition(GetVehiclePedIsIn(PlayerPedId(), false), false)
						DoScreenFadeIn(1000)
					end
				end
			end
		end
		
		Citizen.Wait(0)
	end
end)