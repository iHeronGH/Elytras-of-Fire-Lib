#> eoflib:config/settings/uninstall/teams/toggle
#
# Toggle the persistance of tribe teams on uninstall.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:teams/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/uninstall/teams/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:teams/toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/uninstall/teams/toggle.mcfunction", "color": "aqua"}}}]

    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.uninstall_settings.teams eoflib.uninstall_settings unless predicate eoflib:settings/uninstall/teams

#endregion
