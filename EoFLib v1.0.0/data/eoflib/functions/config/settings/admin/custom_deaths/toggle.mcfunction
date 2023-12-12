#> eoflib:config/settings/admin/custom_deaths/toggle
#
# Disable the custom death messages feature.

#region
    # Disable Custom Death Messages
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.custom_deaths eoflib.admin_settings unless predicate eoflib:settings/admin/custom_deaths

#endregion
