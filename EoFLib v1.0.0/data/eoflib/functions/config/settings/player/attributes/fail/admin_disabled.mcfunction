#> eoflib:config/settings/player/attributes/fail/admin_disabled
#
# Prevent attribute enabling due to abilities being disabled in the settings.

#region
tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, "F", {"text": "] ", "color": "gray"}, {"text": "Attributes are globally disabled! Contact an administrator if this is incorrect.", "color": " red"}]

    # Cancel attribute enable request
scoreboard players set @s eof.attributes 0


#endregion
