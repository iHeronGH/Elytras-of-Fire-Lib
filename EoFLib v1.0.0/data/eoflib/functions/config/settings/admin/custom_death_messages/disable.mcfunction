#> eoflib:config/settings/admin/custom_death_messages/disable
#
# Disable the custom death messages feature.

#region
	  # Disable Custom Death Messages
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].custom_deaths set value off

#endregion
