#> eoflib:advancement/rejoin
#
# Run commands when a player rejoins the game.

#region
    # Rejoin commands
function #eoflib:advancement/rejoin

    # Reset
scoreboard players reset @s eoflib.leave_game
advancement revoke @s only eoflib:rejoin

#endregion
