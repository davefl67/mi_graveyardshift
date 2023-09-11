local keeper = GS.graveyard.ped

lib.registerContext({
	id = 'keeper_context',
	title = 'The Graveyard Keeper',
	options = {
		{
			title = 'Request Equipment',
			description = 'you can\'t clean a grave with no tools',
			icon = 'toolbox',
			onSelect = function()
				lib.callback('migs:server:add:equipment', false, source)
			end,
		},
	}
})

local spawnkeeper = function()
	-- spawn ped
	if not keeper then return end
    if keeper then
		local keeperped, keeperpedset = nil, {spawned = false, ped = nil}
		local model, scenario, coords = lib.requestModel(GS.graveyard.ped.model, 300),
        GS.graveyard.ped.anim, GS.graveyard.ped.loc

		keeperped = CreatePed(1, model, coords.x, coords.y, coords.z-1, coords.w, true, false)
		keeperpedset.spawned = true
        keeperpedset.ped = keeperped

		TaskStartScenarioInPlace(keeperpedset.ped, scenario, 0, true)
		SetBlockingOfNonTemporaryEvents(keeperpedset.ped, true)
        FreezeEntityPosition(keeperpedset.ped, true)
        SetEntityInvincible(keeperpedset.ped, true)
		-- load target options
	local options = {
		{
			name = 'miprep_prepped',
			label = 'Talk to the Keeper',
			icon = 'fa-solid fa-comment-dots',
			canInteract = function(_, distance)
				return distance < 2.5 and not IsEntityDead(keeperped)
			end,
			onSelect = function()
				lib.showContext('keeper_context')
			end
		},
	}
	exports.ox_target:addLocalEntity(keeperpedset.ped, options)
	end
end

CreateThread(function()
    if true then
        spawnkeeper()
        Wait(1000)
    end
end)