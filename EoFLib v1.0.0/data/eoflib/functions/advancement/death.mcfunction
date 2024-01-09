#> eoflib:advancement/death
#
# Run commands when a player dies.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:advancement/death.mcf", "color": "gold"}]

    # Rejoin commands
function #eoflib:advancement/death

    # Reset
scoreboard players reset @s eoflib.death
advancement revoke @s only eoflib:death

#endregion
