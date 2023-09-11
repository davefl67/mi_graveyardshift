local spookyboi, spookyboiset = nil, {spawned = false, ped = nil}
local locs_run = {
    [1] = vec4(-1731.475, -260.735, 51.587, 187.126),
    [2] = vec4(-1745.100, -305.486, 47.834, 302.643),
}

local fuckingetthemass = function()
    local model = lib.requestModel('u_m_o_filmnoir', 300)
    local loc_start, loc_end = nil, nil
    repeat
        loc_start = TaskRandomChoice(locs_run)
        loc_end = TaskRandomChoice(locs_run)
    until loc_start ~= loc_end
    spookyboi = CreatePed(1, model, loc_start.x, loc_start.y, loc_start.z-1, loc_start.w, true, false)
    spookyboiset.spawned = true
    spookyboiset.ped = spookyboi
    SetBlockingOfNonTemporaryEvents(spookyboi, true)
    SetEntityInvincible(spookyboi, true)
    TaskGoToCoordAnyMeans(spookyboi, loc_end.x, loc_end.y, loc_end.z, 3.0, 0, false, 786603, 0xbf800000)
end

RegisterCommand('spooky', function()
    fuckingetthemass()
end, false)