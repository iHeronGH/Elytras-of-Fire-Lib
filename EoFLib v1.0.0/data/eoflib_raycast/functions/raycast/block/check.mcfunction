#> eoflib_raycast:raycast/block/check
#
# Checks if current location is allowed passthrough by ability.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:block/check.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/raycast/block/check.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib_raycast:block/check.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib_raycast/functions/raycast/block/check.mcfunction", "color": "aqua"}}}]

    # Check location
$execute unless block ~ ~ ~ $(passthrough) run function eoflib_raycast:raycast/block/hit

#endregion
