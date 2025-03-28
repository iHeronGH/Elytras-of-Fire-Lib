#> eoflib:config/settings/admin/reset
#
# Reset all admin settings to their default states.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/reset.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/admin/reset.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/reset.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/admin/reset.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/reset.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/admin/reset.mcfunction", "color": "aqua"}}}]

    # Regenerate storage
scoreboard players set #eoflib.admin_settings.save_settings eoflib.admin_settings 0
function eoflib:load/gen/scoreboards/variables/uninstall_settings
function eoflib:load/gen/scoreboards/variables/admin_settings
trigger eof.settings set 2

    # Announce defaulted settings
        ## Player-prompted Settings Default
execute if entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Admin Settings for Elytras of Fire have been set to their default by ", "color": "gold"}, {"selector": "@s", "color": "aqua"}, {"text": ".", "color": "gold"}]

        ## Non-player-prompted Settings Default
execute unless entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Admin Settings for Elytras of Fire have been set to their default.", "color": "gold"}]

#endregion
