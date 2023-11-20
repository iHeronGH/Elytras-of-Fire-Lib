#> eoflib:config/settings/admin/allow_attributes/toggle
#
# Disable attribute toggling for all players.

#region
    # Globally Disable Attributes
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.allow_attributes eoflib.admin_settings unless predicate eoflib:settings/allow_attributes
execute if entity @s[tag=eoflib.admin] run function eoflib:loop/time/5t/disable_attributes

#endregion
