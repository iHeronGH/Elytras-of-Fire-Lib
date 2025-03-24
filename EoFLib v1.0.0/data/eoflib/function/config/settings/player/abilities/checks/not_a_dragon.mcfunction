#> eoflib:config/settings/player/abilities/checks/not_a_dragon
#
# Prevent ability enabling due to @s not being a dragon.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/not_a_dragon.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/player/abilities/checks/not_a_dragon.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/not_a_dragon.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/player/abilities/checks/not_a_dragon.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks/not_a_dragon.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/player/abilities/checks/not_a_dragon.mcfunction", "color": "aqua"}}}]

    # Fail check
execute unless predicate eoflib:tribes/dragon run scoreboard players set @s eoflib.check -1

    # Announce fail
        ## Non-admin message
execute if score @s eoflib.check matches -1 if entity @s[tag=!eoflib.admin] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " You aren't a member of any tribes! Contact an administrator if this is incorrect.", "color": "red"}]

        ## Admin message
execute if score @s eoflib.check matches -1 if entity @s[tag=eoflib.admin] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " You aren't a member of any tribes! Please ", "color": "red"}, {"text": "join a tribe", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "/team join"}}, "clickEvent": {"action": "suggest_command", "value": "/team join team"}}, {"text": " before enabling abilities.", "color": "red"}]

#endregion
