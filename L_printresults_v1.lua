local printresults = false

addHook("IntermissionThinker", function()
    if printresults then
        local str = ";"
        for i = 0, #players - 1 do
            local player = players[i]
            if player ~= nil then
                str = str .. tostring(i) .. ":" .. player.name .. ":" .. tostring(player.position) .. ":" .. tostring(player.realtime) .. ":" .. tostring(player.lives == 0) .. ":" .. tostring(player.mo == nil) .. ";"
            end
        end
        CONS_Printf(server, "[RESULTS] " .. str)
        printresults = false
    end
end)

addHook("MapLoad", function()
    printresults = true
end)

