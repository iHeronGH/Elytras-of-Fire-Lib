#> eoflib:load/gen/storages
#
# Generates abstract storage containers for Elytras of Fire Lib.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/storages.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/storages.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/storages.mcfunction", "color": "aqua"}}}]

    # Remove previous data
function eoflib:load/del/storages

    # Create storage
#define storage eoflib:config Contains all storage-driven data for Elytras of Fire Lib.

    # Regenerate containers
        ## Ability Blacklist
data modify storage eoflib:config eoflib.admin_settings.blacklist set value []
data modify storage eoflib:config eoflib.admin_settings.blacklist_settings set value {counter: 0, total_blacklisted: 0}

#endregion
