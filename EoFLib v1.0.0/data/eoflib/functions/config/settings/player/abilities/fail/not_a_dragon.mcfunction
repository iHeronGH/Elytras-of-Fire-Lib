#> eoflib:config/settings/player/abilities/fail/not_a_dragon
#
# Prevent ability enabling due to @s not being a dragon.

#region
tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, " You aren't a part of any tribes! Contact an administrator if this is incorrect."]

    # Cancel ability toggle request
scoreboard players set @s eof.abilities 0

#endregion
