#> eoflib:advancement/projectile_fired
#
# Run commands when a player launches a projectile.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:projectile_fired.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/advancement/projectile_fired.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:projectile_fired.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/advancement/projectile_fired.mcfunction", "color": "aqua"}}}]

    # Mark projectiles and play commands
execute anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[sort=nearest, limit=1, type=#eoflib:projectiles, scores={eoflib.id=0}, distance=..4] eoflib.id = @s eoflib.id
function #eoflib:advancement/projectile_fired

    # Reset
scoreboard players reset @s eoflib.projectile.egg
scoreboard players reset @s eoflib.projectile.ender_pearl
scoreboard players reset @s eoflib.projectile.snowball
advancement revoke @s only eoflib:projectile_fired

#endregion
