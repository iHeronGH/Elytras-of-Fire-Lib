#> eoflib:config/settings/admin/deactivation_timer/toggle
#
# Disable the ability deactivation timer.

#region
      # Disable Ability Deactivation Timer
execute if entity @s[tag=eoflib.admin] store success score _eoflib.admin_settings.ability_timer eoflib.admin_settings if score _eoflib.admin_settings.ability_timer eoflib.admin_settings matches 0

#endregion
