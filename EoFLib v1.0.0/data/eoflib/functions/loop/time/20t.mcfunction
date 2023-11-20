#> eoflib:loop/time/20t
#
# Loop functions every 20 ticks.
#
# @context Server
# @within
#   eoflib:load
#   eoflib:loop/time/20t

#region
function #eoflib:timers/20t
schedule function eoflib:loop/time/20t 20t replace

#endregion
