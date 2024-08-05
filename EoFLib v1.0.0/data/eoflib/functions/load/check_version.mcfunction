#> eoflib:load/check_version
#
# Check server/world version to ensure compatibility.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/check_version.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:load/check_version.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/check_version.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:load/check_version.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/check_version.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:load/check_version.mcfunction", "color": "aqua"}}}]

    # Check server version
        ## Check lower bound
execute store result score $eoflib.valid_game_ver eoflib.game_ver if score $eoflib.game_ver eoflib.game_ver >= #eoflib.1_20_2 eoflib.game_ver
        ## Check upper bound
execute if score $eoflib.valid_game_ver eoflib.game_ver matches 1 store result score $eoflib.valid_game_ver eoflib.game_ver if score $eoflib.game_ver eoflib.game_ver <= #eoflib.1_20_4 eoflib.game_ver

    # Supported version
execute if score $eoflib.valid_game_ver eoflib.game_ver matches 1 run tellraw @a[tag=eoflib.admin] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "Current server data version (", "color": "gray"}, {"score": {"name": "$eoflib.game_ver", "objective": "eoflib.game_ver"}, "color": "gold"}, {"text": ") supported; continuing datapack load.", "color": "gray"}]

    # Unsupported version
        ## Announce unsupported game/datapack version
execute if score $eoflib.valid_game_ver eoflib.game_ver matches 0 run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "The current server data version (", "color": "red"}, {"score": {"name": "$eoflib.game_ver", "objective": "eoflib.game_ver"}, "color": "gold"}, {"text": ") does not support some features of this update of Elytras of Fire. Please backup and update your server to any version supported by this update (", "color": "red"}, {"score": {"name": "#eoflib.1_20_2", "objective": "eoflib.game_ver"}, "color": "gold"}, {"text": "-", "color": "red"}, {"score": {"name": "#eoflib.1_20_4", "objective": "eoflib.game_ver"}, "color": "gold"}, {"text": "), or ", "color": "red"}, {"text": "update Elytras of Fire Lib", "color": "gold", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/iHeronGH/Elytras-of-Fire-Lib"}, "hoverEvent": {"action": "show_text", "value": {"text": "Visit Elytras of Fire Lib on Github", "color": "gray"}}}, {"text": ".", "color": "red"}, {"text": "\n\nTo prevent compatibility issues, Elytras of Fire Lib and all dependencies will now be automatically uninstalled.", "color": "red"}]

        ## Uninstall datapack
execute if score $eoflib.valid_game_ver eoflib.game_ver matches 0 run function eoflib:uninstall/main

#endregion
