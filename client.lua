ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent("cmt_vehiclelights:setcolor")
AddEventHandler("cmt_vehiclelights:setcolor", function(color)
	local color = tonumber(color)
	local veh = GetVehiclePedIsUsing(PlayerPedId())
	ToggleVehicleMod(veh, 22, true) -- toggle xenon
	SetVehicleHeadlightsColour(veh, color)
end)

