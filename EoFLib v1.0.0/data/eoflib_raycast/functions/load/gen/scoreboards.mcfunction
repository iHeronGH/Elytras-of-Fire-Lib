#> eoflib_raycast:load/gen/scoreboards
#
# Generates essential scoreboards for EoFLib:raycast.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Global Objectives
#define objective eoflib.raycast Provides usage for and handles raycasting in other datapacks.
scoreboard objectives add eoflib.raycast dummy

#endregion
