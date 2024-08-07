#> eoflib:config/settings/admin/blacklist/list/archetypes
#
# List all blacklisted archetypes.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:list/archetype.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/admin/blacklist/list/archetype.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:list/archetype.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/admin/blacklist/list/archetype.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:list/archetype.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/admin/blacklist/list/archetype.mcfunction", "color": "aqua"}}}]

    # List blacklisted tribes
        ## Set counter
$scoreboard players set eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings $(counter)
$scoreboard players set eoflib.admin_settings.blacklist_settings.total_blacklisted eoflib.admin_settings $(total_blacklisted)

        ## Tellraw tribe at counter index      
$execute if score eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings matches 0.. run tellraw @s [{"text": "- ", "color": "gray"}, {"nbt": "eoflib.admin_settings.blacklist.archetype[$(counter)].display.Lore[3]", "storage": "eoflib:config", "interpret": true}]
execute unless score eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings matches 0.. run tellraw @s [{"text": "- No archetypes in the blacklist.", "color": "gray", "italic": true}]

        ## Decrease counter
execute store result storage eoflib:config eoflib.admin_settings.blacklist_settings.counter int 1 run scoreboard players remove eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings 1

    # Loop
execute if score eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings matches 0.. run function eoflib:config/settings/admin/blacklist/list/archetypes with storage eoflib:config eoflib.admin_settings.blacklist_settings

#endregion
