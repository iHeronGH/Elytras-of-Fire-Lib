#> eoflib:config/settings/admin/save_settings/toggle
#
# Disable the persistance of admin settings on world reload.

#region
    # Toggle setting persistance
execute if entity @s[tag=eoflib.admin] store success score _eoflib.admin_settings.save_settings eoflib.admin_settings if score _eoflib.admin_settings.save_settings eoflib.admin_settings matches 0

#endregion
