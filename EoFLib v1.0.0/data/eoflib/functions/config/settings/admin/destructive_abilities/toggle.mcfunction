#> eoflib:config/settings/admin/destructive_abilities/toggle
#
# Disable the destructive effects of some abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/destructive_abilities/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/destructive_abilities/toggle.mcfunction", "color": "aqua"}}}]

    # Disable Destructive Effects
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.destructive_abilities eoflib.admin_settings unless predicate eoflib:settings/admin/destructive_abilities

#endregion
