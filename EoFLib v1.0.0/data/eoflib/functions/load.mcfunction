#> eoflib:load
#
# Initialise EoFLib.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load.mcfunction", "color": "aqua"}}}]

    # Generate vitals
function #eoflib:load/gen/teams
function #eoflib:load/gen/storages
function #eoflib:load/gen/scoreboards
function #eoflib:load/gen/forceloads

    # Clear and rerun schedules
schedule clear eoflib:loop/time/1t
schedule clear eoflib:loop/time/5t
schedule clear eoflib:loop/time/10t
schedule clear eoflib:loop/time/20t
function eoflib:loop/time/1t
function eoflib:loop/time/5t
function eoflib:loop/time/10t
function eoflib:loop/time/20t

    # Successful launch message
function eoflib:load/hw

    # DLC load messages
function #eoflib:detect_dlcs

#endregion
