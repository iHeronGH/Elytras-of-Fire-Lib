#> eoflib:config/settings/uninstall/scoreboards/toggle
#
# Toggle the persistance of scoreboards on uninstall.

#region
    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.uninstall_settings.scoreboards eoflib.uninstall_settings unless predicate eoflib:settings/uninstall/scoreboards

#endregion
