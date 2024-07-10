local inCokeLab = false

-- Function to notify player
function notifyPlayer(message)
    -- Placeholder for notification logic (e.g., ESX.ShowNotification, etc.)
    print(message) -- Replace with actual notification method
end

-- Event handler for entering the coke lab
RegisterNetEvent('enterCokeLab')
AddEventHandler('enterCokeLab', function()
    inCokeLab = true
    notifyPlayer("You can now craft cocaine bricks.")
end)

-- Event handler for leaving the coke lab
RegisterNetEvent('leaveCokeLab')
AddEventHandler('leaveCokeLab', function()
    inCokeLab = false
end)

-- Event handler for crafting bricks
RegisterNetEvent('craftBrick')
AddEventHandler('craftBrick', function()
    if inCokeLab then
        TriggerServerEvent('craftBrick')
    else
        notifyPlayer("You need to be in the coke lab to craft bricks.")
    end
end)

-- Event handler for turning in bricks to NPC
RegisterNetEvent('turnInBrick')
AddEventHandler('turnInBrick', function(npc)
    TriggerServerEvent('turnInBrick', npc)
end)
