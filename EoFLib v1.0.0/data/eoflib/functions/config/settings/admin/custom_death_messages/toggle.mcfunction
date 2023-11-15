#> eoflib:config/settings/admin/custom_death_messages/toggle
#
# Disable the custom death messages feature.

#region
      # Disable Custom Death Messages
execute if entity @s[tag=eoflib.admin] store success score _eoflib.admin_settings.custom_deaths eoflib.admin_settings if score _eoflib.admin_settings.custom_deaths eoflib.admin_settings matches 0

#endregion
