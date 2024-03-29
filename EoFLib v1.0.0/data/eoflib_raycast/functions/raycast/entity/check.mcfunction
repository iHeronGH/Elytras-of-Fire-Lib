#> eoflib_raycast:raycast/entity/check
#
# Checks for entities hit by the raycast.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:entity/check.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib_raycast/functions/raycast/entity/check.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:entity/check.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib_raycast/functions/raycast/entity/check.mcfunction", "color": "aqua"}}}]

    # Check entity
execute if score #eoflib.raycast.hit eoflib.raycast matches 0 positioned ~-0.333 ~-0.333 ~-0.333 if entity @s[dx=0] positioned ~0.666 ~0.666 ~0.666 run function eoflib_raycast:raycast/entity/hit

#endregion
