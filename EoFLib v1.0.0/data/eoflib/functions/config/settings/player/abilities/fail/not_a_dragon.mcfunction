#> eoflib:config/settings/player/abilities/fail/not_a_dragon
#
# Prevent ability enabling due to @s not being a dragon.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:fail/not_a_dragon.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/player/abilities/fail/not_a_dragon.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:fail/not_a_dragon.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/player/abilities/fail/not_a_dragon.mcfunction", "color": "aqua"}}}]

    # Announce fail
        ## Non-admin message
execute unless entity @s[tag=eoflib.admin] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " You aren't a member of any tribes! Contact an administrator if this is incorrect.", "color": "red"}]
        ## Admin message
execute if entity @s[tag=eoflib.admin] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " You aren't a member of any tribes! Please join one before enabling abilities.", "color": "red"}]

    # Cancel ability toggle request
scoreboard players set @s eof.abilities 0

#endregion
