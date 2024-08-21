#> eoflib:config/gui/player/range_display/admin
#
#

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:range_display/admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/player/range_display/admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:range_display/admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/player/range_display/admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:range_display/admin.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/player/range_display/admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## No Tribe
            ### AS: Disable Range Display
execute if predicate eoflib:settings/admin/allow_range_display unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable your held ability's range preview.\n\nYou are not a member of any tribes.", "color": "dark_gray"}}, "clickEvent": {"action": "suggest_command", "value": "/team join team"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable the ability for non-admin players to\ntoggle Range Display.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 38"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "dark_gray"}}}]

            ### AS: Enable Range Display
execute unless predicate eoflib:settings/admin/allow_range_display unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable your held ability's range preview.\n\nYou are not a member of any tribes.", "color": "dark_gray"}}, "clickEvent": {"action": "suggest_command", "value": "/team join team"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the ability for non-admin players to\ntoggle Range Display.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 38"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "dark_gray"}}}]

    # Success
        ## Disable
            ### AS: Disable Range Display
execute if predicate eoflib:settings/admin/allow_range_display if predicate eoflib:tribes/dragon if entity @s[tag=eoflib.range_display] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable your held ability's range preview.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 4"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable the ability for non-admin players to\ntoggle Range Display.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 38"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "gray"}}}]

            ### AS: Enable Range Display
execute unless predicate eoflib:settings/admin/allow_range_display if predicate eoflib:tribes/dragon if entity @s[tag=eoflib.range_display] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable your held ability's range preview.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 4"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the ability for non-admin players to\ntoggle Range Display.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 38"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "gray"}}}]

        ## Enable
            ### AS: Disable Range Display
execute if predicate eoflib:settings/admin/allow_range_display if predicate eoflib:tribes/dragon if entity @s[tag=!eoflib.range_display] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable your held ability's range preview.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 5"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable the ability for non-admin players to\ntoggle Range Display.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 38"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "gray"}}}]

            ### AS: Enable Range Display
execute unless predicate eoflib:settings/admin/allow_range_display if predicate eoflib:tribes/dragon if entity @s[tag=!eoflib.range_display] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable your held ability's range preview.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 5"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the ability for non-admin players to\ntoggle Range Display.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 38"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Range Display", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off the range preview for\nyour held ability.", "color": "gray"}}}]

#endregion
