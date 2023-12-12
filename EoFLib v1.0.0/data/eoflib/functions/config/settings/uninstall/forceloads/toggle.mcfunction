#> eoflib:config/settings/uninstall/forceloads/toggle
#
# Toggle the persistance of forceloads on uninstall.

#region
    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.uninstall_settings.forceloads eoflib.uninstall_settings unless predicate eoflib:settings/uninstall/forceloads

#endregion
