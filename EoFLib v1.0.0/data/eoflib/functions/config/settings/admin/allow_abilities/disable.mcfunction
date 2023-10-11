#> eoflib:config/settings/admin/allow_abilities/disable
#
# Disable ability toggling for all players.

#region
	# Globally Disable Abilities
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].allow_abilities set value off

	# Begin loop to clear abilities from players who still have them
execute if entity @s[tag=eoflib.admin] run function eoflib:loop/time/5t/disable_abilities

#endregion
