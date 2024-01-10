#> eoflib:config/settings/player/attributes/enable
#
# Enable tribe attibutes.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:enable.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/attributes/enable.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:enable.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/attributes/enable.mcfunction", "color": "aqua"}}}]

    # Apply tag
tag @s add eoflib.atts

    # Set attributes
function #eoflib:reset/passives

    # Announce enable
execute if score @s eof.attributes matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] Attributes have been toggled ", "color": "gray"}, {"text": "on", "color": "green"}, {"text": "! [", "color": "gray"}, {"text": "Disable", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.attributes set 1"}}, {"text": "]", "color": "gray"}]

    # Launch settings if disabled from settings
execute if score @s eof.attributes matches 2 run trigger eof.settings set 1

    # Reset score
scoreboard players set @s eof.attributes 0

#endregion
