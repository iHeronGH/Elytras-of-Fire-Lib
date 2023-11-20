#> eoflib:config/settings/admin/deactivation_timer/toggle
#
# Disable the ability deactivation timer.

#region
    # Disable Ability Deactivation Timer
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.ability_timer eoflib.admin_settings unless predicate eoflib:settings/ability_timer

#endregion
