#> eoflib_raycast:load/gen/storages
#
# Generate abstract storage containers.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib_raycast:storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n\ndata/eoflib_raycast/functions/load/gen/storages.mcfunction", "color": "aqua"}}}]
execute if entity @s run tellraw @a[tag=eoflib.debug, distance=0.1..] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib_raycast:storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n\ndata/eoflib_raycast/functions/load/gen/storages.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:storages.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n\ndata/eoflib_raycast/functions/load/gen/storages.mcfunction", "color": "white"}}}]

    # Generate storage
#declare storage eoflib_raycast:ability The ability to operate upon and pull raycast data from.
data merge storage eoflib_raycast:ability {ability_data: {type: '', name: '', cooldown: 0, duration: 0}, raycast_data: {arc_intensity: 0, range: 0, particle: "end_rod", blocks: {passthrough: "#eoflib:passable/general", action: "none`", influences: ""}}}

#endregion