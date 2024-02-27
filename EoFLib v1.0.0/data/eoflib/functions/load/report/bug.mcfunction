#> eoflib:load/report/bug
#
# Report a bug via Google Forms.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/bug.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/report/bug.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:report/bug.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/report/bug.mcfunction", "color": "aqua"}}}]

    # Uh... Ricardo Stuff
tellraw @s [{"text": "\nHere you go!", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Say bye to Ricardo!", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 10"}}]
execute anchored eyes positioned ^ ^ ^ if entity @e[sort=nearest, limit=1, type=item, nbt={Item: {tag: {eof_data: {}}}}, distance=..0.4] run function eoflib:loop/time/20t/kill_items

    # Bug Report
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, "F", {"text": "] ", "color": "gray"}, {"text": "Click here to access the bug report form!", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Bug Report - Elytras of Fire", "color": "gold"}}, "clickEvent": {"action": "open_url", "value": "https://docs.google.com/forms/d/e/1FAIpQLSfm4wEvcERhBCxIhuzV7Gi4yX_sYCBn8zpUE2acBfyOEFW7OA/viewform?usp=sf_link"}}]

    # Reset
scoreboard players reset @s eoflib.dropped_ricardo
advancement revoke @s only eoflib:ricardo_report

#endregion
