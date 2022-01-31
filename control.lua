-- Make sure the intro cinematic of freeplay doesn't play every time we restart
-- This is just for convenience, don't worry if you don't understand how this works
script.on_event(defines.events.on_player_created, function(event)
    local player = game.get_player(event.player_index)

    local screen_element = player.gui.screen
    local main_frame = screen_element.add{type="frame", name="ugg_main_frame", caption={"ugg.hello_world"}}
    main_frame.style.size = {385, 165}
    main_frame.auto_center = true
end)
