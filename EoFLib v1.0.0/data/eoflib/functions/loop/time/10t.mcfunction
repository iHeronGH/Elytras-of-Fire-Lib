#> eoflib:loop/time/10t
#
# Loop functions every 10 ticks.
#
# @context Server
# @within
#   eoflib:load
#   eoflib:loop/time/10t

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:time/10t.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/loop/time/10t.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:time/10t.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/loop/time/10t.mcfunction", "color": "aqua"}}}]

    # Loop functions
function #eoflib:timers/10t
schedule function eoflib:loop/time/10t 10t replace

#endregion
