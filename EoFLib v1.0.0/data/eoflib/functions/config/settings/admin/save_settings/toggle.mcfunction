#> eoflib:config/settings/admin/save_settings/toggle
#
# Disable the persistance of admin settings on world reload.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:save_settings/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/save_settings/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:save_settings/toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/save_settings/toggle.mcfunction", "color": "aqua"}}}]

    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.save_settings eoflib.admin_settings unless predicate eoflib:settings/admin/save_settings

    # Relaunch settings
trigger eof.settings set 2

#endregion
