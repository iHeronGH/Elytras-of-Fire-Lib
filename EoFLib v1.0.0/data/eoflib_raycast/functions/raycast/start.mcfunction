#> eoflib_raycast:raycast/start
#
# Starts a raycast at the current executing position.

#region
    # Set reference storage as ability item
$data modify storage eoflib_raycast:ability ability_data set value $(ability_data)
$data modify storage eoflib_raycast:ability raycast_data set value $(raycast_data)

    # Prepare player for raycast
tag @s add eoflib.ray_active
scoreboard players set #eoflib.raycast.hit eoflib.raycast 0
scoreboard players set #eoflib.raycast.distance eoflib.raycast 0

    # Prepare scoreboards for raycast
execute store result score #eoflib.raycast.max_distance eoflib.raycast run data get storage eoflib_raycast:ability raycast_data.range 20

    # Fire raycast
function eoflib_raycast:raycast/ray/step with storage eoflib_raycast:ability raycast_data

    # End raycast
data remove storage eoflib_raycast:ability ability_data
data remove storage eoflib_raycast:ability raycast_data
tag @s remove eoflib.ray_active

#endregion
