Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 2.5
Config.Locale          = 'fr'

Config.Prices = {
	dmv_supertrailer        = 3500,
	drive_supertrailer     = 7500
	
}

Config.VehicleModels = {
	drive_supertrailer      = 'tanker'

}


Config.SpeedLimits = {
	residence = 60,
	town      = 80,
	freeway   = 100
}

Config.Zones = {
-- CHOISIR LE POINT DONC LE POINT DES TAXIS 
	DMVSchool = {
		Pos   = {x = 529.763, y = -2732.534, z = 6.056},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1
	},

	VehicleSpawnPoint = {
		Pos   = {x = 524.075, y = -2727.037, z = 6.056, h = 317.0},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	}

}

Config.CheckPoints = {
-- TOUT LES POINTS DE PASSAGES POUR LA CONDUITE 
		{
		Pos = {x = 471.496, y = -2703.544, z = 6.113},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
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
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},


	

}
