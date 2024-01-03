#> eoflib_raycast:raycast/ray/step
#
# Executes checks every step of the raycast, looping until certain criteria are met.

#region
    # Particles
function eoflib_raycast:raycast/ray/particle with storage eoflib_raycast:ability ability_data

    # Check for entities
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[sort=nearest, tag=!eoflib.ray_active, dx=0] run function eoflib_raycast:raycast/entity/check

    # Check for non-passable blocks
$execute unless block ~ ~ ~ $(passable_blocks) run function eoflib_raycast:raycast/block/hit
scoreboard players add #eoflib.raycast.distance eoflib.raycast 1

    # Check for raycast limit
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 if score #eoflib.raycast.distance eoflib.raycast > #eoflib.raycast.max_distance eoflib.raycast run function eoflib_raycast:raycast/end

    # Loop raycast if all above fail
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 if score #eoflib.raycast.distance eoflib.raycast <= #eoflib.raycast.max_distance eoflib.raycast positioned ^ ^ ^0.05 run function eoflib_raycast:raycast/ray/step with storage eoflib_raycast:ability ability_data

#endregion
