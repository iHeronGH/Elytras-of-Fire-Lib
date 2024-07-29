#> eoflib:load/del/scoreboards
#
# Delete the Elytras of Fire Lib scoreboards.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:del/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/load/del/scoreboards.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:del/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/load/del/scoreboards.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:del/scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/load/del/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Global Objectives
scoreboard objectives remove eoflib.admin_settings
scoreboard objectives remove eoflib.death
scoreboard objectives remove eoflib.debug_mode
scoreboard objectives remove eoflib.dlcs
scoreboard objectives remove eoflib.id
scoreboard objectives remove eoflib.health
scoreboard objectives remove eoflib.hunger
scoreboard objectives remove eoflib.leave_game
scoreboard objectives remove eoflib.numbers
scoreboard objectives remove eoflib.game_ver
scoreboard objectives remove eoflib.worldtime
scoreboard objectives remove eoflib.set_slot.check
scoreboard objectives remove eoflib.set_slot.primary
scoreboard objectives remove eoflib.set_slot.secondary
scoreboard objectives remove eoflib.set_slot.tertiary

        ## Trigger Objectives
scoreboard objectives remove eof.abilities
scoreboard objectives remove eof.attributes
scoreboard objectives remove eof.settings
scoreboard objectives remove eoflib.admin_settings
scoreboard objectives remove eoflib.uninstall_settings
scoreboard objectives remove eoflib.trigger

        ## Miscellaneous Objectives
scoreboard objectives remove eoflib.dropped_ability_item
scoreboard objectives remove eoflib.dropped_ricardo
scoreboard objectives remove eoflib.used.egg
scoreboard objectives remove eoflib.used.ender_pearl
scoreboard objectives remove eoflib.used.ender_eye
scoreboard objectives remove eoflib.used.snowball
scoreboard objectives remove eoflib.used.bow
scoreboard objectives remove eoflib.used.crossbow

#endregion
