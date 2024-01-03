#> eoflib_raycast:raycast/entity/check
#
# Checks for entities hit by the raycast.

#region
    # Test
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function eoflib_raycast:raycast/entity/hit
