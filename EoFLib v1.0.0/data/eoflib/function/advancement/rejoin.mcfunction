#> eoflib:advancement/rejoin
#
# Run commands when a player rejoins the game.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/rejoin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:advancement/rejoin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/rejoin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:advancement/rejoin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/rejoin.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:advancement/rejoin.mcfunction", "color": "aqua"}}}]

    # Set ability slot scores if null
execute unless score @s eoflib.set_slot.primary = @s eoflib.set_slot.primary run scoreboard players set @s eoflib.set_slot.primary 6
execute unless score @s eoflib.set_slot.secondary = @s eoflib.set_slot.secondary run scoreboard players set @s eoflib.set_slot.secondary 7
execute unless score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.tertiary run scoreboard players set @s eoflib.set_slot.tertiary 8

    # Other namespace commands
function #eoflib:advancement/rejoin

    # Reset
scoreboard players reset @s eoflib.leave_game
advancement revoke @s only eoflib:rejoin

#endregion
