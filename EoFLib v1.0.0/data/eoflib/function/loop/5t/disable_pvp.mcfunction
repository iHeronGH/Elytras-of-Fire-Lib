#> eoflib:loop/5t/disable_pvp
#
# Disables abilities and enabling of abilities for non-operator players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=5..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:5t/disable_pvp.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:loop/5t/disable_pvp.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=5..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:5t/disable_pvp.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:loop/5t/disable_pvp.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=5..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:5t/disable_pvp.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:loop/5t/disable_pvp.mcfunction", "color": "aqua"}}}]

    # Disable abilities
execute unless predicate eoflib:settings/admin/allow_pvp if entity @a[tag=!eoflib.pvp_disabled, tag=!eoflib.admin] run tag @a[tag=!eoflib.pvp_disabled, tag=!eoflib.admin] remove eoflib.pvp

#endregion
