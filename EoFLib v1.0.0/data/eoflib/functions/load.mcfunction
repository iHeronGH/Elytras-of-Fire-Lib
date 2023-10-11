#> eoflib:load
#
# Initialise EoFLib.

#region
	# Generate vitals
function #eoflib:load/gen/forceloads
function #eoflib:load/gen/scoreboards
function #eoflib:load/gen/storage
function #eoflib:load/gen/teams

	# Clear and rerun schedules
schedule clear eoflib:loop/time/1t
schedule clear eoflib:loop/time/5t
schedule clear eoflib:loop/time/10t
function eoflib:loop/time/1t
function eoflib:loop/time/5t
function eoflib:loop/time/10t

	# Successful launch message
function eoflib:load/hw

#endregion
