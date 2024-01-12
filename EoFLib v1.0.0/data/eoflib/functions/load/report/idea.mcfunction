#> eoflib:load/report/idea
#
# 

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/idea.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load/report/idea.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/idea.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load/report/idea.mcfunction", "color": "aqua"}}}]

    # Share Link
tellraw @s [{"text": "\nClick here to access the idea submission form!", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Idea Submission - Elytras of Fire", "color": "gold"}}, "clickEvent": {"action": "open_url", "value": "https://docs.google.com/forms/d/e/1FAIpQLSehOEMbxBp2QxlSGPE55Tf8px2j8kDGRudtOp8lxe5b6WqbBQ/viewform?usp=sf_link"}}]

#endregion
