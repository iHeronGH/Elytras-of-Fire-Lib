#> eoflib:config/settings/admin/allow_attributes/enable
#
# Enable attribute toggling for all players.

#region
	# Globally Enable Attributes
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].allow_attributes set value on
execute if entity @s[tag=eoflib.admin] run schedule clear eoflib:loop/time/5t/disable_attributes

#endregion
