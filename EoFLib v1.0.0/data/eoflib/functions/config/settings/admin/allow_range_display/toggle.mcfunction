#> eoflib:config/settings/admin/allow_range_display/toggle
#
# Disable range display toggling for abilities.

#region
    # Globally Disable Range Display
execute if entity @s[tag=eoflib.admin] store success score _eoflib.admin_settings.allow_range_display eoflib.admin_settings unless predicate eoflib:settings/allow_range_display
tag @a remove eoflib.range_display

#endregion
