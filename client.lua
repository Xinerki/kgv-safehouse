
local function chatMessage(msg)
	TriggerEvent('chatMessage', '', {0, 0, 0}, msg)
end

function DisplayHelpText(helpText)
	SetTextComponentFormat("CELL_EMAIL_BCON")
	AddTextComponentString(helpText)
	DisplayHelpTextFromStringLabel(0,0,1,-1)
end

safehouses = {

	-- xin = {
		-- position = vector3(-266.7, -955.64, 31.2),
		-- destination = vector4(-272.45, -940.2, 92.5, 70.0),
	-- },
	-- xinExit = {
		-- position = vector3(-269.95, -941.15, 92.5),
		-- destination = vector4(-267.25, -959.65, 31.2, 156.25),
	-- },
	
	xin = {
		position = vector3(-305.05, -721.05, 28.0),
		destination = vector4(-285.6, -723.6, 125.45, -110.6),
	},
	xinExit = {
		position = vector3(-288.35, -722.45, 125.45),
		destination = vector4(-306.15, -724.25, 28.0, 160.8),
	},
	
	-- matt = {
	-- 	position = vector3(-906.8, -451.9, 39.6),
	-- 	destination = vector4(-891.9, -434.4, 121.6, 24.35),
	-- },
	-- mattExit = {
	-- 	position = vector3(-890.75, -436.7, 121.6),
	-- 	destination = vector4(-908.95, -453.3, 39.6, 108.2),
	-- },
	
	ambiguX = {
		position = vector3(-1370.95, -503.5, 33.15),
		destination = vector4(-1396.35, -480.0, 72.0, -83.7)
	},
	ambiguXExit = {
		position = vector3(-1399.35, -480.4, 72.0),
		destination = vector4(-1372.6, -505.1, 32.15, 127.6),
	},
	
	-- clubhouse = {
	-- 	position = vector3(-1470.8, -921.1, 10.0),
	-- 	destination = vector4(1121.0, -3151.0, -37.1, 2.4)
	-- },
	-- clubhouseExit = {
	-- 	position = vector3(1121.0, -3152.4, -37.1),
	-- 	destination = vector4(-1469.25, -922.45, 10.0, -130.25),
	-- },
	
	-- farbod = {
	-- 	position = vector3(-777.1, 319.5, 85.65),
	-- 	destination = vector4(-779.75, 323.6, 211.95, -91.9)
	-- },
	-- farbodExit = {
	-- 	position = vector3(-783.9, 323.65, 211.95),
	-- 	destination = vector4(-777.0, 316.95, 85.65, 178.4),
	-- },
	
	cabdep = {
		position = vector3(-72.3, -1821.35, 27.9),
		destination = vector4(971.1, -2991.1, -39.65, -180.0),
	},
	cabdepExit = {
		position = vector3(970.85, -2987.75, -39.65),
		destination = vector4(-70.3, -1823.0, 26.9, -130.0),
	},
	
	cabdepVehicle = {
		vehicle = true,
		position = vector3(-70.9, -1822.4, 26.95),
		destination = vector3(971.65, -2994.35, -40.15),
		rotation = vector3(0.0, 0.0, -173.0),
	},	
	cabdepVehicleExit = {
		vehicle = true,
		position = vector3(970.75, -2989.85, -39.65),
		destination = vector3(-68.1, -1825.55, 26.45),
		rotation = vector3(0.0, 0.0, -140.85),
	},
	
	-- niko = {
		-- position = vector3(-1733.4, 379.7, 89.7),
		-- destination = vector4(-681.35, 591.3, 145.35, -130.0),
	-- },
	-- nikoExit = {
		-- position = vector3(-682.4, 592.45, 145.35),
		-- destination = vector4(-1734.35, 381.7, 89.7, 30.85),
	-- },
	
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
	
	clubBasement = {
		position = vector3(-1618.5, -3007.45, -75.25),
		destination = vector4(-1507.75, -3014.45, -79.25, 0.0),
	},
	clubBasementExit = {
		position = vector3(-1507.65, -3017.15, -79.25),
		destination = vector4(-1617.85, -3008.85, -75.25, -146.75),
	},
	
	clubBasementGarage = {
		position = vector3(-1640.05, -3015.0, -78.15),
		destination = vector4(-1520.1, -2978.85, -79.55, -90.0),
	},	
	clubBasementGarageExit = {
		position = vector3(-1521.95, -2978.85, -80.4),
		destination = vector4(-1639.85, -3013.3, -78.15, 0.0),
	},
	
	clubBasementGarageVehicle = {
		vehicle = true,
		position = vector3(-1639.9, -3013.05, -78.0),
		destination = vector3(-1514.65, -2978.95, -81.35),
		rotation = vector3(-5.30, -0.0, -90.05),
	},	
	clubBasementGarageVehicleExit = {
		vehicle = true,
		position = vector3(-1519.85, -2978.95, -80.4),
		destination = vector3(-1639.9, -3008.55, -78.85),
		rotation = vector3(0.0, 0.0, 0.0),
	},
	
	muriel = {
		position = vector3(307.55, -1005.6, 29.3),
		destination = vector4(346.6, -1004.7, -99.2, 0.6),
	},
	murielExit = {
		position = vector3(346.5, -1012.8, -99.2),
		destination = vector4(307.55, -1003.25, 29.3, 2.25),
	},
	
	-- switch = {
	-- 	position = vector3(-614.65, 46.25, 43.55),
	-- 	destination = vector4(-605.6, 58.95, 98.2, 90.0)
	-- },
	-- switchExit = {
	-- 	position = vector3(-603.0, 58.9, 98.2),
	-- 	destination = vector4(-614.65, 43.05, 43.55, -180.0),
	-- },
	
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
		destination = vector3(931.0, -6.0, 78.3),
		rotation = vector3(0.0, 0.0, 147.8),
	},
	
	arcade = {
		position = vector3(758.75, -816.15, 26.25),
		destination = vector4(2734.95, -377.2, -48.05, 90.0),
	},
	arcadeExit = {
		position = vector3(2737.9, -374.35, -48.0),
		destination = vector4(760.65, -816.1, 26.3, -90.0),
	},
	
	arcadeGarage = {
		position = vector3(726.8, -822.85, 24.85),
		destination = vector4(2679.55, -361.45, -55.2, -90.0),
	},
	arcadeGarageExit = {
		position = vector3(2677.55, -361.45, -55.2),
		destination = vector4(724.75, -822.55, 24.75, 90.0),
	},
	
	arcadeGarageVeh = {
		vehicle = true,
		position = vector3(725.5, -822.5, 24.75),
		destination = vector3(2685.05, -361.35, -55.85),
		rotation = vector3(-0.0, 0.0, -90.0),
	},
	arcadeGarageVehExit = {
		vehicle = true,
		position = vector3(2679.45, -361.35, -55.25),
		destination = vector3(722.7, -829.2, 24.0),
		rotation = vector3(0.0, 0.0, -180.0),
	},
	
	penthouse = {
		position = vector3(1085.45, 214.35, -49.25),
		destination = vector4(979.45, 57.25, 116.15, 60.65),
	},
	penthouseExit = {
		position = vector3(980.55, 56.6, 116.15),
		destination = vector4(1086.1, 215.15, -49.25, -41.1),
	},
	
	terracePenthouse = {
		position = vector3(967.8, 63.7, 112.55),
		destination = vector4(970.8, 62.85, 112.55, -120.0),
	},
	terracePenthouseExit = {
		position = vector3(969.5, 63.15, 112.55),
		destination = vector4(966.7, 63.95, 112.55, 81.8),
	},
	
	-- theo = {
	-- 	position = vector3(-852.96, 694.074, 149.04),
	-- 	destination = vector4(-859.85, 689.82, 152.86, 180.0)
	-- },
	-- theoExit = {
	-- 	position = vector3(-859.95, 691.21, 152.86),
	-- 	destination = vector4(-853.03, 695.39, 148.78, 0.0),
	-- },
	
	mazebank = {
		position = vector3(-68.6, -800.9, 44.2),
		destination = vector4(-66.1, -822.15, 321.25, -110.2)
	},
	mazebankExit = {
		position = vector3(-66.95, -821.95, 321.25),
		destination = vector4(-66.5, -798.9, 44.2, -42.15),
	},
	
	studio = {
		position = vector3(-840.5, -231.25, 37.2),
		destination = vector4(-1021.95, -90.25, -99.45, 0.0),
	},
	studioExit = {
		position = vector3(-1021.9, -92.35, -99.45),
		destination = vector4(-838.1, -229.95, 37.2, -61.3),
	},
	
	studioRooftop = {
		position = vector3(-865.75, -221.72, 40.30),
		destination = vector4(-843.71, -236.08, 61.01, 36.67),
	},
	studioRooftopExit = {
		position = vector3(-843.57, -236.80, 61.01),
		destination = vector4(-866.66, -222.075, 39.58, 114.88),
	},
	
	meth = {
		position = vector3(49.85, -1453.6, 29.3),
		destination = vector4(997.7, -3199.15, -36.4, 0.0),
	},
	methExit = {
		position = vector3(997.1, -3200.75, -36.4),
		destination = vector4(47.05, -1451.65, 29.3, 50.3),
	},
	
	meetGarage = {
		vehicle = true,
		position = vector3(772.8, -1866.95, 28.65),
		destination = vector3(-2215.15, 1153.1, -23.9),
		rotation = vector3(-0.0, 0.0, -141.9),
	},
	meetGarageExit = {
		vehicle = true,
		position = vector3(-2220.55, 1158.1, -23.9),
		destination = vector3(783.0, -1868.15, 28.6),
		rotation = vector3(-0.0, 0.0, -98.25),
	},
	
	meetGarageTrack = {
		vehicle = true,
		position = vector3(-2152.45, 1106.0, -24.75),
		destination = vector3(-2136.4, 1106.05, -27.1),
		rotation = vector3(-0.0, 0.0, -90.0),
	},
	meetGarageTrackExit = {
		vehicle = true,
		position = vector3(-2144.65, 1106.0, -25.55),
		destination = vector3(-2159.05, 1106.05, -24.75),
		rotation = vector3(0.0, 0.0, 90.0),
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
			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.position, true) < 10.0 then
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
							SetEntityCoords(PlayerPedId(), v.destination.x, v.destination.y, v.destination.z-1.0, 0.0, 0.0, 0.0, true)
							SetEntityRotation(PlayerPedId(), 0.0, 0.0, v.destination.w, 0, true)
							FreezeEntityPosition(PlayerPedId(), true)
							repeat Wait(0) until HasCollisionLoadedAroundEntity(PlayerPedId())
							SetGameplayCamRelativeHeading(0.0)
							SetPedDesiredHeading(PlayerPedId(), v.destination.w)
							Citizen.Wait(300)
							SetPlayerControl(PlayerId(), true, 0)
							FreezeEntityPosition(PlayerPedId(), false)
							DoScreenFadeIn(1000)
							repeat Wait(0) until #(GetEntityCoords(PlayerPedId()) - v.destination.xyz) > 1.0
						end
					end
				else
					if IsPedInAnyVehicle(PlayerPedId(), false) then
						DrawMarker(1, v.position.x, v.position.y, v.position.z-0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 0.3, 255, 255, 100, 150, false, false, false, true)
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
							SetGameplayCamRelativeHeading(0.0)
							Citizen.Wait(300)
							SetPlayerControl(PlayerId(), true, 0)
							FreezeEntityPosition(GetVehiclePedIsIn(PlayerPedId(), false), false)
							SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), false))
							DoScreenFadeIn(1000)
						end
					end
				end
			end
		end
		
		Citizen.Wait(0)
	end
end)