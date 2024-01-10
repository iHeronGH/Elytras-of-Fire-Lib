#> eoflib:config/settings/uninstall/bossbars/toggle
#
# Toggle the persistance of bossbars on uninstall.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/uninstall/bossbars/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/uninstall/bossbars/toggle.mcfunction", "color": "aqua"}}}]

    # Toggle bossbars removal
execute if entity @s[tag=eoflib.admin] store success score #eoflib.uninstall_settings.bossbars eoflib.uninstall_settings unless predicate eoflib:settings/uninstall/bossbars

#endregion
