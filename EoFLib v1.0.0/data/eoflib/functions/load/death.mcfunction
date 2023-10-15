#> eoflib:load/death
#
# Run commands when a player dies.

#region
	# Rejoin commands
function #eoflib:death

	# Reset
scoreboard players reset @s eoflib.death
advancement revoke @s only eoflib:death

#endregion
