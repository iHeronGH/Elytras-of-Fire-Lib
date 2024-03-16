#> eoflib:config/settings/admin/allow_abilities/blacklist/list_blacklisted_abilities
#
# List all blacklisted abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/list_blacklisted_abilities.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/list_blacklisted_abilities.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/list_blacklisted_abilities.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/list_blacklisted_abilities.mcfunction", "color": "aqua"}}}]

    # List blacklisted abilities
        ## Set counter
$scoreboard players set eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings $(counter)
$scoreboard players set eoflib.admin_settings.blacklist_settings.total_blacklisted eoflib.admin_settings $(total_blacklisted)

        ## Tellraw ability at counter index      
$tellraw @s [{"text": "- ", "color": "gray"}, {"nbt": "eoflib.admin_settings.blacklist[$(counter)].display.Name", "storage": "eoflib:config", "interpret": true}]

        ## Decrease counter
execute store result storage eoflib:config eoflib.admin_settings.blacklist_settings.counter int 1 run scoreboard players remove eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings 1

    # Loop
execute if score eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings matches 0.. run function eoflib:config/settings/admin/allow_abilities/blacklist/list_blacklisted_abilities with storage eoflib:config eoflib.admin_settings.blacklist_settings

#endregion
