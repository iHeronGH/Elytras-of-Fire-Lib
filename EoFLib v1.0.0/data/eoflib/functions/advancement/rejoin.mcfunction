#> eoflib:advancement/rejoin
#
# Run commands when a player rejoins the game.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/rejoin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/advancement/rejoin.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/rejoin.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/advancement/rejoin.mcfunction", "color": "aqua"}}}]

    # Rejoin commands
function #eoflib:advancement/rejoin

    # Reset
scoreboard players reset @s eoflib.leave_game
advancement revoke @s only eoflib:rejoin

#endregion
