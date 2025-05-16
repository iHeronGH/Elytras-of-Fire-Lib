#> eoflib:load/silly_goofy_mode/randomise_ability_slot/secondary
#
# Randomise the secondary ability slot.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/secondary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/secondary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/secondary.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/secondary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:randomise_ability_slot/secondary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:load/silly_goofy_mode/randomise_ability_slot/secondary.mcfunction", "color": "aqua"}}}]

	# Randomise slot
execute store result score @s eoflib.set_slot.secondary run random value 0..8

# tellraw @s [{"text": "P-S-T: ", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.primary"}, "color": "gold"}, {"text": "-", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.secondary"}, "color": "gold"}, {"text": "-", "color": "gold"}, {"score": {"name": "@s", "objective": "eoflib.set_slot.tertiary"}, "color": "gold"}]

    # Check for repeated slot
        # Secondary slot is the same as tertiary slot, shift 1
# execute if score @s eoflib.set_slot.secondary = @s eoflib.set_slot.tertiary unless score @s eoflib.set_slot.secondary matches 0 run tellraw @s {"text": "Your secondary ability slot is the same as your tertiary ability slot! Moving down a slot...", "color": "red"}
execute if score @s eoflib.set_slot.secondary = @s eoflib.set_slot.tertiary unless score @s eoflib.set_slot.secondary matches 0 run scoreboard players operation @s eoflib.set_slot.secondary -= #eoflib.1 eoflib.numbers
# execute if score @s eoflib.set_slot.secondary = @s eoflib.set_slot.tertiary unless score @s eoflib.set_slot.secondary matches 8 run tellraw @s {"text": "Your secondary ability slot is the same as your tertiary ability slot! Moving up one slot...", "color": "red"}
execute if score @s eoflib.set_slot.secondary = @s eoflib.set_slot.tertiary unless score @s eoflib.set_slot.secondary matches 8 run scoreboard players operation @s eoflib.set_slot.secondary += #eoflib.1 eoflib.numbers

        # Secondary slot is the same as primary slot, shift 2
# execute if score @s eoflib.set_slot.secondary = @s eoflib.set_slot.primary unless score @s eoflib.set_slot.secondary matches 0..1 run tellraw @s {"text": "Your secondary ability slot is the same as your primary ability slot! Moving down two slots...", "color": "red"}
execute if score @s eoflib.set_slot.secondary = @s eoflib.set_slot.primary unless score @s eoflib.set_slot.secondary matches 0..1 run scoreboard players operation @s eoflib.set_slot.secondary -= #eoflib.2 eoflib.numbers
# execute if score @s eoflib.set_slot.secondary = @s eoflib.set_slot.primary unless score @s eoflib.set_slot.secondary matches 7..8 run tellraw @s {"text": "Your secondary ability slot is the same as your primary ability slot! Moving up two slots...", "color": "red"}
execute if score @s eoflib.set_slot.secondary = @s eoflib.set_slot.primary unless score @s eoflib.set_slot.secondary matches 7..8 run scoreboard players operation @s eoflib.set_slot.secondary += #eoflib.2 eoflib.numbers

    # Check for occupied slot
# execute if predicate eoflib:inventory/ability/non_air_secondary_item run tellraw @s {"text": "Your secondary ability slot is occupied! Rerolling...", "color": "red"}
execute if predicate eoflib:inventory/ability/non_air_secondary_item run function eoflib:load/silly_goofy_mode/randomise_ability_slot/secondary

    # Refresh abilities
trigger eof.abilities set 3

#endregion
