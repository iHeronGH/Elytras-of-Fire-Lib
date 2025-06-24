#> eoflib:load/report/idea
#
# 

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/idea.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:load/report/idea.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/idea.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:load/report/idea.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/idea.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:load/report/idea.mcfunction", "color": "aqua"}}}]

    # Share Link
tellraw @s [{"text": "\nClick here to access the idea submission form!", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "Idea Submission - Elytras of Fire", "color": "gold"}}, "click_event": {"action": "open_url", "url": "https://docs.google.com/forms/d/e/1FAIpQLSehOEMbxBp2QxlSGPE55Tf8px2j8kDGRudtOp8lxe5b6WqbBQ/viewform?usp=sf_link"}}]

#endregion
