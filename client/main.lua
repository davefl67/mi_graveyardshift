-- returns random location from variable
local stone_head = {
    [1] = vec3(-1731.5766601563, -276.62350463867, 49.644493103027),
    [2] = vec3(-1731.5766601563, -276.62350463867, 49.644493103027),
}

local stone_casket = {
    [1] = vec3(-1733.9050292969, -272.03921508789, 50.024131774902),
    [2] = vec3(-1733.9050292969, -272.03921508789, 50.024131774902),
}

function TaskRandomChoice(locs)
    local loc = nil
    loc = locs[math.random(1, #locs)]
    return loc
end

local function graveyardblip()
    local sb = nil
    local pb = GS.graveyard.blip
    local crds = GS.graveyard.blip.loc
    sb = AddBlipForCoord(crds.x, crds.y, crds.z)
    SetBlipSprite(sb, pb.sprite)
    SetBlipDisplay(sb, 4)
    SetBlipColour(sb, pb.color)
    SetBlipScale(sb, pb.scale)
    SetBlipAsShortRange(sb, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(pb.name)
    EndTextCommandSetBlipName(sb)
end

CreateThread(function()
    if GS.graveyard.blip.allow then
        graveyardblip()
        Wait(1000)
    end
end)