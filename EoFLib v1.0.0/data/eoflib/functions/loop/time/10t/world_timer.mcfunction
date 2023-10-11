#> eoflib:loop/time/10t/world_timer
#
# Gets the current worldtime and saves it to a scoreboard.

#region
	# World Timer
execute store result score #eoflib.current eoflib.worldtime run time query daytime

#endregion
