ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
	TriggerEvent('esx_license:getLicenses', source, function(licenses)
		TriggerClientEvent('esx_dmvschool2:loadLicenses', source, licenses)
	end)
end)

RegisterNetEvent('esx_dmvschool2:addLicense')
AddEventHandler('esx_dmvschool2:addLicense', function(type)
	local _source = source

	TriggerEvent('esx_license:addLicense', _source, type, function()
		TriggerEvent('esx_license:getLicenses', _source, function(licenses)
			TriggerClientEvent('esx_dmvschool2:loadLicenses', _source, licenses)
		end)
	end)
end)

RegisterNetEvent('esx_dmvschool2:pay')
AddEventHandler('esx_dmvschool2:pay', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(price)
	TriggerClientEvent('esx:showNotification', _source, _U('you_paid', price))
end)
