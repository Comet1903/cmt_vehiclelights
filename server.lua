ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("xenon", function(source, args)
TriggerClientEvent("cmt_vehiclelights:setcolor", source, args[1])
end, false)