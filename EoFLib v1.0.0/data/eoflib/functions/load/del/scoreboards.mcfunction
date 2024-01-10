#> eoflib:load/del/scoreboards
#
# Delete the Elytras of Fire Lib scoreboards.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load/del/scoreboards.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load/del/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Global Objectives
scoreboard objectives remove eoflib.death
scoreboard objectives remove eoflib.dlcs
scoreboard objectives remove eoflib.id
scoreboard objectives remove eoflib.health
scoreboard objectives remove eoflib.hunger
scoreboard objectives remove eoflib.leave_game
scoreboard objectives remove eoflib.numbers
scoreboard objectives remove eoflib.worldtime

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
scoreboard objectives remove eoflib.projectile.egg
scoreboard objectives remove eoflib.projectile.ender_pearl
scoreboard objectives remove eoflib.projectile.snowball

#endregion
