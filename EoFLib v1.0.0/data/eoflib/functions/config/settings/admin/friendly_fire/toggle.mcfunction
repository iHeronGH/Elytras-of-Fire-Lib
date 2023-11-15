#> eoflib:config/settings/admin/friendly_fire/toggle
#
# Disable friendly fire.

#region
      # Disable Friendly Fire
execute if entity @s[tag=eoflib.admin] store success score _eoflib.admin_settings.friendly_fire eoflib.admin_settings if score _eoflib.admin_settings.friendly_fire eoflib.admin_settings matches 0

    # Relaunch Settings
function eoflib:config/settings/admin/confirm_admin_status

#endregion
