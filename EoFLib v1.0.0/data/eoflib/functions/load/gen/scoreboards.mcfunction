#> eoflib:load/gen/scoreboards
#
# Generates essential scoreboards for Elytras of Fire Lib.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
function eoflib:load/gen/scoreboards/objectives/global
function eoflib:load/gen/scoreboards/objectives/trigger
function eoflib:load/gen/scoreboards/objectives/settings
function eoflib:load/gen/scoreboards/objectives/miscellaneous

    # Variables
function eoflib:load/gen/scoreboards/variables/global
function eoflib:load/gen/scoreboards/variables/admin_settings
function eoflib:load/gen/scoreboards/variables/uninstall_settings
function eoflib:load/gen/scoreboards/variables/numbers
function eoflib:load/gen/scoreboards/variables/game_vers
function eoflib:load/gen/scoreboards/variables/worldtime

#endregion
