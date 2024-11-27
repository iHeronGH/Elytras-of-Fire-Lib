#> eoflib:config/settings/player/set_slots/checks/out_of_bounds
#
# Check if player has abilities outside their hotbar.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/out_of_bounds.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/player/set_slots/checks/out_of_bounds.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/out_of_bounds.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/player/set_slots/checks/out_of_bounds.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/out_of_bounds.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/player/set_slots/checks/out_of_bounds.mcfunction", "color": "aqua"}}}]

    # Check for abilities outside hotbar
execute store result score @s eoflib.set_slot.primary run data get entity @s Inventory[{tag: {"eof_data": {"ability_data": {archetype: 'primary'}}}}].Slot
execute store result score @s eoflib.set_slot.secondary run data get entity @s Inventory[{tag: {"eof_data": {"ability_data": {archetype: 'secondary'}}}}].Slot
execute store result score @s eoflib.set_slot.tertiary run data get entity @s Inventory[{tag: {"eof_data": {"ability_data": {archetype: 'tertiary'}}}}].Slot

    # Fail check
execute unless score @s eoflib.set_slot.primary matches 0..8 unless score @s eoflib.set_slot.primary matches -106 run scoreboard players set @s eoflib.check -3
execute unless score @s eoflib.set_slot.secondary matches 0..8 unless score @s eoflib.set_slot.secondary matches -106 run scoreboard players set @s eoflib.check -3
execute unless score @s eoflib.set_slot.tertiary matches 0..8 unless score @s eoflib.set_slot.tertiary matches -106 run scoreboard players set @s eoflib.check -3

    # Succeed check
execute unless score @s eoflib.set_slot.primary matches -3 unless score @s eoflib.set_slot.secondary matches -3 unless score @s eoflib.set_slot.tertiary matches -3 run scoreboard players set @s eoflib.check 1

    # Announce fail
execute if score @s eoflib.check matches -3 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Slots failed to save as all abilities must be registered to a hotbar slot. ", "color": "red"}, {"text": "[", "color": "gray"}, {"text": "Toggle", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle abilities.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.abilities"}}, {"text": "]", "color": "gray"}]

#endregion
