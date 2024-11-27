#> eoflib:config/gui/uninstall
#
# Displays the uninstall settings page.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/uninstall.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/uninstall.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/uninstall.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/uninstall.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/uninstall.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/uninstall.mcfunction", "color": "aqua"}}}]

    # Menu header
execute unless entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": " [", "color": "gray"}, {"text": "PS", "color": "light_purple", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 1"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 2"}}, {"text": "] [", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "]", "color": "gray"}]

    # Separator
execute if entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "                                    ", "color": "gray", "strikethrough": true}]
execute unless entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "                        =           ", "color": "gray", "strikethrough": true}]

    # Uninstall options
function eoflib:config/gui/uninstall/teams
function eoflib:config/gui/uninstall/scoreboards
function eoflib:config/gui/uninstall/storages
function eoflib:config/gui/uninstall/bossbars
function eoflib:config/gui/uninstall/forceloads
function eoflib:config/gui/uninstall/uninstall_mode

#endregion
