#> eoflib_raycast:raycast/ray/step
#
# Executes checks every step of the raycast, looping until certain criteria are met.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:step.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/raycast/ray/step.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:step.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/raycast/ray/step.mcfunction", "color": "aqua"}}}]

    # Particles
function eoflib_raycast:raycast/ray/particle with storage eoflib_raycast:ability raycast_data

    # Check for entities
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 positioned ~-0.333 ~-0.333 ~-0.333 as @e[sort=nearest, type=!#eoflib:unaffected, tag=!eoflib.ray_active, dx=0] run function eoflib_raycast:raycast/entity/check

    # Check for non-passable blocks
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 run function eoflib_raycast:raycast/block/check with storage eoflib_raycast:ability raycast_data.blocks

    # Check for raycast limit
scoreboard players add #eoflib.raycast.distance eoflib.raycast 1
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 if score #eoflib.raycast.distance eoflib.raycast > #eoflib.raycast.max_distance eoflib.raycast run function eoflib_raycast:raycast/end

    # Loop raycast if all above fail
$execute if score #eoflib.raycast.hit eoflib.raycast matches 0 if score #eoflib.raycast.distance eoflib.raycast <= #eoflib.raycast.max_distance eoflib.raycast positioned ^ ^ ^0.05 rotated ~ ~$(arc_intensity) run function eoflib_raycast:raycast/ray/step with storage eoflib_raycast:ability raycast_data

#endregion
