#> eoflib:load/credits
#
# Display credits to individuals who have helped with the development of Elytras of Fire. Thank you!

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/credits.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/credits.mcfunction", "color": "aqua"}}}]
execute if entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=2..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/credits.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n\ndata/eoflib/functions/load/credits.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/credits.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/credits.mcfunction", "color": "aqua"}}}]

    # Credits for Elytras of Fire
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Credits for Elytras of Fire", "color": "gold"}]
tellraw @s [{"text": "\nThank you to ", "color": "gray"}, {"text": "Godzilla1005", "color": "gold"}, {"text": " for extensive help debugging, developing, and testing out many of the datapack's features.", "color": "gray"}]
tellraw @s [{"text": "\nThank you to ", "color": "gray"}, {"text": "Godzilla1005", "color": "gold"}, {"text": ", ", "color": "gray"}, {"text": "PhenTheFireGirl", "color": "gold"}, {"text": ", ", "color": "gray"}, {"text": "Over4247", "color": "gold"}, ", and ", {"text": "tetchytick", "color": "gold"}, {"text": " for offering their help in testing and moderating the Elytras of Fire datapack and Discord server.", "color": "gray"}]
tellraw @s [{"text": "\nThank you to ", "color": "gray"}, {"text": "PhenTheFireGirl", "color": "gold"}, {"text": ", ", "color": "gray"}, {"text": "tetchytick", "color": "gold"}, {"text": ", ", "color": "gray"}, {"text": "PeekaPlay", "color": "gold"}, {"text": ", and ", "color": "gray"}, {"text": "Fatechaser119", "color": "gold"}, {"text": " for creating wonderful textures for the Elytras of Fire abilities.", "color": "gray"}]
tellraw @s [{"text": "\nThank you to ", "color": "gray"}, {"text": "tetchytick", "color": "gold"}, {"text": " for cleaning up many written and lore elements.", "color": "gray"}]
tellraw @s [{"text": "\nThank you to the many future — and current — playtesters for the datapack.", "color": "gray"}]
tellraw @s [{"text": "\nThank you to you, ", "color": "gray"}, {"selector": "@s", "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "♥"}}, {"text": ", for installing, supporting, and using Elytras of Fire!", "color": "gray"}]

#endregion
