#> eoflib:config/settings/admin/allow_attributes/disable
#
# Disable attribute toggling for all players.

#region
	# Globally Disable Attributes
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].allow_attributes set value off
execute if entity @s[tag=eoflib.admin] run function eoflib:loop/time/5t/disable_attributes

#endregion
