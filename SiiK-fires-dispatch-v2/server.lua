local QBCore = exports['qb-core']:GetCoreObject()

local activeUnits = {}

RegisterNetEvent('qb-fireemspager:server:SetDuty', function(status)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local job = Player.PlayerData.job.name

    if status and not activeUnits[src] and IsJobAllowed(job) then
        activeUnits[src] = true
    elseif not status and activeUnits[src] then
        activeUnits[src] = nil
    end

    TriggerClientEvent('qb-fireemspager:client:SetDuty', src, status)
end)

RegisterNetEvent('qb-fireemspager:server:SendFirePagerCall', function(data)
    for src, _ in pairs(activeUnits) do
        TriggerClientEvent('qb-fireemspager:client:ReceiveCall', src, data)
    end
end)

function IsJobAllowed(job)
    for _, v in pairs(Config.AllowedJobs) do
        if v == job then
            return true
        end
    end
    return false
end

-- FireScript Integration
RegisterNetEvent('FireScript:StartFire')
AddEventHandler('FireScript:StartFire', function(id, x, y, z, street, road)
    if not x or not y or not z then return end

    local coords = vector3(x, y, z)
    local location = street or "Unknown Location"

    local data = {
        type = "Structure Fire",
        coords = coords,
        street = location
    }

    for src, _ in pairs(activeUnits) do
        TriggerClientEvent('qb-fireemspager:client:ReceiveCall', src, data)
    end
end)
