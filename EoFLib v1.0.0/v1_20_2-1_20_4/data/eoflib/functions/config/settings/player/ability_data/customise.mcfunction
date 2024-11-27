#> eoflib:config/settings/player/ability_data/customise
#
# Customise data to appear on ability items.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/customise.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/player/ability_data/customise.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/customise.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/player/ability_data/customise.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/customise.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/player/ability_data/customise.mcfunction", "color": "aqua"}}}]

    # Menu header
        ## Non-admin
execute if entity @s[tag=!eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] [", "color": "gray"}, {"text": "PS - Ability Data", "color": "light_purple", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to return to ", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 1"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "dark_gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "!", "color": "gray"}, {"text": "\n\nYou do not have permission to edit the\nadmin settings for Elytras of Fire.\nContact an administrator if this is incorrect.", "color": "dark_gray"}]}}, {"text": "] [", "color": "gray"}, {"text": "US", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "!", "color": "gray"}, {"text": "\n\nYou do not have permission to edit the\nuninstall settings for Elytras of Fire.\nContact an administrator if this is incorrect.", "color": "dark_gray"}]}}, {"text": "]", "color": "gray"}]

        ## Admin Menu
execute if entity @s[tag=eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] [", "color": "gray"}, {"text": "PS - Ability Data", "color": "light_purple", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to return to ", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 1"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 2"}}, {"text": "] [", "color": "gray"}, {"text": "US", "color": "dark_aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 3"}}, {"text": "]", "color": "gray"}]

    # Separator
tellraw @s [{"text": "          =                      ", "color": "gray", "strikethrough": true}]

    # Menu options
function eoflib:config/gui/player/ability_data/tribe
function eoflib:config/gui/player/ability_data/archetype
function eoflib:config/gui/player/ability_data/activation
function eoflib:config/gui/player/ability_data/effects
function eoflib:config/gui/player/ability_data/cooldown

#endregion
