#> eoflib:config/settings/player/abilities/fail/occupied_slots
#
# Prevent ability enabling due to @s having occupied ability slots.

#region
tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, " Your abilities cannot be enabled as there is something occupying the ability slots."]

    # Cancel ability toggle request
scoreboard players set @s eof.abilities 0

#endregion
