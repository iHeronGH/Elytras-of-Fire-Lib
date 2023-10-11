#> eoflib:config/settings/admin/cooldown_bypass/enable
#
# Enable the ability to bypass cooldowns from Elytras of Fire abilities.

#region
	# Enable Cooldown Bypass
execute if entity @s[tag=eoflib.admin] run tag @s add eoflib.cd.bypass
function eoflib:config/settings/admin/cooldown_bypass/bypass

	# Relaunch Settings
function eoflib:config/settings/admin/confirm_admin_status

#endregion
