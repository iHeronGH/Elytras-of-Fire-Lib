#> eoflib:config/settings/player/attributes/enable
#
# Enable tribe attibutes.

#region
    # Apply tag
tag @s add eoflib.atts

    # Set attributes
function eof:passives/main

    # Announce enable
execute if score @s eof.attributes matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] Attributes have been toggled ", "color": "gray"}, {"text": "on", "color": "green"}, {"text": "! [", "color": "gray"}, {"text": "Disable", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.attributes set 1"}}, {"text": "]", "color": "gray"}]

    # Launch settings if disabled from settings
execute if score @s eof.attributes matches 2 run trigger eof.settings set 1

    # Reset score
scoreboard players set @s eof.attributes 0

#endregion
