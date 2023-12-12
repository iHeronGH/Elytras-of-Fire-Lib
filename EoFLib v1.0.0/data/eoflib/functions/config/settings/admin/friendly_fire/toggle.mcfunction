#> eoflib:config/settings/admin/friendly_fire/toggle
#
# Disable friendly fire.

#region
    # Disable Friendly Fire
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.friendly_fire eoflib.admin_settings unless predicate eoflib:settings/admin/friendly_fire

#endregion
