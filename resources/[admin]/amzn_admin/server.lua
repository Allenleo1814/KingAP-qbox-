local LOG_PREFIX = '[^3919ADMIN^7] '
FRAMEWORK = nil

local function isStarted(name)
    return GetResourceState(name) == 'started'
end

if isStarted('qb-core') and not isStarted('qbx_core') then
    FRAMEWORK = 'qb'
    QBCore = exports['qb-core']:GetCoreObject()
elseif isStarted('qbx_core') then
    FRAMEWORK = 'qbx'
elseif isStarted('es_extended') then
    FRAMEWORK = 'esx'
    ESX = exports['es_extended']:getSharedObject()
else
    FRAMEWORK = 'standalone'
    print(LOG_PREFIX .. 'No framework detected, running in standalone mode')
end

if FRAMEWORK ~= 'standalone' then
    print(LOG_PREFIX .. 'Framework detected: ' .. FRAMEWORK)
end


INVENTORY = nil
if isStarted('ox_inventory') then
    INVENTORY = "ox"
elseif isStarted('qs-inventory') then
    INVENTORY = "qs"
elseif isStarted('origen_inventory') then
    INVENTORY = "origen"
elseif isStarted('codem-inventory') then
    INVENTORY = "codem"
elseif isStarted('tgiann-inventory') then
    INVENTORY = "tgiann"
elseif isStarted('qb-inventory') then
    INVENTORY = "qb"
elseif isStarted('ps-inventory') then
    INVENTORY = "ps-inventory"
else
    if FRAMEWORK ~= 'standalone' then
        print(LOG_PREFIX .. 'No inventory resource found, falling back to framework functions')
    else
        print(LOG_PREFIX .. 'No inventory resource found (standalone mode)')
    end
end

if INVENTORY then
    print(LOG_PREFIX .. 'Inventory detected: ' .. INVENTORY)
elseif FRAMEWORK ~= 'standalone' then
    print(LOG_PREFIX .. 'Using framework functions for inventory')
end

local ServerUptime = 0

CreateThread(function()
    while true do
        ServerUptime = ServerUptime + 1
        Wait(1000)
    end
end)

-- Helper to optionally remove IPs from identifiers before sending to UI
local function filterIdentifiers(identifiers)
    if not identifiers then return {} end
    if not Config or not Config.DisableIPDisplay then return identifiers end
    local filtered = {}
    for _, id in ipairs(identifiers) do
        local lower = string.lower(id or '')
        local isIpPrefixed = lower:find('^ip:') ~= nil
        -- Rough IPv4 pattern with digit boundaries
        local hasIPv4 = string.match(id or '', '%f[%d]%d+%.%d+%.%d+%.%d+%f[^%d]') ~= nil
        if not isIpPrefixed and not hasIPv4 then
            table.insert(filtered, id)
        end
    end
    return filtered
end

-- Expose disabled pages config to client/UI
lib.callback.register('amzn_admin:server:getDisabledPages', function(source)
    return Config and Config.DisabledPages or {}
end)

lib.callback.register('amzn_admin:server:getServerInfo', function(source)
    local serverUptimeString = ""
    -- Convert seconds to hours, minutes, and seconds
    local hours = math.floor(ServerUptime / 3600)
    local minutes = math.floor((ServerUptime % 3600) / 60)
    local seconds = ServerUptime % 60
    
    -- Format the uptime string
    if hours > 0 then
        serverUptimeString = string.format("%dh %dm %ds", hours, minutes, seconds)
    elseif minutes > 0 then
        serverUptimeString = string.format("%dm %ds", minutes, seconds)
    else
        serverUptimeString = string.format("%ds", seconds)
    end

    return {
        name = GetResourceKvpString('amzn_admin_server_name') or "Unknown Server",
        framework = FRAMEWORK == 'qb' and "QBCore" or FRAMEWORK == 'qbx' and "QBox" or FRAMEWORK == 'esx' and "ESX" or FRAMEWORK == 'standalone' and "Standalone" or "Unknown",
        serverVersion = GetConvar('version', 'unknown'),
        gameBuild = 0,
        playerCount = #GetPlayers(),
        maxPlayers = GetConvarInt('sv_maxclients', 0),
        uptime = serverUptimeString,
        ping = GetPlayerPing(source),
    }
end)

lib.callback.register('amzn_admin:server:getPlayerList', function(source)
    local players = {}
    for _, playerId in ipairs(GetPlayers()) do
        local groupName = GetPlayerPermissionGroup and GetPlayerPermissionGroup(tonumber(playerId)) or 'User'
        if FRAMEWORK == 'qb' or FRAMEWORK == 'qbx' then
            local qbPlayer
            if FRAMEWORK == 'qb' then
                qbPlayer = QBCore.Functions.GetPlayer(tonumber(playerId))
            elseif FRAMEWORK == 'qbx' then
                qbPlayer = exports.qbx_core:GetPlayer(tonumber(playerId))
            end
            local playerName = GetPlayerName(playerId)
            local ping = GetPlayerPing(playerId)
            local characterName = "Unknown"
            local citizenId = "Unknown"
            if qbPlayer then
                characterName = qbPlayer.PlayerData.charinfo.firstname .. " " .. qbPlayer.PlayerData.charinfo.lastname
                citizenId = qbPlayer.PlayerData.citizenid
            end
            table.insert(players, {
                id = tonumber(playerId),
                serverName = playerName,
                characterName = characterName,
                ping = ping,
                citizenId = citizenId,
                group = groupName,
            })
        elseif FRAMEWORK == 'esx' then
            local xPlayer = ESX.GetPlayerFromId(tonumber(playerId))
            local playerName = GetPlayerName(playerId)
            local ping = GetPlayerPing(playerId)
            local citizenId = "Unknown"
            local characterName = "Unknown"
            if xPlayer then
                characterName = xPlayer.getName()
                citizenId = xPlayer.getIdentifier()
            end
            table.insert(players, {
                id = tonumber(playerId),
                serverName = playerName,
                characterName = characterName,
                ping = ping,
                citizenId = citizenId,
                group = groupName,
            })
        elseif FRAMEWORK == 'standalone' then
            local playerName = GetPlayerName(playerId)
            local ping = GetPlayerPing(playerId)
            local license = GetPlayerIdentifierByType(playerId, 'license') or "Unknown"
            table.insert(players, {
                id = tonumber(playerId),
                serverName = playerName,
                characterName = playerName,
                ping = ping,
                citizenId = license,
                group = groupName,
            })
        end
    end
    return players
end)

local function getQBPlayerInfo(playerId)
    local qbPlayer
    if FRAMEWORK == 'qb' then
        qbPlayer = QBCore.Functions.GetPlayer(playerId)
    elseif FRAMEWORK == 'qbx' then
        qbPlayer = exports.qbx_core:GetPlayer(playerId)
    end
    local isSkeleton = qbPlayer == nil
    local playerName = GetPlayerName(playerId)
    local ping = GetPlayerPing(playerId)
    local citizenId = (qbPlayer and qbPlayer.PlayerData and qbPlayer.PlayerData.citizenid) or "Unknown"
    local license = GetPlayerIdentifierByType(playerId, 'license')
    if FRAMEWORK == 'qbx' then
        license = GetPlayerIdentifierByType(playerId, 'license2') or GetPlayerIdentifierByType(playerId, 'license')
    end
    local punishments = {}
    if license ~= nil then
        punishments = MySQL.query.await('SELECT id, type, reason, issued_by, issued_at, status, expire FROM admin_punishment_list WHERE license = ? ORDER BY issued_at DESC', { license }) or {}
    end
    -- Map DB fields to camelCase for frontend
    for _, p in ipairs(punishments) do
        p.issuedBy = p.issued_by
        p.issuedAt = p.issued_at
        p.issued_by = nil
        p.issued_at = nil
    end
    local characterName = "Unknown"
    if qbPlayer and qbPlayer.PlayerData and qbPlayer.PlayerData.charinfo then
        characterName = (qbPlayer.PlayerData.charinfo.firstname or "") .. " " .. (qbPlayer.PlayerData.charinfo.lastname or "")
        characterName = characterName:gsub("^%s+", ""):gsub("%s+$", "")
        if characterName == "" then characterName = "Unknown" end
    end

    local cash = 0
    local bank = 0
    if qbPlayer and qbPlayer.PlayerData and qbPlayer.PlayerData.money then
        cash = qbPlayer.PlayerData.money.cash or 0
        bank = qbPlayer.PlayerData.money.bank or 0
    end

    local job = nil
    if qbPlayer and qbPlayer.PlayerData and qbPlayer.PlayerData.job and qbPlayer.PlayerData.job.name and qbPlayer.PlayerData.job.name ~= "unemployed" then
        local gradeName = qbPlayer.PlayerData.job.grade and qbPlayer.PlayerData.job.grade.name or nil
        local gradeLevel = qbPlayer.PlayerData.job.grade and qbPlayer.PlayerData.job.grade.level or nil
        job = {
            name = qbPlayer.PlayerData.job.name,
            label = qbPlayer.PlayerData.job.label,
            grade_label = gradeName,
            grade_level = gradeLevel,
        }
    end

    local gang = nil
    if qbPlayer and qbPlayer.PlayerData and qbPlayer.PlayerData.gang and qbPlayer.PlayerData.gang.name and qbPlayer.PlayerData.gang.name ~= "none" then
        local gradeName = qbPlayer.PlayerData.gang.grade and qbPlayer.PlayerData.gang.grade.name or nil
        local gradeLevel = qbPlayer.PlayerData.gang.grade and qbPlayer.PlayerData.gang.grade.level or nil
        gang = {
            name = qbPlayer.PlayerData.gang.name,
            label = qbPlayer.PlayerData.gang.label,
            grade_label = gradeName,
            grade_level = gradeLevel,
        }
    end

    local phone = (qbPlayer and qbPlayer.PlayerData and qbPlayer.PlayerData.phone) or "UNKNOWN"

    return {
        id = tonumber(playerId),
        serverName = playerName,
        characterName = characterName,
        ping = ping,
        citizenId = citizenId,
        cash = cash,
        bank = bank,
        health = GetEntityHealth(GetPlayerPed(playerId)) / 2,
        armor = GetPedArmour(GetPlayerPed(playerId)),
        job = job,
        gang = gang,
        phone = phone,
        identifiers = filterIdentifiers(GetPlayerIdentifiers(playerId)),
        punishments = punishments,
        isSkeleton = isSkeleton,
    }
end

local function getESXPlayerInfo(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    local isSkeleton = xPlayer == nil

    local playerName = GetPlayerName(playerId)
    local ping = GetPlayerPing(playerId)
    local citizenId = xPlayer and xPlayer.getIdentifier() or "Unknown"
    local license = GetPlayerIdentifierByType(playerId, 'license')
    local punishments = {}
    if license ~= nil then
        punishments = MySQL.query.await('SELECT id, type, reason, issued_by, issued_at, status, expire FROM admin_punishment_list WHERE license = ? ORDER BY issued_at DESC', { license }) or {}
    end
    -- Map DB fields to camelCase for frontend
    for _, p in ipairs(punishments) do
        p.issuedBy = p.issued_by
        p.issuedAt = p.issued_at
        p.issued_by = nil
        p.issued_at = nil
    end
    local characterName = xPlayer and xPlayer.getName() or "Unknown"
    local cash = xPlayer and xPlayer.getMoney() or 0
    local bank = 0
    if xPlayer and xPlayer.getAccount then
        local bankAccount = xPlayer.getAccount('bank')
        bank = (bankAccount and bankAccount.money) or 0
    end
    local job = xPlayer and xPlayer.getJob and xPlayer.getJob() or nil

    return {
        id = tonumber(playerId),
        serverName = playerName,
        characterName = characterName,
        ping = ping,
        citizenId = citizenId,
        cash = cash,
        bank = bank,
        health = GetEntityHealth(GetPlayerPed(playerId)) / 2,
        armor = GetPedArmour(GetPlayerPed(playerId)),
        job = job,
        gang = 'NONE',
        phone = 'UNKNOWN',
        identifiers = filterIdentifiers(GetPlayerIdentifiers(playerId)),
        punishments = punishments,
        isSkeleton = isSkeleton,
    }
end

local function getStandalonePlayerInfo(playerId)
    local playerName = GetPlayerName(playerId)
    local ping = GetPlayerPing(playerId)
    local license = GetPlayerIdentifierByType(playerId, 'license') or "Unknown"
    local punishments = {}
    if license ~= "Unknown" then
        punishments = MySQL.query.await('SELECT id, type, reason, issued_by, issued_at, status, expire FROM admin_punishment_list WHERE license = ? ORDER BY issued_at DESC', { license }) or {}
    end
    -- Map DB fields to camelCase for frontend
    for _, p in ipairs(punishments) do
        p.issuedBy = p.issued_by
        p.issuedAt = p.issued_at
        p.issued_by = nil
        p.issued_at = nil
    end

    return {
        id = tonumber(playerId),
        serverName = playerName,
        characterName = playerName,
        ping = ping,
        citizenId = license,
        cash = 0,
        bank = 0,
        health = GetEntityHealth(GetPlayerPed(playerId)) / 2,
        armor = GetPedArmour(GetPlayerPed(playerId)),
        job = nil,
        gang = nil,
        phone = 'N/A',
        identifiers = filterIdentifiers(GetPlayerIdentifiers(playerId)),
        punishments = punishments,
        isSkeleton = false,
    }
end

lib.callback.register('amzn_admin:server:getPlayerInfo', function(source, playerId)
    local data = {}
    if FRAMEWORK == 'qb' or FRAMEWORK == 'qbx' then
        data = getQBPlayerInfo(playerId)
    elseif FRAMEWORK == 'esx' then
        data = getESXPlayerInfo(playerId)
    elseif FRAMEWORK == 'standalone' then
        data = getStandalonePlayerInfo(playerId)
    else
        data = {}
    end

    if data and data.isSkeleton == true then
        TriggerClientEvent('amzn_admin:client:notify', source, 'Live character data could not be loaded. Actions may not work correctly because this player has not chosen a character.', 'warning')
        data.isSkeleton = nil
    end

    return data
end)

lib.callback.register('amzn_admin:server:getEntityOwner', function(source, networkId)
    if not networkId or networkId == 0 then
        return nil
    end
    
    local entity = NetworkGetEntityFromNetworkId(networkId)
    if not entity or entity == 0 then
        return nil
    end
    
    local ownerId = NetworkGetFirstEntityOwner(entity)
    if not ownerId or ownerId == 0 then
        return nil
    end
    
    local ownerName = GetPlayerName(ownerId)
    if not ownerName then
        return nil
    end
    
    return {
        id = ownerId,
        name = ownerName
    }
end)

-- Export functions for addon resources
exports('CheckPermission', function(source, permission)
    return CheckPermission(source, permission)
end)