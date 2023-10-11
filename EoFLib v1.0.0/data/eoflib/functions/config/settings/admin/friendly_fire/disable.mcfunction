#> eoflib:config/settings/admin/friendly_fire/disable
#
# Disable friendly fire.

#region
	  # Disable Friendly Fire
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].friendly_fire set value off

	# Relaunch Settings
function eoflib:config/settings/admin/confirm_admin_status

#endregion
