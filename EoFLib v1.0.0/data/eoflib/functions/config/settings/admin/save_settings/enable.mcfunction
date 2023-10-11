#> eoflib:config/settings/admin/save_settings/enable
#
# Enable the persistance of admin settings on world reload.

#region
	# Enable Setting Saves
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].save_settings set value on

	# Relaunch Settings
function eoflib:config/settings/admin/confirm_admin_status

#endregion
