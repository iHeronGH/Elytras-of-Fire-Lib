#> eoflib:loop/time/20t
#
# Loop functions every 20 ticks.
#
# @context Server
# @within
#   eoflib:load
#   eoflib:loop/time/20t

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:20t.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/loop/time/20t.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:20t.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/loop/time/20t.mcfunction", "color": "aqua"}}}]

    # Loop functions
function #eoflib:timers/20t
schedule function eoflib:loop/time/20t 20t replace

#endregion
