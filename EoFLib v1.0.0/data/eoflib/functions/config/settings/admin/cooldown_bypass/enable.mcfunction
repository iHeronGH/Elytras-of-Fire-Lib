#> eoflib:config/settings/admin/cooldown_bypass/enable
#
# Disable the ability to bypass cooldowns from Elytras of Fire abilities.

#region
    # Disable Cooldown Bypass
execute if entity @s[tag=eoflib.admin] run tag @s add eoflib.cd.bypass

#endregion
