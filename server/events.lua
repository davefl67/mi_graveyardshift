lib.callback.register('migs:server:add:equipment', function(source)
    local item, amount = 'weapon_flashlight', 1
    if Inventory:CanCarryItem(source, item, amount) then
        Inventory:AddItem(source, item, amount)
    end
end)