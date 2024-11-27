#> eoflib:config/gui/player/ability_data
#
# Display Player Settings line for toggling ability data.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:player/ability_data.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/player/ability_data.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:player/ability_data.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/player/ability_data.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:player/ability_data.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/player/ability_data.mcfunction", "color": "aqua"}}}]

    # Fail
        ## No Tribe
execute unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable specific data for your abilities.\n\nYou are not a member of any tribes.\nContact an administrator if this is\nincorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Toggle Ability Data", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off ability data lines.", "color": "dark_gray"}}}]

    # Success
        ## All
            ### Disable
execute if entity @s[tag=!eoflib.ability_data.hide_all, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 10"}, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable specific data for your abilities.", "color": "red"}}}, {"text": "] [", "color": "gray"}, {"text": "Customise", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 22"}, "hoverEvent": {"action": "show_text", "contents": {"text": "Select the data that appears on your abilities.", "color": "aqua"}}}, {"text": "] ", "color": "gray"}, {"text": "Toggle Ability Data", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off ability data lines.", "color": "gray"}}}]

            ### Enable
execute if entity @s[tag=eoflib.ability_data.hide_all, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 16"}, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable specific data for your abilities.", "color": "green"}}}, {"text": "] [", "color": "gray"}, {"text": "Customise", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 22"}, "hoverEvent": {"action": "show_text", "contents": {"text": "Select the data that appears on your abilities.", "color": "aqua"}}}, {"text": "] ", "color": "gray"}, {"text": "Toggle Ability Data", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off ability data lines.", "color": "gray"}}}]

#endregion
