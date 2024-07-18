#> eoflib:config/settings/player/abilities/set_slots/checks
#
# Set player's scores from ability slots.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:set_slots/checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/set_slots/checks.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:set_slots/checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/set_slots/checks.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:set_slots/checks.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/set_slots/checks.mcfunction", "color": "aqua"}}}]

    # Initialise check
scoreboard players set @s eoflib.set_slot.check 1

    # Perform checks
        ## No Ability Found error (-1)
execute if score @s eoflib.set_slot.check matches 1 run function eoflib:config/settings/player/abilities/set_slots/checks/no_ability_found

        ## Multiple Abilities error (-2)
execute if score @s eoflib.set_slot.check matches 1 run function eoflib:config/settings/player/abilities/set_slots/checks/multiple_abilities

        ## Out of Bounds error (-3)
execute if score @s eoflib.set_slot.check matches 1 run function eoflib:config/settings/player/abilities/set_slots/checks/out_of_bounds

    # All location stores succeed
execute if score @s eoflib.set_slot.check matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Ability locations stored successfully!", "color": "aqua"}]

    # Reset stores if error code is given
execute if score @s eoflib.set_slot.check matches ..-1 run scoreboard players set @s eoflib.set_slot.primary 6
execute if score @s eoflib.set_slot.check matches ..-1 run scoreboard players set @s eoflib.set_slot.secondary 7
execute if score @s eoflib.set_slot.check matches ..-1 run scoreboard players set @s eoflib.set_slot.tertiary 8

    # Launch settings
trigger eof.settings set 1

#endregion
