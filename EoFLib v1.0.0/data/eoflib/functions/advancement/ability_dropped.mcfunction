#> eoflib:advancement/ability_dropped
#
# Return abilities when one is dropped from a player's inventory.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/ability_dropped.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:advancement/ability_dropped.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/ability_dropped.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:advancement/ability_dropped.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/ability_dropped.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:advancement/ability_dropped.mcfunction", "color": "aqua"}}}]

    # Return abilities
trigger eof.abilities set 3

    # Kill EoF items
function eoflib:loop/time/20t/kill_items

    # Other namespace functions
function #eoflib:advancement/ability_dropped

    # Reset score
scoreboard players set @s eoflib.dropped_ability_item 0

    # Revoke advancement
advancement revoke @s only eoflib:ability_dropped

#endregion
