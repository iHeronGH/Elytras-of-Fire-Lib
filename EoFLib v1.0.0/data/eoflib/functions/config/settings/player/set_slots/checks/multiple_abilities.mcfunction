#> eoflib:config/settings/player/set_slots/checks/multiple_abilities
#
# Check if player has more than one type of ability.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/multiple_abilities.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/player/set_slots/checks/multiple_abilities.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/multiple_abilities.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/player/set_slots/checks/multiple_abilities.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/multiple_abilities.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/player/set_slots/checks/multiple_abilities.mcfunction", "color": "aqua"}}}]

    # Check for more than one ability
execute store result score @s eoflib.set_slot.primary run clear @s #eoflib:items[minecraft:custom_data={"eof_data": {"ability_data": {archetype: 'primary'}}}] 0
execute store result score @s eoflib.set_slot.secondary run clear @s #eoflib:items[minecraft:custom_data={"eof_data": {"ability_data": {archetype: 'secondary'}}}] 0
execute store result score @s eoflib.set_slot.tertiary run clear @s #eoflib:items[minecraft:custom_data={"eof_data": {"ability_data": {archetype: 'tertiary'}}}] 0

    # Fail check
execute unless score @s eoflib.set_slot.primary matches 1 run scoreboard players set @s eoflib.check -2
execute unless score @s eoflib.set_slot.secondary matches 1 run scoreboard players set @s eoflib.check -2
execute unless score @s eoflib.set_slot.tertiary matches 1 run scoreboard players set @s eoflib.check -2

    # Succeed check
execute if score @s eoflib.set_slot.primary matches 1 if score @s eoflib.set_slot.secondary matches 1 if score @s eoflib.set_slot.tertiary matches 1 run scoreboard players set @s eoflib.check 1

    # Announce fail
execute if score @s eoflib.check matches -2 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Slots failed to save as multiple of one or more ability types exists in your inventory. ", "color": "red"}, {"text": "[", "color": "gray"}, {"text": "Toggle", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle abilities.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.abilities"}}, {"text": "]", "color": "gray"}]

#endregion
