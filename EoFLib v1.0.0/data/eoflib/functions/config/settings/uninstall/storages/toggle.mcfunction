#> eoflib:config/settings/uninstall/storages/toggle
#
# Toggle the persistance of storages on uninstall.

#region
    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.uninstall_settings.storages eoflib.uninstall_settings unless predicate eoflib:settings/uninstall/storages

#endregion
