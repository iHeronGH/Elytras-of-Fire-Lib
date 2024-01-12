#> eoflib:abilities/return/main
#
# Return used abilities to player and reinitialise for reuse.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:return/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:return/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]

    # Return abilities
trigger eof.abilities set 3

    # Revoke advancement
advancement revoke @s only eoflib:ability_used

    # Revoke recipes
recipe take @s eoflib:primary
recipe take @s eoflib:secondary
recipe take @s eoflib:tertiary

#endregion
