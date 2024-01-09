#> eoflib:abilities/return/main
#
# Return used abilities to player and reinitialise for reuse.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:abilities/return/main.mcf", "color": "gold"}]

    # Return abilities
trigger eof.abilities set 3

    # Revoke advancement
advancement revoke @s only eoflib:ability_used

    # Revoke recipes
recipe take @s eoflib:primary
recipe take @s eoflib:secondary
recipe take @s eoflib:tertiary

#endregion
