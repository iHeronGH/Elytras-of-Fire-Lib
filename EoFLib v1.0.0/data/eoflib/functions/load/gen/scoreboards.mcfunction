#> eoflib:load/gen/scoreboards
#
# Generates essential scoreboards for Elytras of Fire Lib.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
function eoflib:load/gen/scoreboards/objectives/global
function eoflib:load/gen/scoreboards/objectives/trigger
function eoflib:load/gen/scoreboards/objectives/settings
function eoflib:load/gen/scoreboards/objectives/miscellaneous

    # Variables
function eoflib:load/gen/scoreboards/variables/global
function eoflib:load/gen/scoreboards/variables/uninstall_settings
function eoflib:load/gen/scoreboards/variables/admin_settings
function eoflib:load/gen/scoreboards/variables/numbers
function eoflib:load/gen/scoreboards/variables/game_vers
function eoflib:load/gen/scoreboards/variables/worldtime

#endregion
