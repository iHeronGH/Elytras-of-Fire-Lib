#> eoflib:abilities/return/main
#
# Return used abilities to player and reinitialise for reuse.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:return/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]
execute if entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=2..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:return/main.mcf", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/abilities/return/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:return/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]

    # Return abilities
clear @s #eoflib:items{eof_data: {}}
trigger eof.abilities set 3

    # Revoke advancements
advancement revoke @s only eoflib:ability_used

    # Kill potential ender eyes
execute anchored eyes positioned ^ ^ ^ run kill @e[sort=nearest, limit=1, type=minecraft:eye_of_ender, distance=..0.1]

#endregion
