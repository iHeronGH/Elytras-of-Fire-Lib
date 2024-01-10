#> eoflib_raycast:raycast/block/hit
#
# Handles valid block raycast hit events.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:hit.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/raycast/block/hit.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:hit.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/raycast/block/hit.mcfunction", "color": "aqua"}}}]

    # Block successfully hit
scoreboard players set #eoflib.raycast.hit eoflib.raycast 1
function #eoflib:abilities/block_effects/main

#endregion
