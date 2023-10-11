#> eoflib:config/settings/admin/allow_abilities/enable
#
# Enable ability toggling for all players.

#region
	# Globally Enable Abilities
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].allow_abilities set value on

	# Clear loop to clear abilities from players who still have them
execute if entity @s[tag=eoflib.admin] run schedule clear eoflib:loop/time/5t/disable_abilities

#endregion
