#> eoflib:config/settings/admin/debug_mode/enable
#
# Enable Debug Mode.

#region
	# Enable Debug Mode
execute if entity @s[tag=eoflib.admin] run tag @s add eoflib.debug

	# Relaunch Settings
function eoflib:config/settings/admin/confirm_admin_status

#endregion
