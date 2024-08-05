#> eoflib_raycast:raycast/start
#
# Starts a raycast at the current executing position.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:raycast/start.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib_raycast:raycast/start.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:raycast/start.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib_raycast:raycast/start.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:raycast/start.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib_raycast:raycast/start.mcfunction", "color": "aqua"}}}]

    # Set reference storages as ability item
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
