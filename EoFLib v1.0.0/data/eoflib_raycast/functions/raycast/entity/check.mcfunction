#> eoflib_raycast:raycast/entity/check
#
# Checks for entities hit by the raycast.

#region
    # Check entity
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 positioned ~-0.333 ~-0.333 ~-0.333 if entity @s[dx=0] positioned ~0.666 ~0.666 ~0.666 run function eoflib_raycast:raycast/entity/hit

#endregion
