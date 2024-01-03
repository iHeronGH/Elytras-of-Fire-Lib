#> eoflib:config/settings/player/abilities/fail/occupied_slots
#
# Prevent ability enabling due to @s having occupied ability slots.

#region
    # Announce fail
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Your abilities cannot be enabled as there is something occupying the ability slots.", "color": "red"}]

    # Cancel ability toggle request
scoreboard players set @s eof.abilities 0

#endregion
