#> eoflib:config/settings/player/attributes/fail/not_a_dragon
#
# Prevent attribute enabling due to @s not being a dragon.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:not_a_dragon.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/attributes/fail/not_a_dragon.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:not_a_dragon.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/attributes/fail/not_a_dragon.mcfunction", "color": "aqua"}}}]

    # Announce fail
        ## Non-admin message
execute unless entity @s[tag=eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " You aren't a member of any tribes! Contact an administrator if this is incorrect.", "color": "red"}]
        ## Admin message
execute if entity @s[tag=eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " You aren't a member of any tribes! Please join one before enabling attributes.", "color": "red"}]

    # Cancel attribute enable request
scoreboard players set @s eof.attributes 0

#endregion
