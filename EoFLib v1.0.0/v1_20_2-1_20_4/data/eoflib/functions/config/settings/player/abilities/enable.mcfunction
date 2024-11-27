#> eoflib:config/settings/player/abilities/enable
#
# Enable hotbar abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/enable.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/player/abilities/enable.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/enable.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/player/abilities/enable.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/enable.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/player/abilities/enable.mcfunction", "color": "aqua"}}}]

    # Enable abilities
tag @s add eoflib.abilities

    # Set ability slots to defaults
execute unless score @s eoflib.set_slot.primary = @s eoflib.set_slot.primary run scoreboard players set @s eoflib.set_slot.primary 6
execute unless score @s eoflib.set_slot.secondary = @s eoflib.set_slot.secondary run scoreboard players set @s eoflib.set_slot.secondary 7
execute unless score @s eoflib.set_slot.tertiary = @s eoflib.set_slot.tertiary run scoreboard players set @s eoflib.set_slot.tertiary 8

    # Grant abilities
function #eoflib:reset/abilities

    # Announce enable
execute if score @s eof.abilities matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] Abilities have been toggled ", "color": "gray"}, {"text": "on", "color": "green"}, {"text": "! [", "color": "gray"}, {"text": "Disable", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.abilities set 1"}}, {"text": "]", "color": "gray"}]

    # Launch settings if enabled from settings
execute if score @s eof.abilities matches 2 run trigger eof.settings set 1

    # Reset score
scoreboard players set @s eof.abilities 0

#endregion
