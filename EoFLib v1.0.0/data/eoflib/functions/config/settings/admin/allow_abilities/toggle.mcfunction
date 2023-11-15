#> eoflib:config/settings/admin/allow_abilities/toggle
#
# Disable ability toggling for all players.

#region
    # Globally Disable Abilities
execute if entity @s[tag=eoflib.admin] store success score _eoflib.admin_settings.allow_abilities eoflib.admin_settings unless predicate eoflib:settings/allow_abilities

    # Begin loop to clear abilities from players who still have them
execute if entity @s[tag=eoflib.admin] run function eoflib:loop/time/5t/disable_abilities

#endregion
