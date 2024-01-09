#> eoflib:config/settings/uninstall/bossbars/toggle
#
# Toggle the persistance of bossbars on uninstall.

#region
    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.uninstall_settings.bossbars eoflib.uninstall_settings unless predicate eoflib:settings/uninstall/bossbars

#endregion
