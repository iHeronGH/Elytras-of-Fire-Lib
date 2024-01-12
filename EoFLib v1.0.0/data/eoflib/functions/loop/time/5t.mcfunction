#> eoflib:loop/time/5t
#
# Loop functions every 5 ticks.
#
# @context Server
# @within
#   eoflib:load
#   eoflib:loop/time/5t

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:time/5t.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/loop/time/5t.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:time/5t.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/loop/time/5t.mcfunction", "color": "aqua"}}}]

    # Loop functions
function #eoflib:timers/5t
schedule function eoflib:loop/time/5t 5t replace

#endregion
