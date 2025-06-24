#> eoflib:load/silly_goofy_mode/randomise_ability_slot/primary
#
# Randomise the primary ability slot.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/primary.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/primary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/primary.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/primary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/primary.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/primary.mcfunction", "color": "aqua"}}}]

	# Randomise slot
execute store result score @s eoflib.set_slot.primary run random value 0..8

# tellraw @s [{"text": "P-S-T: ", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.primary"}, "color": "gold"}, {"text": "-", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.secondary"}, "color": "gold"}, {"text": "-", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.tertiary"}, "color": "gold"}]

    # Check for repeated slot
        # Primary slot is the same as secondary slot, shift 1
# execute if score @s eoflib.set_slot.primary = @s eoflib.set_slot.secondary unless score @s eoflib.set_slot.primary matches 0 run tellraw @s {"text": "Your primary ability slot is the same as your secondary ability slot! Moving down a slot...", "color": "red"}
execute if score @s eoflib.set_slot.primary = @s eoflib.set_slot.secondary unless score @s eoflib.set_slot.primary matches 0 run scoreboard players operation @s eoflib.set_slot.primary -= #eoflib.1 eoflib.numbers
# execute if score @s eoflib.set_slot.primary = @s eoflib.set_slot.secondary unless score @s eoflib.set_slot.primary matches 8 run tellraw @s {"text": "Your primary ability slot is the same as your secondary ability slot! Moving up one slot...", "color": "red"}
execute if score @s eoflib.set_slot.primary = @s eoflib.set_slot.secondary unless score @s eoflib.set_slot.primary matches 8 run scoreboard players operation @s eoflib.set_slot.primary += #eoflib.1 eoflib.numbers

        # Primary slot is the same as tertiary slot, shift 2
# execute if score @s eoflib.set_slot.primary = @s eoflib.set_slot.tertiary unless score @s eoflib.set_slot.primary matches 0..1 run tellraw @s {"text": "Your primary ability slot is the same as your tertiary ability slot! Moving down two slots...", "color": "red"}
execute if score @s eoflib.set_slot.primary = @s eoflib.set_slot.tertiary unless score @s eoflib.set_slot.primary matches 0..1 run scoreboard players operation @s eoflib.set_slot.primary -= #eoflib.2 eoflib.numbers
# execute if score @s eoflib.set_slot.primary = @s eoflib.set_slot.tertiary unless score @s eoflib.set_slot.primary matches 7..8 run tellraw @s {"text": "Your primary ability slot is the same as your tertiary ability slot! Moving up two slots...", "color": "red"}
execute if score @s eoflib.set_slot.primary = @s eoflib.set_slot.tertiary unless score @s eoflib.set_slot.primary matches 7..8 run scoreboard players operation @s eoflib.set_slot.primary += #eoflib.2 eoflib.numbers

    # Check for occupied slot
# execute if predicate eoflib:inventory/ability/non_air_primary_item run tellraw @s {"text": "Your primary ability slot is occupied! Rerolling...", "color": "red"}
execute if predicate eoflib:inventory/ability/non_air_primary_item run function eoflib:load/silly_goofy_mode/randomise_ability_slot/primary

    # Refresh abilities
trigger eof.abilities set 3

#endregion
