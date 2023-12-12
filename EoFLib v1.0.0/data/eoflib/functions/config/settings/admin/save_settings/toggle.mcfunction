#> eoflib:config/settings/admin/save_settings/toggle
#
# Disable the persistance of admin settings on world reload.

#region
    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.save_settings eoflib.admin_settings unless predicate eoflib:settings/admin/save_settings

    # Relaunch settings
trigger eof.settings set 2

#endregion
