RegisterServerEvent('notification:reply')
AddEventHandler('notification:reply', function(id,text)
	TriggerClientEvent("notification:notification",id,text)
end)