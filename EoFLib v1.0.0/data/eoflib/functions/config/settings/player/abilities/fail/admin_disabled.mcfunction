#> eoflib:config/settings/player/abilities/fail/admin_disabled
#
# Prevent ability enabling due to abilities being disabled in the settings.

#region
tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, " Abilities are globally disabled! Contact an administrator if this is incorrect."]

	# Cancel ability toggle request
scoreboard players set @s eof.abilities 0


#endregion
