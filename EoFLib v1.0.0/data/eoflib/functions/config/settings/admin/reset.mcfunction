#> eoflib:config/settings/admin/reset
#
# Reset all admin settings to their default states.

#region
    # Regenerate storage
function eoflib:load/gen/scoreboards/admin_settings
trigger eof.settings set 2

    # Announce defaulted settings
        ## Player-prompted Settings Default
execute if entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Admin Settings for Elytras of Fire have been set to their default by "}, {"selector": "@s", "color": "aqua"}, {"text": ".", "color": "gold"}]

        ## Non-player-prompted Settings Default
execute unless entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Admin Settings for Elytras of Fire have been set to their default.", "color": "gold"}]

#endregion
