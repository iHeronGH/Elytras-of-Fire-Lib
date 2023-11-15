#> eoflib:config/settings/player/abilities/enable
#
# Enable hotbar abilities.

#region
    # Enable Abilities
tag @s add eoflib.abils

    # Grant Abilities
#function #eoflib:load/global/reset/return

    # Announce Enable
execute if score @s eof.abilities matches 1 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] Abilities have been toggled ", {"text": "on", "color": "green"}, "! [", {"text": "Disable", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.abilities set 1"}}, "]"]

    # Launch Settings if Enabled from Settings
execute if score @s eof.abilities matches 2 run trigger eof.settings set 1

    # Reset Score
scoreboard players set @s eof.abilities 0

#endregion
