#> eoflib:config/settings/player/attributes/toggle
#
# Toggle on or off tribe attributes.

#region
    # Disable Attributes
execute if entity @s[tag=eoflib.atts, scores={eof.attributes=1..}] run function eoflib:config/settings/player/attributes/disable

    # Enable Attributes
execute if entity @s[tag=!eoflib.atts, scores={eof.attributes=1..}] run function eoflib:config/settings/player/attributes/checks

#endregion
