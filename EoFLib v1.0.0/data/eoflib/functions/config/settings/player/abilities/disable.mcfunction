#> eoflib:config/settings/player/abilities/disable
#
# Disable hotbar abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/disable.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/disable.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/disable.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/disable.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/disable.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/disable.mcfunction", "color": "aqua"}}}]

    # Disable abilities
tag @s remove eoflib.abilities

    # Remove abilities
clear @s #eoflib:items{eof_data: {}}

    # Announce disable
execute if score @s eof.abilities matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] Abilities have been toggled ", "color": "gray"}, {"text": "off", "color": "red"}, {"text": "! [", "color": "gray"}, {"text": "Enable", "color": "green", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.abilities set 1"}}, {"text": "]", "color": "gray"}]

    # Launch settings if disabled from settings
execute if score @s eof.abilities matches 2 run trigger eof.settings set 1

    # Reset score
scoreboard players set @s eof.abilities 0

#endregion
