#> eoflib_raycast:load/del/storages
#
# Remove abstract storage containers.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:del/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib_raycast/functions/load/del/storages.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:del/storages.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib_raycast/functions/load/del/storages.mcfunction", "color": "aqua"}}}]

    # Remove storage
data remove storage eoflib_raycast:ability ability_data
data remove storage eoflib_raycast:ability raycast_data

#endregion
