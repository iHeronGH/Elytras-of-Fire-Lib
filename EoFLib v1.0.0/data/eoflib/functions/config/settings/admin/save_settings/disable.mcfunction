#> eoflib:config/settings/admin/save_settings/disable
#
# Disable the persistance of admin settings on world reload.

#region
	# Disable Setting Saves
execute if entity @s[tag=eoflib.admin] run data modify storage eoflib:config Settings[].save_settings set value off

#endregion
