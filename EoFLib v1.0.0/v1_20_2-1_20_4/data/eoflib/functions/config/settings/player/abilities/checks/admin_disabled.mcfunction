#> eoflib:config/settings/player/abilities/checks/admin_disabled
#
# Prevent ability enabling due to abilities being disabled in the settings.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:fail/admin_disabled.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/player/abilities/fail/admin_disabled.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:fail/admin_disabled.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/player/abilities/fail/admin_disabled.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:fail/admin_disabled.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/player/abilities/fail/admin_disabled.mcfunction", "color": "aqua"}}}]

    # Fail check
execute unless predicate eoflib:settings/admin/allow_abilities run scoreboard players set @s eoflib.check -2

    # Announce fail
        ## Non-admin message
execute if score @s eoflib.check matches -2 if entity @s[tag=!eoflib.admin] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Abilities are globally disabled! Contact an administrator if this is incorrect.", "color": "red"}]

        ## Admin message
execute if score @s eoflib.check matches -2 if entity @s[tag=eoflib.admin] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Abilities are globally disabled! Re-enable them in the ", "color": "red"}, {"text": "Admin Settings", "color": "gold", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "View the Admin Settings.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 2"}}, {"text": ".", "color": "red"}]


#endregion
