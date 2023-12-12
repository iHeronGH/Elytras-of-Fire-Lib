#> eoflib:config/settings/admin/allow_attributes/toggle
#
# Toggle attribute toggling for all players.

#region
    # Globally toggle attributes
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.allow_attributes eoflib.admin_settings unless predicate eoflib:settings/admin/allow_attributes
execute if entity @s[tag=eoflib.admin] run function eoflib:loop/time/5t/disable_attributes

#endregion
