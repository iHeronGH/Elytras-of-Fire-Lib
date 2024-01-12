#> eoflib:config/settings/admin/cooldown_bypass/disable
#
# Disable the ability to bypass cooldowns from Elytras of Fire abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:cooldown_bypass/disable.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/cooldown_bypass/disable.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:cooldown_bypass/disable.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/cooldown_bypass/disable.mcfunction", "color": "aqua"}}}]

    # Disable Cooldown Bypass
execute if entity @s[tag=eoflib.admin] run tag @s remove eoflib.cd.bypass

#endregion
