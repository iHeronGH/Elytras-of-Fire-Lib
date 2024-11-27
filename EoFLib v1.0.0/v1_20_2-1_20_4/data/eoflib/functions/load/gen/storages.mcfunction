#> eoflib:load/gen/storages
#
# Generates abstract storage containers for Elytras of Fire Lib.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:load/gen/storages.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:load/gen/storages.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/storages.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:load/gen/storages.mcfunction", "color": "aqua"}}}]

    # Create storage
#define storage eoflib:config Contains all storage-driven data for Elytras of Fire Lib.

    # Regenerate containers
        ## Ability Blacklist
execute unless predicate eoflib:settings/admin/save_settings run data modify storage eoflib:config eoflib.admin_settings.blacklist set value {ability: [], tribe: [], archetype: []}

        ## Ability Blacklist register
data modify storage eoflib:config eoflib.admin_settings.blacklist_register set value {}

        ## Ability Blacklist settings
data modify storage eoflib:config eoflib.admin_settings.blacklist_settings set value {counter: 0, total_blacklisted: 0}

#endregion
