#> eoflib:load/report/feedback
#
# Unused function

#region
    # Debug
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/feedback.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/report/feedback.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/feedback.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/report/feedback.mcfunction", "color": "aqua"}}}]

    # Share Link
tellraw @s [{"text": "\nClick here to access the feedback submission form!", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Feedback Submission - Elytras of Fire", "color": "gold"}}, "clickEvent": {"action": "open_url", "value": ""}}]

#endregion
