

RegisterNetEvent('pistolet')
AddEventHandler('pistolet', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0  
    local xMoney = xPlayer.getMoney() 
 

    if xMoney >= price then 
        xPlayer.removeMoney(price) 
        xPlayer.addWeapon('weapon_snspistol', 11000)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)