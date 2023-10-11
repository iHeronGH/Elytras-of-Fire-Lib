#> eoflib:config/settings/admin/deactivation_timer/disable
#
# Disable the ability deactivation timer.

#region
	  # Disable Ability Deactivation Timer
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].ability_timer set value off

#endregion
