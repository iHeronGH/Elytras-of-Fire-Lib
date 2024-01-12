#> eoflib:config/settings/uninstall/scoreboards/toggle
#
# Toggle the persistance of scoreboards on uninstall.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/uninstall/scoreboards/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards/toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/uninstall/scoreboards/toggle.mcfunction", "color": "aqua"}}}]

    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.uninstall_settings.scoreboards eoflib.uninstall_settings unless predicate eoflib:settings/uninstall/scoreboards

#endregion
