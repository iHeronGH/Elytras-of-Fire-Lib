#> eoflib:uninstall
#
# Uninstall all of Elytras of Fire.

#region
    # Reset player items
clear @a #eoflib:items{eoflib: {}}

    # Remove datapack and installed DLCs
function #eoflib:uninstall

    # Announce Removal
        ## Player-prompted delete message
execute if entity @s run tellraw @a ["", {"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"selector": "@s"}, {"text": " is deleting Elytras of Fire...", "color": "gray"}]
        ## Non-player-prompted delete message
execute unless entity @s run tellraw @a [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "] ", "color": "gray"}, "Deleting Elytras of Fire..."]

        ## Disable Datapack
datapack disable "file/EoFLib v1.0.0"

        ## Post-Delete Admin Message
tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] EoFLib and all dependencies has sucessfully been removed. If you wish to reinstall it, you can ", {"text": "click here", "color": "gold", "underlined": true, "clickEvent": {"action": "run_command", "value": "/datapack enable \"file/EoFLib v1.0.0\""}}, " and it will magically reinstall itself, or you can type the command ", {"text": "/datapack enable \"file/EoFLib v1.0.0\"", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"file/EoFLib v1.0.0\""}}, " to manually reinstall the datapack. You will have to manually install any other dependencies using ", {"text": "/datapack enable", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable "}}, ".\n\nThank you for using Elytras of Fire!"]

        ## Post-Delete Non-Admin Message
tellraw @a[tag=!eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] EoFLib and all dependencies has been uninstalled."]

#endregion
