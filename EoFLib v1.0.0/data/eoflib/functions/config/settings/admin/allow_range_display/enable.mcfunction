#> eoflib:config/settings/admin/allow_range_display/enable
#
# Enable range display toggling for abilities.

#region
	# Globally Enable Range Display
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].allow_range_display set value on

#endregion
