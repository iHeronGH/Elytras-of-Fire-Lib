#> eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove
#
# Prepare player to remove an ability from the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_remove.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/prepare_remove.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_remove.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/prepare_remove.mcfunction", "color": "aqua"}}}]

    # Header
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Blacklisted Abilities", "color": "aqua"}]

    # Separator
tellraw @s [{"text": "                                ", "color": "gray", "strikethrough": true}]

    # List blacklisted abilities
        ## Get important data
            ### Total amount of blacklisted abilities
execute store result storage eoflib:config eoflib.admin_settings.blacklist_settings.total_blacklisted int 1 store result score eoflib.admin_settings.blacklist_settings.total_blacklisted eoflib.admin_settings if data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {}}]

            ### Set counter to length - 1
execute store result score eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings if data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {}}]
execute store result storage eoflib:config eoflib.admin_settings.blacklist_settings.counter int 1 run scoreboard players remove eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings 1

        ## List blacklisted abilities
function eoflib:config/settings/admin/allow_abilities/blacklist/list_blacklisted_abilities with storage eoflib:config eoflib.admin_settings.blacklist_settings

    # Separator
tellraw @s [{"text": "                                ", "color": "gray", "strikethrough": true}]

    # Removal options
tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Latest Ability", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove the last ability to be added to the blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 6"}}, {"text": "] - [", "color": "gray"}, {"text": "Remove All Abilities", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all abilities from the blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 7"}}, {"text": "]", "color": "gray"}]

#endregion
