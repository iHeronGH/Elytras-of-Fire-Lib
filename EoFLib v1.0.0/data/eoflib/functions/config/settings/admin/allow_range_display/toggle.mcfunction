#> eoflib:config/settings/admin/allow_range_display/toggle
#
# Toggle range display toggling for abilities.

#region
    # Globally toggle Range Display
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.allow_range_display eoflib.admin_settings unless predicate eoflib:settings/admin/allow_range_display
tag @a[tag=!eoflib.admin] remove eoflib.range_display

#endregion
