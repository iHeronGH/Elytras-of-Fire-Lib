#> eoflib:advancement/projectile_fired
#
# Run commands when a player launches a projectile.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/projectile_fired.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:advancement/projectile_fired.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/projectile_fired.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:advancement/projectile_fired.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/projectile_fired.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:advancement/projectile_fired.mcfunction", "color": "aqua"}}}]

    # Mark projectiles
execute anchored eyes positioned ^ ^ ^ at @e[sort=nearest, limit=1, type=#eoflib:projectiles, distance=..4] unless score @e[limit=1, distance=0] eoflib.id = @e[limit=1, distance=0] eoflib.id run scoreboard players operation @e[limit=1, type=#eoflib:projectiles, distance=0] eoflib.id = @s eoflib.id

    # Other namespace commands
function #eoflib:advancement/projectile_fired

    # Reset
scoreboard players reset @s eoflib.used.egg
scoreboard players reset @s eoflib.used.ender_pearl
scoreboard players reset @s eoflib.used.snowball
scoreboard players reset @s eoflib.used.bow
scoreboard players reset @s eoflib.used.crossbow
advancement revoke @s only eoflib:projectile_fired

#endregion
