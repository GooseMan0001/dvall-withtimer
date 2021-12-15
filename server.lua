--------------------------------------
------Created By Whit3Xlightning------
--https://github.com/Whit3XLightning--
--------------------------------------

-------------------------------------
-------Modified By Crypto#0001-------
---https://github.com/GooseMan0001---
-------------------------------------

RegisterCommand(Config.commandName, function(source, args, rawCommand) TriggerClientEvent("cry:dvall", -1) end, Config.restricCommand)


function msg(text,source)
	TriggerClientEvent("chatMessage", source, "[System]", {255,0,0}, text)
end

RegisterCommand("dvall", function(source, args, rawCommand)
	msg("An Administrator has initated a clearing of all unoccupied vehicles.", source)
    msg("Clearing all unoccupied vehicles in 15 seconds.", source)
	Citizen.SetTimeout(5000, function()
		msg("Clearing all unoccupied vehicles in 10 seconds.", source)
	end)
	Citizen.SetTimeout(10000, function()
		msg("Clearing all unoccupied vehicles in 5 seconds.", source)
	end)
	Citizen.SetTimeout(15000, function()
		msg("All unoccupied vehicles have been deleted!", source)
	end)
	TriggerClientEvent("cry:dvall", -1)
end, false)