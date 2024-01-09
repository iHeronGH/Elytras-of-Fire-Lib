#> eoflib:config/settings/admin/allow_abilities/toggle
#
# Toggle ability toggling for all players.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:toggle.mcf.mcf", "color": "gold"}]

    # Globally disable abilities
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.allow_abilities eoflib.admin_settings unless predicate eoflib:settings/admin/allow_abilities

    # Begin loop to clear abilities from players who still have them
execute if entity @s[tag=eoflib.admin] run function eoflib:loop/time/5t/disable_abilities

#endregion
