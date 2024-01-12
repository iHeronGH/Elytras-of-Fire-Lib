#> eoflib_raycast:raycast/entity/hit
#
# Handles valid entity raycast hit events.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:entity/hit.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/raycast/entity/hit.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:entity/hit.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/raycast/entity/hit.mcfunction", "color": "aqua"}}}]

    # Entity successfully hit
scoreboard players set #eoflib.raycast.hit eoflib.raycast 1
function #eoflib:abilities/entity_effects/main

#endregion