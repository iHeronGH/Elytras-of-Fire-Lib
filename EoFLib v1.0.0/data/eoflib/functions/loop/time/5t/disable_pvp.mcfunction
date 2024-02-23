#> eoflib:loop/time/5t/disable_pvp
#
# Disables abilities and enabling of abilities for non-operator players.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:5t/disable_pvp.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/loop/time/5t/disable_pvp.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:5t/disable_pvp.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/loop/time/5t/disable_pvp.mcfunction", "color": "aqua"}}}]

    # Disable abilities
execute unless predicate eoflib:settings/admin/allow_pvp if entity @a[tag=!eoflib.pvp_disabled, tag=!eoflib.admin] run tag @a[tag=!eoflib.pvp_disabled, tag=!eoflib.admin] remove eoflib.pvp

#endregion
