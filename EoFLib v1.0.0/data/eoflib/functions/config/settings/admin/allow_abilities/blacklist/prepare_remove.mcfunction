#> eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove
#
# Prepare player to remove an ability from the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_remove.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_remove.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_remove.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove.mcfunction", "color": "aqua"}}}]

    # Header
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Blacklisted Abilities", "color": "aqua"}]

    # Separator
tellraw @s [{"text": "                                ", "color": "gray", "strikethrough": true}]

    # Removal options
tellraw @s [{"text": "- Remove [", "color": "gray"}, {"text": "Earliest", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove the earliest ability added to the blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 29"}}, {"text": " | ", "color": "gray"}, {"text": "All", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all abilities from the blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 31"}}, {"text": " | ", "color": "gray"}, {"text": "Latest", "color": "dark_aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove the latest ability added to the blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 30"}}, {"text": "] Ability", "color": "gray"}]

    # List blacklist
        ## Abilities
            ### Total amount of blacklisted abilities
execute store result storage eoflib:config eoflib.admin_settings.blacklist_settings.total_blacklisted int 1 store result score eoflib.admin_settings.blacklist_settings.total_blacklisted eoflib.admin_settings if data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {}}]

            ### Set counter to length - 1
execute store result score eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings if data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {}}]
execute store result storage eoflib:config eoflib.admin_settings.blacklist_settings.counter int 1 run scoreboard players remove eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings 1

            ### Display list
function eoflib:config/settings/admin/allow_abilities/blacklist/list/abilities with storage eoflib:config eoflib.admin_settings.blacklist_settings

        ## Tribes
            ### Total amount of blacklisted tribes
execute store result storage eoflib:config eoflib.admin_settings.blacklist_settings.total_blacklisted int 1 store result score eoflib.admin_settings.blacklist_settings.total_blacklisted eoflib.admin_settings if data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {}}]

            ### Set counter to length - 1
execute store result score eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings if data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{eof_data: {}}]
execute store result storage eoflib:config eoflib.admin_settings.blacklist_settings.counter int 1 run scoreboard players remove eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings 1

            ### Display list
function eoflib:config/settings/admin/allow_abilities/blacklist/list_tribes with storage eoflib:config eoflib.admin_settings.blacklist_settings

#endregion
