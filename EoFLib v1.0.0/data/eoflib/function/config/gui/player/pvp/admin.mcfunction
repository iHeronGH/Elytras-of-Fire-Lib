#> eoflib:config/gui/player/pvp/admin

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:pvp/admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/player/pvp/admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:pvp/admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/player/pvp/admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:pvp/admin.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/player/pvp/admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## No Tribe
            ### AS: Disable PVP
execute if predicate eoflib:settings/admin/allow_pvp unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable damage dealing and reception.\n\nYou are not a member of any tribes.", "color": "dark_gray"}}, "clickEvent": {"action": "suggest_command", "value": "/team join team"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable the ability for non-admin players to\ntoggle PVP.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 50"}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "dark_gray"}}}]

            ### AS: Enable PVP
execute unless predicate eoflib:settings/admin/allow_pvp unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable damage dealing and reception.\n\nYou are not a member of any tribes.", "color": "dark_gray"}}, "clickEvent": {"action": "suggest_command", "value": "/team join team"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the ability for non-admin players to\ntoggle PVP.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 50"}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "dark_gray"}}}]

    # Success
        ## Disable
            ### AS: Disable PVP
execute if predicate eoflib:settings/admin/allow_pvp if entity @s[tag=!eoflib.pvp_disabled, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable damage dealing and reception\nfor yourself.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 5"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable the ability for non-admin players to\ntoggle PVP.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 50"}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "gray"}}}]

            ### AS: Enable PVP
execute unless predicate eoflib:settings/admin/allow_pvp if entity @s[tag=!eoflib.pvp_disabled, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable damage dealing and reception\nfor yourself.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 5"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the ability for non-admin players to\ntoggle PVP.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 50"}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "gray"}}}]

    
        ## Enable
            ### AS: Disable PVP
execute if predicate eoflib:settings/admin/allow_pvp if entity @s[tag=eoflib.pvp_disabled, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable damage dealing and reception.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 5"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable the ability for non-admin players to\ntoggle PVP.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 50"}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "gray"}}}]

            ### AS: Enable PVP
execute unless predicate eoflib:settings/admin/allow_pvp if entity @s[tag=eoflib.pvp_disabled, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable damage dealing and reception.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 5"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the ability for non-admin players to\ntoggle PVP.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 50"}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "gray"}}}]

#endregion
