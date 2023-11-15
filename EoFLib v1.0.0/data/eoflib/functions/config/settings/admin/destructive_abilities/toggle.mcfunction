#> eoflib:config/settings/admin/destructive_abilities/toggle
#
# Disable the destructive effects of some abilities.

#region
    # Disable Destructive Effects
execute if entity @s[tag=eoflib.admin] store success score _eoflib.admin_settings.destructive_abilities eoflib.admin_settings if score _eoflib.admin_settings.destructive_abilities eoflib.admin_settings matches 0

#endregion
