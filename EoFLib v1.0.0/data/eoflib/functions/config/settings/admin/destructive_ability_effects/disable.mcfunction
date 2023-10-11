#> eoflib:config/settings/admin/destructive_ability_effects/disable
#
# Disable the destructive effects of some abilities.

#region
	# Disable Destructive Effects
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].destructive_ability_effects set value off

#endregion
