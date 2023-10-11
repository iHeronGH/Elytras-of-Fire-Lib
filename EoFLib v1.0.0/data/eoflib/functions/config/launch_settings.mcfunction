#> eoflib:config/launch_settings
#
# Determine which settings pages to display to the user.

#region
	# Player Settings
execute if score @s eof.settings matches 1 run function eoflib:config/run

	# Admin Settings
execute if score @s[tag=!eoflib.admin] eof.settings matches 2 run tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, " You do not have permission to edit the admin settings for Elytras of Fire. Contact an admin if this is incorrect."]
execute if score @s[tag=eoflib.admin] eof.settings matches 2 run function eoflib:config/run_admin

	# Reinitialize Settings Trigger
scoreboard players set @s eof.settings 0
scoreboard players enable @a eof.settings

#endregion
