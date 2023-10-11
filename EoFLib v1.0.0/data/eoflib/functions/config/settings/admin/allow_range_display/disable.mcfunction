#> eoflib:config/settings/admin/allow_range_display/disable
#
# Disable range display toggling for abilities.

#region
	# Globally Disable Range Display
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].allow_range_display set value off
tag @a remove eoflib.range_display

#endregion
