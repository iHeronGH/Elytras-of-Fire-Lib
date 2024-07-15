#> eoflib:advancement/eye_dropped
#
# Runs commands when a player drops an eye of ender.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/eye_dropped.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/advancement/eye_dropped.mcfunction", "color": "aqua"}}}]
execute if entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=2..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/eye_dropped.mcf", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/advancement/eye_dropped.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/eye_dropped.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/advancement/eye_dropped.mcfunction", "color": "aqua"}}}]

    # Check if eye is ability item
execute anchored eyes positioned ^ ^ ^ if entity @e[sort=nearest, limit=1, type=item, nbt={Item: {tag: {eof_data: {}}}}, distance=..0.4] run function eoflib:abilities/return/main

    # Reset score
scoreboard players reset @s eoflib.dropped_ability_item

    # Revoke advancement
advancement revoke @s only eoflib:eye_dropped

#endregion
