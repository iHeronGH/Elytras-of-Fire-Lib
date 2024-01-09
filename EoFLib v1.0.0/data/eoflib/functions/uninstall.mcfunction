#> eoflib:uninstall
#
# Uninstall all Elytras of Fire DLCs.

#region
    # Announce Removal
        ## Player-prompted delete message
execute if entity @s run tellraw @a [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"selector": "@s"}, {"text": " is fully removing Elytras of Fire...", "color": "gray"}]
        ## Non-player-prompted delete message
execute unless entity @s run tellraw @a [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F"}, {"text": "] ", "color": "gray"}, {"text": "Fully uninstalling Elytras of Fire...", "color": "red"}]

    # Reset player items
clear @a #eoflib:items{eof_data: {}}

    # Remove datapack and installed DLCs
execute unless predicate eoflib:settings/uninstall/forceloads run function #eoflib:uninstall/forceloads
execute unless predicate eoflib:settings/uninstall/scoreboards run function #eoflib:uninstall/scoreboards
execute unless predicate eoflib:settings/uninstall/storages run function #eoflib:uninstall/storages
execute unless predicate eoflib:settings/uninstall/bossbars run function #eoflib:uninstall/bossbars
execute unless predicate eoflib:settings/uninstall/teams run function #eoflib:uninstall/teams

        ## Disable DLC datapacks
function #eoflib:uninstall

        ## DLC uninstall message
execute if score #eoflib.available_dlcs eoflib.dlcs matches 0 run tellraw @a[tag=!eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] EoFLib and all dependencies has been uninstalled.", "color": "gray"}]
execute unless score #eoflib.available_dlcs eoflib.dlcs matches 0 run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "EoFLib has been installed. One or more dependencies failed to correctly uninstall.", "color": "red"}]

        ## Disable datapack
datapack disable "file/EoFLib v1.0.0"

        ## Post-delete admin message
tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] EoFLib and all dependencies has sucessfully been removed. If you wish to reinstall it, you can ", "color": "gray"}, {"text": "click here", "color": "gold", "underlined": true, "clickEvent": {"action": "run_command", "value": "/datapack enable \"file/EoFLib v1.0.0\""}}, {"text": " and it will magically reinstall itself, or you can type the command ", "color": "gray"}, {"text": "/datapack enable \"file/EoFLib v1.0.0\"", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"file/EoFLib v1.0.0\""}}, {"text": " to manually reinstall the datapack. You will have to manually install any other dependencies using ", "color": "gray"}, {"text": "/datapack enable", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable "}}, {"text": ".\n\nThank you for using Elytras of Fire!", "color": "gray"}]

#endregion
