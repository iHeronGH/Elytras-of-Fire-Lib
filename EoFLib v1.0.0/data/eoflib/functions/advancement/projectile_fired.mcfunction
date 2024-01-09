#> eoflib:advancement/projectile_fired
#
# Run commands when a player launches a projectile.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:advancement/projectile_fired.mcf", "color": "gold"}]

    # Mark projectiles and play commands
execute anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[sort=nearest, limit=1, type=#eoflib:projectiles, scores={eoflib.id=0}, distance=..4] eoflib.id = @s eoflib.id
function #eoflib:advancement/projectile_fired

    # Reset
scoreboard players reset @s eoflib.projectile.egg
scoreboard players reset @s eoflib.projectile.ender_pearl
scoreboard players reset @s eoflib.projectile.snowball
advancement revoke @s only eoflib:projectile_fired

#endregion
