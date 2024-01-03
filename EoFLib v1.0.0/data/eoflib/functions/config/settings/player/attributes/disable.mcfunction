#> eoflib:config/settings/player/attributes/disable
#
# Disable tribe attibutes.

#region
    # Remove tag
tag @s remove eoflib.atts

    # Announce disable
execute if score @s eof.attributes matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] Attributes have been toggled ", "color": "gray"}, {"text": "off", "color": "red"}, {"text": "! [", "color": "gray"}, {"text": "Enable", "color": "green", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.attributes set 1"}}, {"text": "]", "color": "gray"}]

    # Launch settings if disabled from settings
execute if score @s eof.attributes matches 2 run trigger eof.settings set 1

    # Reset score
scoreboard players set @s eof.attributes 0

#endregion
