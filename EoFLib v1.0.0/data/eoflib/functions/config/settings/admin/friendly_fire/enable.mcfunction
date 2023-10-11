#> eoflib:config/settings/admin/friendly_fire/enable
#
# Enable friendly fire.

#region
	  # Enable Friendly Fire
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].friendly_fire set value on

	# Relaunch Settings
function eoflib:config/settings/admin/confirm_admin_status

#endregion
