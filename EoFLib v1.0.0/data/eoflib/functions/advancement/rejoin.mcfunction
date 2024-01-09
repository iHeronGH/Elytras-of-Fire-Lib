#> eoflib:advancement/rejoin
#
# Run commands when a player rejoins the game.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:advancement/rejoin.mcf", "color": "gold"}]

    # Rejoin commands
function #eoflib:advancement/rejoin

    # Reset
scoreboard players reset @s eoflib.leave_game
advancement revoke @s only eoflib:rejoin

#endregion
