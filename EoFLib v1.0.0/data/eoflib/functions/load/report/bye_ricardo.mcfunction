#> eoflib:load/report/bye_ricardo
#
# Buh-bye, Ricardo!

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:bye_ricardo.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load/report/bye_ricardo.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:bye_ricardo.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load/report/bye_ricardo.mcfunction", "color": "aqua"}}}]

    # Bye Ricardo!
tellraw @s [{"text": "Buh-bye, ", "color": "gray"}, {"selector": "@s", "color": "aqua"}, "!"]

#endregion
