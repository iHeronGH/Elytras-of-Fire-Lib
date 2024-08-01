#> eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove
#
# Prepare player to remove an ability from the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_remove.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/prepare_remove.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_remove.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/prepare_remove.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_remove.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/prepare_remove.mcfunction", "color": "aqua"}}}]

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
tellraw @s [{"text": "- ", "color": "gray"}, {"text": "Remove Earliest Ability", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove the earliest ability added to the blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 29"}}, {"text": "\n- ", "color": "gray"}, {"text": "Remove Latest Ability", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove the latest ability added to the blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 30"}}, {"text": "\n- ", "color": "gray"}, {"text": "Remove All Abilities", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all abilities from the blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 31"}}]

#endregion
