#> eoflib:load/del/scoreboards
#
# Delete the Elytras of Fire scoreboards.

#region
	# Scoreboards
		## Global Objectives
scoreboard objectives remove eoflib.dlcs
scoreboard objectives remove eoflib.id
scoreboard objectives remove eoflib.health
scoreboard objectives remove eoflib.numbers
scoreboard objectives remove eoflib.worldtime
scoreboard objectives remove eoflib.leave_game
scoreboard objectives remove eoflib.death

		## Trigger Objectives
scoreboard objectives remove eof.abilities
scoreboard objectives remove eof.attributes
scoreboard objectives remove eof.settings
scoreboard objectives remove eoflib.trigger

		## Miscellaneous Objectives
scoreboard objectives remove eoflib.dropped_ability_item
scoreboard objectives remove eoflib.dropped_ricardo

#endregion
