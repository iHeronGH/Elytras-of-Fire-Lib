#> eoflib:load/check_version
#
# Check server/world version to ensure compatibility.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/check_version.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:load/check_version.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/check_version.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:load/check_version.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/check_version.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:load/check_version.mcfunction", "color": "aqua"}}}]

    # Check server version
execute store result score #eoflib.valid_game_ver eoflib.game_ver if predicate eoflib:server_version/valid_version

    # Announce check
tellraw @a[tag=eoflib.admin] [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Detected data version: ", "color": "gray"}, {"score": {"name": "#eoflib.game_ver", "objective": "eoflib.game_ver"}, "color": "gold"}]

        ## Supported version
execute if score #eoflib.valid_game_ver eoflib.game_ver matches 1 run tellraw @a[tag=eoflib.admin] [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Current server data version supported; continuing datapack load.", "color": "gray"}]

        ## Unsupported version
execute if score #eoflib.valid_game_ver eoflib.game_ver matches 0 run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "The current server data version (", "color": "red"}, {"score": {"name": "#eoflib.game_ver", "objective": "eoflib.game_ver"}, "color": "gold"}, {"text": ") does not support some features of this update of Elytras of Fire. Please backup and update your server to any version supported by this update (", "color": "red"}, {"score": {"name": "#eoflib.1_20_2", "objective": "eoflib.game_ver"}, "color": "gold", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "1.20.2", "color": "gray"}}, "clickEvent": {"action": "open_url", "value": "https://minecraft.wiki/w/Java_Edition_1.20.2"}}, {"text": "-", "color": "red"}, {"score": {"name": "#eoflib.1_20_4", "objective": "eoflib.game_ver"}, "color": "gold", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "1.20.4", "color": "gray"}}, "clickEvent": {"action": "open_url", "value": "https://minecraft.wiki/w/Java_Edition_1.20.4"}}, {"text": "), or ", "color": "red"}, {"text": "update Elytras of Fire Lib", "color": "gold", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/iHeronGH/Elytras-of-Fire-Lib"}, "hoverEvent": {"action": "show_text", "value": {"text": "Visit Elytras of Fire Lib on Github", "color": "gray"}}}, {"text": ".\n\nTo prevent compatibility issues, Elytras of Fire Lib and all dependencies will now be automatically uninstalled.", "color": "red"}]

        ## Uninstall datapack
execute if score #eoflib.valid_game_ver eoflib.game_ver matches 0 run function eoflib:uninstall/main

#endregion
