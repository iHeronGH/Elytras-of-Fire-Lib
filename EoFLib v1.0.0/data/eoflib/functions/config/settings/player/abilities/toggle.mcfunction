#> eoflib:config/settings/player/abilities/toggle
#
# Toggle on or off hotbar abilities.

#region
    # Disable abilities
execute if entity @s[tag=eoflib.abils, scores={eof.abilities=1..}] run function eoflib:config/settings/player/abilities/disable

    # Enable abilities
execute if entity @s[tag=!eoflib.abils, scores={eof.abilities=1..}] run function eoflib:config/settings/player/abilities/checks

#endregion
