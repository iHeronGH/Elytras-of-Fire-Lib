#> eoflib:config/settings/admin/destructive_abilities/toggle
#
# Disable the destructive effects of some abilities.

#region
    # Disable Destructive Effects
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.destructive_abilities eoflib.admin_settings unless predicate eoflib:settings/admin/destructive_abilities

#endregion
