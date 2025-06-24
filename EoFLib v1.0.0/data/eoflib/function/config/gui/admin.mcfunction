#> eoflib:config/gui/admin
#
# Displays the administrative settings page.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/admin.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/admin.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/admin.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/admin.mcfunction", "color": "aqua"}}}]

    # Menu header
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]  [", "color": "gray"}, {"text": "PS", "color": "light_purple", "underlined": true, "hover_event": {"action": "show_text", "value":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "!", "color": "gray"}]}, "click_event": {"action": "run_command", "command": "/trigger eof.settings set 1"}}, {"text": "] [", "color": "gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "] [", "color": "gray"}, {"text": "US", "color": "dark_aqua", "underlined": true, "hover_event": {"action": "show_text", "value":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "!", "color": "gray"}]}, "click_event": {"action": "run_command", "command": "/trigger eof.settings set 3"}}, {"text": "]", "color": "gray"}]

    # Separator
tellraw @s [{"text": "                =                ", "color": "gray", "strikethrough": true}]

    # Admin options
function eoflib:config/gui/admin/save_settings
function eoflib:config/gui/admin/allow_abilities
function eoflib:config/gui/admin/allow_attributes
function eoflib:config/gui/admin/allow_pvp
function eoflib:config/gui/admin/allow_range_display
# function eoflib:config/gui/admin/deactivation_timer
function eoflib:config/gui/admin/destructive_effects
function eoflib:config/gui/admin/custom_deaths
function eoflib:config/gui/admin/friendly_fire
function eoflib:config/gui/admin/cooldown_bypass
function eoflib:config/gui/admin/debug_mode
function eoflib:config/gui/admin/silly_goofy_mode

#endregion
