#> eoflib:load
#
# Initialise EoFLib.

#region
    # Generate vitals
function #eoflib:load/gen/teams
function #eoflib:load/gen/storage
function #eoflib:load/gen/scoreboards
function #eoflib:load/gen/forceloads

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
