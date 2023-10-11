#> eoflib:config/settings/admin/destructive_ability_effects/enable
#
# Enable the destructive effects of some abilities.

#region
	# Enable Destructive Effects
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].destructive_ability_effects set value on

	# Relaunch Settings
function eoflib:config/settings/admin/confirm_admin_status

#endregion
