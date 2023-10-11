#> eoflib:config/settings/admin/custom_death_messages/enable
#
# Enable the custom death messages feature.

#region
	  # Enable Custom Death Messages
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].custom_deaths set value on

	# Relaunch Settings
function eoflib:config/settings/admin/confirm_admin_status

#endregion
