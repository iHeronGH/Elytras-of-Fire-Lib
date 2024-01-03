#> eoflib_raycast:raycast/start
#
# Starts a raycast at the current executing position.

#region
    # Set reference storage as ability item
data modify storage eoflib_raycast:ability {}.ability_data set from entity @s SelectedItem.tag.eof_data.ability_data

tellraw @s {"nbt": "{}", "storage": "eoflib_raycast:ability", "color": "gold"}

    # Prepare player for raycast
tag @s add eoflib.ray_active
scoreboard players set #eoflib.raycast.hit eoflib.raycast 0
scoreboard players set #eoflib.raycast.distance eoflib.raycast 0

    # Prepare scoreboards for raycast
execute store result score #eoflib.raycast.max_distance eoflib.raycast run data get storage eoflib_raycast:ability ability_data.range
scoreboard players operation #eoflib.raycast.max_distance eoflib.raycast *= #eoflib.20 eoflib.numbers

    # Fire raycast
tellraw @s {"text": "eoflib_raycast:raycast/start.mcf"}
function eoflib_raycast:raycast/ray/step with storage eoflib_raycast:ability ability_data

    # End raycast
data remove storage eoflib_raycast:ability ability_data
tag @s remove eoflib.ray_active

#endregion
