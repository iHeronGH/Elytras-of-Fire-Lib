#> eoflib:load/silly_goofy_mode/randomise_ability_slot/tertiary
#
# Randomise the tertiary ability slot.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/tertiary.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/tertiary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/tertiary.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/tertiary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/tertiary.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/tertiary.mcfunction", "color": "aqua"}}}]

	# Randomise slot
execute store result score @s eoflib.set_slot.tertiary run random value 0..8

# tellraw @s [{"text": "P-S-T: ", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.primary"}, "color": "gold"}, {"text": "-", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.secondary"}, "color": "gold"}, {"text": "-", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.tertiary"}, "color": "gold"}]

    # Check for repeated slot
        # Tertiary slot is the same as primary slot, shift 1
# execute if score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.primary unless score @s eoflib.set_slot.tertiary matches 0 run tellraw @s {"text": "Your tertiary ability slot is the same as your primary ability slot! Moving down a slot...", "color": "red"}
execute if score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.primary unless score @s eoflib.set_slot.tertiary matches 0 run scoreboard players operation @s eoflib.set_slot.tertiary -= #eoflib.1 eoflib.numbers
# execute if score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.primary unless score @s eoflib.set_slot.tertiary matches 8 run tellraw @s {"text": "Your tertiary ability slot is the same as your primary ability slot! Moving up one slot...", "color": "red"}
execute if score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.primary unless score @s eoflib.set_slot.tertiary matches 8 run scoreboard players operation @s eoflib.set_slot.tertiary += #eoflib.1 eoflib.numbers

        # Tertiary slot is the same as secondary slot, shift 2
# execute if score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.secondary unless score @s eoflib.set_slot.tertiary matches 0..1 run tellraw @s {"text": "Your tertiary ability slot is the same as your secondary ability slot! Moving down two slots...", "color": "red"}
execute if score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.secondary unless score @s eoflib.set_slot.tertiary matches 0..1 run scoreboard players operation @s eoflib.set_slot.tertiary -= #eoflib.2 eoflib.numbers
# execute if score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.secondary unless score @s eoflib.set_slot.tertiary matches 7..8 run tellraw @s {"text": "Your tertiary ability slot is the same as your secondary ability slot! Moving up two slots...", "color": "red"}
execute if score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.secondary unless score @s eoflib.set_slot.tertiary matches 7..8 run scoreboard players operation @s eoflib.set_slot.tertiary += #eoflib.2 eoflib.numbers

    # Check for occupied slot
# execute if predicate eoflib:inventory/ability/non_air_tertiary_item run tellraw @s {"text": "Your tertiary ability slot is occupied! Rerolling...", "color": "red"}
execute if predicate eoflib:inventory/ability/non_air_tertiary_item run function eoflib:load/silly_goofy_mode/randomise_ability_slot/tertiary

    # Refresh abilities
trigger eof.abilities set 3

#endregion
