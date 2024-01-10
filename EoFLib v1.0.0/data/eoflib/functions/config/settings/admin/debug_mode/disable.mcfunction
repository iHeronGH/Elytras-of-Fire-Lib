#> eoflib:config/settings/admin/debug_mode/disable
#
# Disable Debug Mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:disable.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/debug_mode/disable.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:disable.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/debug_mode/disable.mcfunction", "color": "aqua"}}}]

    # Disable Debug Mode
execute if entity @s[tag=eoflib.admin] run tag @s remove eoflib.debug

#endregion
