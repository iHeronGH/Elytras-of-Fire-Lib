#> eoflib:config/settings/admin/reset
#
# Reset all admin settings to their default states.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/reset.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/reset.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/reset.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/reset.mcfunction", "color": "aqua"}}}]

    # Regenerate storage
function eoflib:load/gen/scoreboards/admin_settings
function eoflib:load/gen/scoreboards/uninstall_settings
trigger eof.settings set 2

    # Announce defaulted settings
        ## Player-prompted Settings Default
execute if entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Admin Settings for Elytras of Fire have been set to their default by "}, {"selector": "@s", "color": "aqua"}, {"text": ".", "color": "gold"}]

        ## Non-player-prompted Settings Default
execute unless entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Admin Settings for Elytras of Fire have been set to their default.", "color": "gold"}]

#endregion
