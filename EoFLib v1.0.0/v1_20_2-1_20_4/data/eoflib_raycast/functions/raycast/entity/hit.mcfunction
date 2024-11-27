#> eoflib_raycast:raycast/entity/hit
#
# Handles valid entity raycast hit events.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:entity/hit.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib_raycast:raycast/entity/hit.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:entity/hit.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib_raycast:raycast/entity/hit.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:entity/hit.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib_raycast:raycast/entity/hit.mcfunction", "color": "aqua"}}}]

    # Entity successfully hit
scoreboard players set #eoflib.raycast.hit eoflib.raycast 1

    # Play ability effects
execute if entity @e[tag=eoflib.ray_active, tag=eoflib.pvp_disabled] run tellraw @p[tag=eoflib.debug_mode, tag=eoflib.ray_active, tag=eoflib.pvp_disabled] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "PVP is disabled. Abilities will not have any effect on external entities.", "color": "dark_gray", "italic": true}]
execute if entity @e[tag=eoflib.ray_active, tag=!eoflib.pvp_disabled] run function #eoflib:abilities/entity_effects/main

#endregion
