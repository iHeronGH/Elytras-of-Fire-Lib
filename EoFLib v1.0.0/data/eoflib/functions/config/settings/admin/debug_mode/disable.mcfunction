#> eoflib:config/settings/admin/debug_mode/disable
#
# Disable Debug Mode.

#region
    # Disable Debug Mode
execute if entity @s[tag=eoflib.admin] run tag @s remove eoflib.debug

#endregion
