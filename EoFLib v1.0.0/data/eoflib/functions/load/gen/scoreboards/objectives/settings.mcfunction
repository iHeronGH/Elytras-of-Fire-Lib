#> eoflib:load/gen/scoreboards/objectives/settings
#
# Initialise settings objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/objectives/settings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/settings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/objectives/settings.mcfunction", "color": "aqua"}}}]

    # Settings
#define objective eoflib.admin_settings Contains admin settings in scoreboard format.
scoreboard objectives add eoflib.admin_settings dummy

#define objective eoflib.admin_settings Contains uninstall settings in scoreboard format.
scoreboard objectives add eoflib.uninstall_settings dummy

#endregion
