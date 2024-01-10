#> eoflib:config/settings/admin/custom_deaths/toggle
#
# Disable the custom death messages feature.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/custom_deaths/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/custom_deaths/toggle.mcfunction", "color": "aqua"}}}]

    # Disable Custom Death Messages
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.custom_deaths eoflib.admin_settings unless predicate eoflib:settings/admin/custom_deaths

#endregion
