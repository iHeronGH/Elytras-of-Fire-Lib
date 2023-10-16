#region
	# Uh... Ricardo Stuff
tellraw @s [{"text": "\nHere you go!", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Say bye to Ricardo!", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 10"}}]
execute anchored eyes positioned ^ ^ ^ if entity @e[type=item, limit=1, sort=nearest, distance=..0.4, nbt={Item: {tag: {eoflib: {}}}}] run function eoflib:loop/time/10t/kill_items

	# Bug Report
tellraw @s [{"text": "\nClick here to access the bug report form!", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Bug Report - Elytras of Fire", "color": "gold"}}, "clickEvent": {"action": "open_url", "value": "https://docs.google.com/forms/d/e/1FAIpQLSfm4wEvcERhBCxIhuzV7Gi4yX_sYCBn8zpUE2acBfyOEFW7OA/viewform?usp=sf_link"}}]

	# Reset
scoreboard players reset @s eoflib.dropped_ricardo
advancement revoke @s only eoflib:ricardo_report

#endregion
