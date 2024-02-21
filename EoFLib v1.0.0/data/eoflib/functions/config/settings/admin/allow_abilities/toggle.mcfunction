#> eoflib:config/settings/admin/allow_abilities/toggle
#
# Toggle ability toggling for all players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:allow_abilities/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:allow_abilities/toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/toggle.mcfunction", "color": "aqua"}}}]

    # Globally disable abilities
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.allow_abilities eoflib.admin_settings unless predicate eoflib:settings/admin/allow_abilities

#endregion
