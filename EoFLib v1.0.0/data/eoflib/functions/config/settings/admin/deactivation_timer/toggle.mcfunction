#> eoflib:config/settings/admin/deactivation_timer/toggle
#
# Disable the ability deactivation timer.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/deactivation_timer/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/deactivation_timer/toggle.mcfunction", "color": "aqua"}}}]

    # Disable Ability Deactivation Timer
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.ability_timer eoflib.admin_settings unless predicate eoflib:settings/admin/ability_timer

#endregion
