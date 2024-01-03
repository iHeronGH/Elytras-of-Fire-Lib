#> eoflib:config/settings/player/abilities/enable
#
# Enable hotbar abilities.

#region
    # Enable abilities
tag @s add eoflib.abils

    # Grant abilities
function #eoflib:reset/abilities

    # Announce enable
execute if score @s eof.abilities matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] Abilities have been toggled ", "color": "gray"}, {"text": "on", "color": "green"}, {"text": "! [", "color": "gray"}, {"text": "Disable", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.abilities set 1"}}, {"text": "]", "color": "gray"}]

    # Launch settings if enabled from settings
execute if score @s eof.abilities matches 2 run trigger eof.settings set 1

    # Reset score
scoreboard players set @s eof.abilities 0

#endregion
