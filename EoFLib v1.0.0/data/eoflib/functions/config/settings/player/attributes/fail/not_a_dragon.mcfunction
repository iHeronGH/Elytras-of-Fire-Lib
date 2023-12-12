#> eoflib:config/settings/player/attributes/fail/not_a_dragon
#
# Prevent attribute enabling due to @s not being a dragon.

#region
    # Announce fail
        ## Non-Admin message
execute unless entity @s[tag=eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " You aren't a member of any tribes! Contact an administrator if this is incorrect.", "color": "red"}]
        ## Admin message
execute if entity @s[tag=eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " You aren't a member of any tribes! Please join one before enabling attributes.", "color": "red"}]

    # Cancel attribute enable request
scoreboard players set @s eof.attributes 0

#endregion
