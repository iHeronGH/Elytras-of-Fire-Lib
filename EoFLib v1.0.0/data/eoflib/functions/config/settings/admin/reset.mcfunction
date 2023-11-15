#> eoflib:config/settings/admin/reset
#
# Reset all admin settings to their default states.

#region
    # Regenerate storage
function eoflib:load/gen/storage
trigger eof.settings set 2

    # Announce defaulted settings
        ## Player-prompted Settings Default
execute positioned ~ ~ ~ if entity @s run tellraw @a[tag=eoflib.admin] [{"text": "", "color": "gold"}, {"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, "o", {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, "Admin Settings for Elytras of Fire have been set to their default by ", {"selector": "@s"}, "."]
        ## Non-player-prompted Settings Default
execute positioned ~ ~ ~ unless entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] ", {"text": "Admin Settings for Elytras of Fire have been set to their default.", "color": "gold"}]

#endregion
