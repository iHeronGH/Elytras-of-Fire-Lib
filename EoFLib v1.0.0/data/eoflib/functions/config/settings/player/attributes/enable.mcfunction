#> eoflib:config/settings/player/attributes/enable
#
# Enable tribe attibutes.

#region
	# Apply Tag
tag @s add eoflib.atts

	# Set Attributes
function eof:effects/main

	# Announce Enable
execute if score @s eof.attributes matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] Attributes have been toggled ", {"text": "on", "color": "green"}, "! [", {"text": "Disable", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.attributes set 1"}}, "]"]

	# Launch Settings if Disabled from Settings
execute if score @s eof.attributes matches 2 run trigger eof.settings set 1

	# Reset Score
scoreboard players set @s eof.attributes 0

#endregion
