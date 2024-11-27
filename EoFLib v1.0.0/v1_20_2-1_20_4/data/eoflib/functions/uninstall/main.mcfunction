#> eoflib:uninstall/main
#
# Uninstall all Elytras of Fire DLCs.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:uninstall/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:uninstall/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:uninstall/main.mcfunction", "color": "aqua"}}}]

    # Announce removal
        ## Player-prompted delete message
execute if entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"selector": "@s"}, {"text": " is fully removing Elytras of Fire...", "color": "gray"}]
        ## Non-player-prompted delete message
execute unless entity @s run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F"}, {"text": "] ", "color": "gray"}, {"text": "Fully uninstalling Elytras of Fire...", "color": "red"}]

    # Reset player items
clear @a #eoflib:items

    # Remove datapack and installed DLCs
function eoflib:uninstall/forceloads
function eoflib:uninstall/storages
function eoflib:uninstall/bossbars
function eoflib:uninstall/teams
    #> THIS HAS TO BE LAST!!!!!!
function eoflib:uninstall/scoreboards

        ## Disable DLC datapacks
function #eoflib:uninstall

        ## DLC uninstall message
execute if score #eoflib.available_dlcs eoflib.dlcs matches 0 run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] eofLib and all dependencies have been uninstalled.", "color": "gray"}]
# execute if score #eoflib.available_dlcs eoflib.dlcs matches 1.. run tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "eofLib has been installed. One or more dependencies failed to correctly uninstall.", "color": "red"}]

        ## Disable datapack
datapack disable "file/eofLib v1.0.0"

        ## Post-delete admin message
tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] eofLib and all dependencies have sucessfully been removed. If you wish to reinstall it, you can ", "color": "gray"}, {"text": "click here", "color": "gold", "underlined": true, "clickEvent": {"action": "run_command", "value": "/datapack enable \"file/eofLib v1.0.0\""}}, {"text": " and it will magically reinstall itself, or you can type the command ", "color": "gray"}, {"text": "/datapack enable \"file/eofLib v1.0.0\"", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"file/eofLib v1.0.0\""}}, {"text": " to manually reinstall the datapack. You will have to manually install any other dependencies using ", "color": "gray"}, {"text": "/datapack enable", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"datapack\""}}, {"text": ".\n\nThank you for using Elytras of Fire!", "color": "gray"}]

#endregion
