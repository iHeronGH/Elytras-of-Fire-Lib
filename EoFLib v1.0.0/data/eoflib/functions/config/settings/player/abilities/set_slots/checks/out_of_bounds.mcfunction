#> eoflib:config/settings/player/abilities/set_slots/checks/out_of_bounds
#
# Check if player has abilities outside their hotbar.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/out_of_bounds.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/set_slots/checks/out_of_bounds.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/out_of_bounds.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/set_slots/checks/out_of_bounds.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/out_of_bounds.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/set_slots/checks/out_of_bounds.mcfunction", "color": "aqua"}}}]

    # Check for abilities outside hotbar
execute store result score @s eoflib.set_slot.primary run data get entity @s Inventory[{tag: {eof_data: {ability_data: {type: 'primary'}}}}].Slot
execute store result score @s eoflib.set_slot.secondary run data get entity @s Inventory[{tag: {eof_data: {ability_data: {type: 'secondary'}}}}].Slot
execute store result score @s eoflib.set_slot.tertiary run data get entity @s Inventory[{tag: {eof_data: {ability_data: {type: 'tertiary'}}}}].Slot

    # Fail check
execute unless score @s eoflib.set_slot.primary matches 0..8 run scoreboard players set @s eoflib.set_slot.check -3
execute unless score @s eoflib.set_slot.secondary matches 0..8 run scoreboard players set @s eoflib.set_slot.check -3
execute unless score @s eoflib.set_slot.tertiary matches 0..8 run scoreboard players set @s eoflib.set_slot.check -3

    # Succeed check
execute if score @s eoflib.set_slot.primary matches 0..8 if score @s eoflib.set_slot.secondary matches 0..8 if score @s eoflib.set_slot.tertiary matches 0..8 run scoreboard players set @s eoflib.set_slot.check 1

    # Announce fail
execute if score @s eoflib.set_slot.check matches -3 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Slots failed to save as all abilities must be registered to a hotbar slot.", "color": "red"}]

#endregion
