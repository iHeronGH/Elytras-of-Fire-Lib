#> eoflib:config/settings/admin/allow_range_display/toggle
#
# Toggle range display toggling for abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:allow_range_display/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/admin/allow_range_display/toggle.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:allow_range_display/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/admin/allow_range_display/toggle.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:allow_range_display/toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/admin/allow_range_display/toggle.mcfunction", "color": "aqua"}}}]

    # Globally toggle Range Display
execute if entity @s[tag=eoflib.admin] store success score #eoflib.admin_settings.allow_range_display eoflib.admin_settings unless predicate eoflib:settings/admin/allow_range_display
tag @a[tag=!eoflib.admin] remove eoflib.range_display

#endregion
