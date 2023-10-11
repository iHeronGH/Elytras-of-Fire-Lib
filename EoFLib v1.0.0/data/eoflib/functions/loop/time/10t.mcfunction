#> eoflib:loop/time/10t
#
# Loop functions every 10 ticks.
#
# @context Server
# @within
#   eoflib:load
#   eoflib:loop/time/10t

#region
function #eoflib:timers/10t
schedule function eoflib:loop/time/10t 10t replace

#endregion
