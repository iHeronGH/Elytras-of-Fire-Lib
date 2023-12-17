#> eoflib:advancement/death
#
# Run commands when a player dies.

#region
    # Rejoin commands
function #eoflib:advancement/death

    # Reset
scoreboard players reset @s eoflib.death
advancement revoke @s only eoflib:death

#endregion
