#> eoflib:config/gui/player/range_display/non_admin
#
#

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:range_display/non_admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/player/range_display/non_admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:range_display/non_admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/player/range_display/non_admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:range_display/non_admin.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/player/range_display/non_admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Globally Disabled
execute unless predicate eoflib:settings/admin/allow_range_display run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable your held ability's range preview.\n\nThis setting is disabled. Contact an\nadministrator if this is incorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "dark_gray"}}}]

        ## No Tribe
execute if predicate eoflib:settings/admin/allow_range_display unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable your held ability's range preview.\n\nYou are not a member of any tribes.\nContact an administrator if this is\nincorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "dark_gray"}}}]

    # Success
        ## Disable
execute if predicate eoflib:settings/admin/allow_range_display if predicate eoflib:tribes/dragon if entity @s[tag=eoflib.range_display] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable your held ability's range preview.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 4"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "gray"}}}]

    
        ## Enable
execute if predicate eoflib:settings/admin/allow_range_display if predicate eoflib:tribes/dragon if entity @s[tag=!eoflib.range_display] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable your held ability's range preview.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 5"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "gray"}}}]

#endregion
