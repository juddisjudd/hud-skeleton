RegisterNUICallback('hideUI', function(_, cb)
    cb({})
    SetNuiFocus(false, false)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local health = GetEntityHealth(PlayerPedId())
        local armor = GetPedArmour(PlayerPedId())
        local stamina = 100 - GetPlayerSprintStaminaRemaining(PlayerId())

        SendNUIMessage({
            type = 'UPDATE_STATUS',
            data = {
                health = health,
                armor = armor,
                stamina = stamina
            }
        })
    end
end)