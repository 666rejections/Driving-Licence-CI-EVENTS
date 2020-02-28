Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 2.5
Config.Locale          = 'fr'

Config.Prices = {
	dmv_superlourds         = 7500,
	drive_superlourds     = 15000,
	dmv = 2500,
	dvm_drive = 5000,
	
}

Config.VehicleModels = {
	drive_superlourds      = 'phantom'

}


Config.SpeedLimits = {
	residence = 60,
	town      = 80,
	freeway   = 100
}

Config.Zones = {
-- CHOISIR LE POINT DONC LE POINT DES TAXIS 
	DMVSchool = {
		Pos   = {x = 858.435, y = -3204.684, z = 5.994},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1
	},

	VehicleSpawnPoint = {
		Pos   = {x = 826.900, y = -3215.905, z = 5.899, h = 317.0},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	}

}

Config.CheckPoints = {
-- TOUT LES POINTS DE PASSAGES POUR LA CONDUITE 
	{
		Pos = {x = 873.481, y = -3218.726, z = 5.893},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('next_point_speed', Config.SpeedLimits['town']), 5000)
		end
	},

	{
		Pos = {x = 1069.608, y = -3224.572, z = 5.900},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 1157.334, y = -3172.342, z = 5.800},
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
		Pos = {x = 1064.998, y = -2953.783, z = 5.900, h = 317.0},
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

	{	Pos = {x = 539.159, y = -2724.585, z = 6.123, h = 317.0},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_look_left', Config.SpeedLimits['town']), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('trailor'), 5000)
			end)
		end
	},
	
	
		{
		Pos = {x = 471.496, y = -2703.544, z = 6.113},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_trailer'), 5000)
		end
	},
	

	{
		Pos = {x = 594.091, y = -2768.592, z = 6.111},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	
		{
		Pos = {x = 660.812, y = -2806.201, z = 6.193},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	

	
		{
		Pos = {x = 1078.048, y = -2108.526, z = 33.251},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	
		{
		Pos = {x = 1362.152, y = -1632.169, z = 52.604},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

		{
		Pos = {x = 2416.518, y = -3224.572, z = 5.900},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
	
			{
		Pos = {x = 1069.608, y = -459.847, z = 71.730},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

		{
		Pos = {x = 540.400, y = -2725.421, z = 6.085},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('trailor_end'), 5000)
		end
	},

		{
		Pos = {x = 830.520, y = -3212.614, z = 5.931},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},
}
