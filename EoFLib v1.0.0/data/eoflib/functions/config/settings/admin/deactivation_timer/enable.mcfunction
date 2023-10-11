#> eoflib:config/settings/admin/deactivation_timer/enable
#
# Enable the ability deactivation timer.

#region
	  # Enable Ability Deactivation Timer
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].ability_timer set value on

#endregion
