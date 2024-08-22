#> eoflib:config/settings/player/set_slots/checks/no_ability_found
#
# Check if player has any abilities in their inventory.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/no_ability_found.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/player/set_slots/checks/no_ability_found.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/no_ability_found.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/player/set_slots/checks/no_ability_found.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/no_ability_found.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/player/set_slots/checks/no_ability_found.mcfunction", "color": "aqua"}}}]

    # Check for any abilities
execute store success score @s eoflib.set_slot.primary run clear @s #eoflib:items{eof_data: {ability_data: {archetype: 'primary'}}} 0
execute store success score @s eoflib.set_slot.secondary run clear @s #eoflib:items{eof_data: {ability_data: {archetype: 'secondary'}}} 0
execute store success score @s eoflib.set_slot.tertiary run clear @s #eoflib:items{eof_data: {ability_data: {archetype: 'tertiary'}}} 0

    # Fail check
execute unless score @s eoflib.set_slot.primary matches 1 run scoreboard players set @s eoflib.check -1
execute unless score @s eoflib.set_slot.secondary matches 1 run scoreboard players set @s eoflib.check -1
execute unless score @s eoflib.set_slot.tertiary matches 1 run scoreboard players set @s eoflib.check -1

    # Succeed check
execute if score @s eoflib.set_slot.primary matches 1 if score @s eoflib.set_slot.secondary matches 1 if score @s eoflib.set_slot.tertiary matches 1 run scoreboard players set @s eoflib.check 1

    # Announce fail
execute if score @s eoflib.check matches -1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Slots failed to save as one or more abilities is missing from your inventory. ", "color": "red"}, {"text": "[", "color": "gray"}, {"text": "Toggle", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle abilities.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.abilities"}}, {"text": "]", "color": "gray"}]

#endregion
