Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 2.5
Config.Locale          = 'fr'

Config.Prices = {
	dmv_taxi         = 500,
	drive_taxi       = 500
	
}

Config.VehicleModels = {
	drive_taxi       = 'taxi' -- A CHANGER VOIR CAISSE DE TAXI ?

}

Config.SpeedLimits = {
	residence = 60,
	town      = 80,
	freeway   = 100
}

Config.Zones = {
-- CHOISIR LE POINT DONC LE POINT DES TAXIS 
	DMVSchool = {
		Pos   = {x = 905.234, y = -165.445, z = 74.101},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1
	},

	VehicleSpawnPoint = {
		Pos   = {x = 925.402, y = -179.019, z = 74.408, h = 317.0},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	}

}

Config.CheckPoints = {
-- TOUT LES POINTS DE PASSAGES POUR LA CONDUITE 
	{
		Pos = {x = 255.139, y = -1400.731, z = 29.537},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('next_point_speed', Config.SpeedLimits['town']), 5000)
		end
	},

	{
		Pos = {x = -1037.989, y = -2719.853, z = 13.708},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -1344.223, y = 131.958, z = 56.293},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_for_ped'), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(4000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_lets_cont'), 5000)
			end)
		end
	},

	{
		Pos = {x = 925.402, y = -179.019, z = 74.408, h = 317.0},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_look_left', Config.SpeedLimits['town']), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},

	

}
