#> eoflib:load/gen/storages
#
# Generates abstract storage containers for Elytras of Fire Lib.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/storages.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/storages.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/storages.mcfunction", "color": "aqua"}}}]

    # Create storage
#define storage eoflib:config Contains all storage-driven data for Elytras of Fire Lib.

    # Regenerate containers
        ## Ability Blacklist
execute unless predicate eoflib:settings/admin/save_settings run data modify storage eoflib:config eoflib.admin_settings.blacklist set value []

        ## Ability Blacklist settings
data modify storage eoflib:config eoflib.admin_settings.blacklist_settings set value {counter: 0, total_blacklisted: 0}

#endregion
