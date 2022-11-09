local QRCore = exports['qr-core']:GetCoreObject()

QRCore.Functions.CreateCallback('rsg-contraband:server:contrabandselling:getAvailableContraband', function(source, cb)
    local AvailableContraband = {}
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    if Player then
        for i = 1, #Config.ContrabandList, 1 do
            local item = Player.Functions.GetItemByName(Config.ContrabandList[i])

            if item ~= nil then
                AvailableContraband[#AvailableContraband+1] = {
                    item = item.name,
                    amount = item.amount,
                    label = QRCore.Shared.Items[item.name]["label"]
                }
            end
        end
        if next(AvailableContraband) ~= nil then
            cb(AvailableContraband)
        else
            cb(nil)
        end
    end
end)

RegisterNetEvent('rsg-contraband:server:sellContraband', function(item, amount, price)
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    if Player then
        local hasItem = Player.Functions.GetItemByName(item)
        local AvailableContraband = {}
        if hasItem.amount >= amount then
			TriggerClientEvent('QRCore:Notify', src, 'offer accepted', 'success')
            Player.Functions.RemoveItem(item, amount)
            Player.Functions.AddMoney('cash', price, "sold-contraband")
            TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items[item], "remove")
            for i = 1, #Config.ContrabandList, 1 do
                item = Player.Functions.GetItemByName(Config.ContrabandList[i])

                if item ~= nil then
                    AvailableContraband[#AvailableContraband+1] = {
                        item = item.name,
                        amount = item.amount,
                        label = QRCore.Shared.Items[item.name]["label"]
                    }
                end
            end
            TriggerClientEvent('rsg-contraband:client:refreshAvailableContraband', src, AvailableContraband)
        else
            TriggerClientEvent('rsg-contraband:client:contrabandselling', src)
        end
    end
end)

RegisterNetEvent('rsg-contraband:server:robContraband', function(item, amount)
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    if Player then
        local AvailableContraband = {}
        Player.Functions.RemoveItem(item, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items[item], "remove")
        for i = 1, #Config.ContrabandList, 1 do
            item = Player.Functions.GetItemByName(Config.ContrabandList[i])
            if item then
                AvailableContraband[#AvailableContraband+1] = {
                    item = item.name,
                    amount = item.amount,
                    label = QRCore.Shared.Items[item.name]["label"]
                }
            end
        end
        TriggerClientEvent('rsg-contraband:client:refreshAvailableContraband', src, AvailableContraband)
    end
end)

RegisterNetEvent('rsg-contraband:server:UpdateCurrentLawmen', function()
    local amount = 0
    local players = QRCore.Functions.GetQRPlayers()
    for k, v in pairs(players) do
        if v.PlayerData.job.name == Config.LawmenJob and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    TriggerClientEvent("rsg-contraband:client:SetLawmenCount", -1, amount)
end)
