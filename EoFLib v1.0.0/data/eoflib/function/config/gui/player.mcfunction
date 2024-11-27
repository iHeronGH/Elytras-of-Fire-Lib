#> eoflib:config/gui/player
#
# Displays the player settings page.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/player.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/player.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/player.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/player.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/player.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/player.mcfunction", "color": "aqua"}}}]

    # Enable trigger scoreboard
scoreboard players enable @s eoflib.trigger

    # Menu header
        ## Non-admin
execute if entity @s[tag=!eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] [", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "dark_gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "!", "color": "gray"}, {"text": "\n\nYou do not have permission to edit the\nadmin settings for Elytras of Fire.\nContact an administrator if this is incorrect.", "color": "dark_gray"}]}}, {"text": "] [", "color": "gray"}, {"text": "US", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "!", "color": "gray"}, {"text": "\n\nYou do not have permission to edit the\nuninstall settings for Elytras of Fire.\nContact an administrator if this is incorrect.", "color": "dark_gray"}]}}, {"text": "]", "color": "gray"}]

        ## Admin Menu
execute if entity @s[tag=eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] [", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 2"}}, {"text": "] [", "color": "gray"}, {"text": "US", "color": "dark_aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 3"}}, {"text": "]", "color": "gray"}]

    # Separator
tellraw @s [{"text": "          =                      ", "color": "gray", "strikethrough": true}]

    # Menu options
function eoflib:config/gui/player/abilities
function eoflib:config/gui/player/ability_data
function eoflib:config/gui/player/attributes
function eoflib:config/gui/player/range_display
function eoflib:config/gui/player/pvp
function eoflib:config/gui/player/ability_handling

        ## Form Submission
# tellraw @s [{"text": "Submit Form", "color": "aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Let the developer know about any bugs,\nideas, and other things you'd like to share!", "color": "gray"}}}, {"text": "Bug Report", "hoverEvent": {"action": "show_text", "contents": {"text": "Report a bug to the developers of the\nElytras of Fire datapack.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 80"}}, "  ", {"text": "Idea Submit", "hoverEvent": {"action": "show_text", "contents": {"text": "Submit your ideas to improve the Elytras\nof Fire datapack.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 81"}}, "  ", {"text": "Other Feedback", "hoverEvent": {"action": "show_text", "contents": {"text": "Let the developers know about any feedback,\nquestions, comments, or concerns you have\nregarding the Elytras of Fire datapack.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 82"}}]

#endregion
