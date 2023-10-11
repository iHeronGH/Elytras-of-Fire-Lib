#> eoflib:config/settings/player/attributes/enable
#
# Enable tribe attibutes.

#region
	# Apply Tag
tag @s add eoflib.atts

	# Set Attributes
# execute if entity @s[predicate=eof:tribes/icewings] run function eoflib:load/local/icewings/atts/default
# execute if entity @s[predicate=eof:tribes/mudwings] run function eoflib:load/local/mudwings/atts/default
# execute if entity @s[predicate=eof:tribes/nightwings] run function eoflib:load/local/nightwings/atts/default
# execute if entity @s[predicate=eof:tribes/rainwings] run function eoflib:load/local/rainwings/atts/default
# execute if entity @s[predicate=eof:tribes/sandwings] run function eoflib:load/local/sandwings/atts/default
# execute if entity @s[predicate=eof:tribes/seawings] run function eoflib:load/local/seawings/atts/default
# execute if entity @s[predicate=eof:tribes/skywings] run function eoflib:load/local/skywings/atts/default

	# Announce Enable
execute if score @s eof.attributes matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] Attributes have been toggled ", {"text": "on", "color": "green"}, "! [", {"text": "Disable", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.attributes set 1"}}, "]"]

	# Launch Settings if Disabled from Settings
execute if score @s eof.attributes matches 2 run trigger eof.settings set 1

	# Reset Score
scoreboard players set @s eof.attributes 0

#endregion
