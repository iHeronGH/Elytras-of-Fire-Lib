#> eoflib:loop/time/20t/kill_items
#
# Kills all EoF item entities.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:20t/kill_items.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/loop/time/20t/kill_items.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:20t/kill_items.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/loop/time/20t/kill_items.mcfunction", "color": "aqua"}}}]

    # Kill ability items
execute at @a if entity @e[type=item, nbt={Item: {tag: {eof_data: {}}}}, distance=..80] run kill @e[type=item, nbt={Item: {tag: {eof_data: {}}}}]

#endregion
