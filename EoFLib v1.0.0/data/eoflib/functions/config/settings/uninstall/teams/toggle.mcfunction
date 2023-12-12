#> eoflib:config/settings/uninstall/teams/toggle
#
# Toggle the persistance of tribe teams on uninstall.

#region
    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.uninstall_settings.teams eoflib.uninstall_settings unless predicate eoflib:settings/uninstall/teams

#endregion
