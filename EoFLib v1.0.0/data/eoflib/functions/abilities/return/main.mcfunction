#> eoflib:abilities/return/main
#
# Return used abilities to player and reinitialise for reuse.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:return/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:return/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]

    # Return abilities
clear @s #eoflib:items{eof_data: {}}
trigger eof.abilities set 3

    # Revoke advancements
advancement revoke @s only eoflib:ability_used

    # Kill potential ender eyes
execute anchored eyes positioned ^ ^ ^ run kill @e[sort=nearest, limit=1, type=minecraft:eye_of_ender, distance=..0.1]

#endregion
