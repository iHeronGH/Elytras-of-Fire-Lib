#> eoflib:config/settings/player/abilities/disable
#
# Disable hotbar abilities.

#region
	# Disable Abilities
tag @s remove eoflib.abils

	# Remove Abilities
clear @s knowledge_book{eoflib: {}}

	# Announce Disable
execute if score @s eof.abilities matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] Abilities have been toggled ", {"text": "off", "color": "red"}, "! [", {"text": "Enable", "color": "green", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.abilities set 1"}}, "]"]

	# Launch Settings if Disabled from Settings
execute if score @s eof.abilities matches 2 run trigger eof.settings set 1

	# Reset Score
scoreboard players set @s eof.abilities 0

#endregion
