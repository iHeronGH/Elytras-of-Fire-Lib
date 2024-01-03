#> eoflib:config/settings/player/abilities/fail/admin_disabled
#
# Prevent ability enabling due to abilities being disabled in the settings.

#region
    # Announce fail
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Abilities are globally disabled! Contact an administrator if this is incorrect.", "color": "red"}]

    # Cancel ability toggle request
scoreboard players set @s eof.abilities 0


#endregion
