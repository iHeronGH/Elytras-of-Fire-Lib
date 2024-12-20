#> eoflib:load
#
# Initialise eofLib.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:function/load.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:load.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:function/load.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:load.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:function/load.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:load.mcfunction", "color": "aqua"}}}]

    # Generate vitals
function #eoflib:load/gen/teams
function #eoflib:load/gen/storages
function #eoflib:load/gen/scoreboards
function #eoflib:load/gen/bossbars
function #eoflib:load/gen/forceloads

    # Clear and rerun schedules
schedule clear eoflib:loop/1t
schedule clear eoflib:loop/5t
schedule clear eoflib:loop/10t
schedule clear eoflib:loop/20t
function eoflib:loop/1t
function eoflib:loop/5t
function eoflib:loop/10t
function eoflib:loop/20t

    # Successful launch message
function eoflib:load/hw

    # DLC load messages
function #eoflib:detect_dlcs

#endregion
