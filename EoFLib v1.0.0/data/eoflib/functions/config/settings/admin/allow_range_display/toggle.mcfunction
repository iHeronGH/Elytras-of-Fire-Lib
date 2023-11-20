#> eoflib:config/settings/admin/allow_range_display/toggle
#
# Disable range display toggling for abilities.

#region
    # Globally Disable Range Display
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.allow_range_display eoflib.admin_settings unless predicate eoflib:settings/allow_range_display
tag @a[tag=!eoflib.admin] remove eoflib.range_display

#endregion
