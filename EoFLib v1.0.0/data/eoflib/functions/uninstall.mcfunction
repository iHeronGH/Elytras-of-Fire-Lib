#> eoflib:uninstall
#
# Uninstall all of Elytras of Fire.

#region
    # Reset player items
clear @a #eoflib:items{eof_data: {}}

    # Remove datapack and installed DLCs
execute unless predicate eoflib:settings/uninstall/forceloads run function #eoflib:uninstall/forceloads
execute unless predicate eoflib:settings/uninstall/scoreboards run function #eoflib:uninstall/scoreboards
execute unless predicate eoflib:settings/uninstall/storages run function #eoflib:uninstall/storages
execute unless predicate eoflib:settings/uninstall/teams run function #eoflib:uninstall/teams

    # Announce Removal
        ## Player-prompted delete message
execute if entity @s run tellraw @a [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"selector": "@s"}, {"text": " is uninstalling all Elytras of Fire...", "color": "gray"}]
        ## Non-player-prompted delete message
execute unless entity @s run tellraw @a [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F"}, {"text": "] ", "color": "gray"}, {"text": "Uninstalling Elytras of Fire...", "color": "red"}]

        ## Disable Datapack
datapack disable "file/EoFLib v1.0.0"

        ## Post-Delete Admin Message
tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] EoFLib and all dependencies has sucessfully been removed. If you wish to reinstall it, you can ", "color": "gray"}, {"text": "click here", "color": "gold", "underlined": true, "clickEvent": {"action": "run_command", "value": "/datapack enable \"file/EoFLib v1.0.0\""}}, {"text": " and it will magically reinstall itself, or you can type the command ", "color": "gray"}, {"text": "/datapack enable \"file/EoFLib v1.0.0\"", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"file/EoFLib v1.0.0\""}}, {"text": " to manually reinstall the datapack. You will have to manually install any other dependencies using ", "color": "gray"}, {"text": "/datapack enable", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable "}}, {"text": ".\n\nThank you for using Elytras of Fire!", "color": "gray"}]

        ## Post-Delete Non-Admin Message
tellraw @a[tag=!eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] EoFLib and all dependencies has been uninstalled.", "color": "gray"}]

#endregion
