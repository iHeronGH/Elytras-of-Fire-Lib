#> eoflib:loop/time/5t
#
# Loop functions every 5 ticks.
#
# @context Server
# @within
#   eoflib:load
#   eoflib:loop/time/5t

#region
function #eoflib:timers/5t
schedule function eoflib:loop/time/5t 5t replace

#endregion
