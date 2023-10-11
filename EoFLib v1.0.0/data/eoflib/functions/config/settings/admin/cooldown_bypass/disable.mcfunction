#> eoflib:config/settings/admin/cooldown_bypass/disable
#
# Disable the ability to bypass cooldowns from Elytras of Fire abilities.

#region
	# Disable Cooldown Bypass
execute if entity @s[tag=eoflib.admin] run tag @s remove eoflib.cd.bypass

#endregion
