#> eoflib:advancement/projectile_fired
#
# Run commands when a player launches a projectile.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/projectile_fired.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/advancement/projectile_fired.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/projectile_fired.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/advancement/projectile_fired.mcfunction", "color": "aqua"}}}]

    # Mark projectiles and play commands
execute anchored eyes positioned ^ ^ ^ at @e[sort=nearest, limit=1, type=#eoflib:projectiles, distance=..4] unless score @e[limit=1, distance=0] eoflib.id = @e[limit=1, distance=0] eoflib.id run scoreboard players operation @e[limit=1, type=#eoflib:projectiles, distance=0] eoflib.id = @s eoflib.id
function #eoflib:advancement/projectile_fired

    # Reset
scoreboard players reset @s eoflib.projectile.egg
scoreboard players reset @s eoflib.projectile.ender_pearl
scoreboard players reset @s eoflib.projectile.snowball
scoreboard players reset @s eoflib.projectile.bow
scoreboard players reset @s eoflib.projectile.crossbow
advancement revoke @s only eoflib:projectile_fired

#endregion
