#> eoflib:config/gui/uninstall_settings
#
# Displays the uninstall settings page.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/uninstall_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/uninstall_settings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/uninstall_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/uninstall_settings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/uninstall_settings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/uninstall_settings.mcfunction", "color": "aqua"}}}]

    # Menu header
execute unless entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": " [", "color": "gray"}, {"text": "PS", "color": "light_purple", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 1"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 2"}}, {"text": "] [", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "]", "color": "gray"}]

    # Separator
execute if entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "                                    ", "color": "gray", "strikethrough": true}]
execute unless entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "                        =           ", "color": "gray", "strikethrough": true}]

    # Uninstall options
        ## Teams
            ### Disable
execute if predicate eoflib:settings/uninstall/teams run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all teams from\nthe world when this datapack is removed,\nincluding any options you may have made\nany changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 70"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Teams", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all tribe teams intact when this\ndatapack is uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/teams run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Tribe teams will persist after this\ndatapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 70"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Teams", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all tribe teams intact when this\ndatapack is uninstalled.", "color": "gray"}}}]

        ## Scoreboards
            ### Disable
execute if predicate eoflib:settings/uninstall/scoreboards run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all scoreboards\nfrom the world when this datapack is\nremoved, including any options you may\nhave made any changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 71"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Scoreboards", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all scoreboard objectives\nand data intact when this datapack\nis uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/scoreboards run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Scoreboard data and objectives will persist\nafter this datapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 71"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Scoreboards", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all scoreboard objectives\nand data intact when this datapack\nis uninstalled.", "color": "gray"}}}]

        ## Storages
            ### Disable
execute if predicate eoflib:settings/uninstall/storages run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all storages from\nthe world when this datapack is removed,\nincluding any options you may have made\nany changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 72"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Storages", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all storage data intact when this\ndatapack is uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/storages run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Storage data will persist after this\ndatapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 72"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Storages", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all storage data intact when this\ndatapack is uninstalled.", "color": "gray"}}}]

        ## Bossbars
            ### Disable
execute if predicate eoflib:settings/uninstall/bossbars run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all bossbars from\nthe world when this datapack is removed,\nincluding any options you may have made\nany changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 73"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Bossbars", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all bossbars intact when this\ndatapack is uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/bossbars run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Bossbars will persist after this\ndatapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 73"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Bossbars", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all bossbars intact when this\ndatapack is uninstalled.", "color": "gray"}}}]

        ## Forceloads
            ### Disable
execute if predicate eoflib:settings/uninstall/forceloads run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all forceloads\nfrom the world when this datapack is\nremoved, including any options you may\nhave made any changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 74"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Forceloads", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle whether forceloaded chunks\nstay forceloaded when this datapack\nis uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/forceloads run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Forceloaded chunks will stay forceloaded\nafter this datapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 74"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Forceloads", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle whether forceloaded chunks\nstay forceloaded when this datapack\nis uninstalled.", "color": "gray"}}}]

        ## Uninstall Mode
            ### Disable
execute if entity @s[tag=eoflib.uninstall] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable Uninstall Mode for yourself.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.uninstall] run trigger eoflib.trigger set 75"}}, {"text": "] ", "color": "gray"}, {"text": "Enter Uninstall Mode", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Uninstall Mode streamlines the uninstalling\nprocess to ensure proper and intentional\nuninstall procedures. Highly recommended\nwhen updating.", "color": "gray"}}}]

            ### Enable
execute if entity @s[tag=!eoflib.uninstall] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable Uninstall Mode for yourself.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=!eoflib.uninstall] run trigger eoflib.trigger set 76"}}, {"text": "] ", "color": "gray"}, {"text": "Enter Uninstall Mode", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Uninstall Mode streamlines the uninstalling\nprocess to ensure proper and intentional\nuninstall procedures. Highly recommended\nwhen updating.", "color": "gray"}}}]

            ### Prompted from uninstall procedure
execute if entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "Uninstall", "color": "dark_red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Uninstall Elytras of Fire.\n\nEnsure that all settings as they appear\nabove are correct before continuing.\nThis is your final confirmation!", "color": "dark_red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 77"}}, {"text": "] [", "color": "gray"}, {"text": "Cancel", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Cancel Elytras of Fire uninstallation.", "color": "aqua"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 78"}}, {"text": "]", "color": "gray"}]

#endregion
