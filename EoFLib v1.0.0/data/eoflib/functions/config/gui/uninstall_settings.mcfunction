#> eoflib:config/gui/uninstall_settings
#
# Displays the uninstall settings page.

#region
    # Menu header
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": " [", "color": "gray"}, {"text": "PS", "color": "light_purple", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 1"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 2"}}, {"text": "] [", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "]", "color": "gray"}]

    # Separator
tellraw @s [{"text": "                        =           ", "color": "gray", "strikethrough": true}]

    # Uninstall options
        ## Teams
            ### Disable
execute if predicate eoflib:settings/uninstall/teams run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all teams from\nthe world when this datapack is removed,\nincluding any options you may have made\nany changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if predicate eoflib:settings/uninstall/teams run function eoflib:config/settings/uninstall/teams/toggle_show_ugui"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Teams", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all tribe teams when this datapack\nis uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/teams run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Tribe teams will persist after this\ndatapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute unless predicate eoflib:settings/uninstall/teams run function eoflib:config/settings/uninstall/teams/toggle_show_ugui"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Teams", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all tribe teams when this datapack\nis uninstalled.", "color": "gray"}}}]

        ## Scoreboards
            ### Disable
execute if predicate eoflib:settings/uninstall/scoreboards run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all scoreboards\nfrom the world when this datapack is\nremoved, including any options you may\nhave made any changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if predicate eoflib:settings/uninstall/scoreboards run function eoflib:config/settings/uninstall/scoreboards/toggle_show_ugui"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Scoreboards", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all scoreboard objectives and\ndata when this datapack is uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/scoreboards run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Scoreboard data and objectives will persist\nafter this datapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute unless predicate eoflib:settings/uninstall/scoreboards run function eoflib:config/settings/uninstall/scoreboards/toggle_show_ugui"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Scoreboards", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all scoreboard objectives and\ndata when this datapack is uninstalled.", "color": "gray"}}}]

        ## Storages
            ### Disable
execute if predicate eoflib:settings/uninstall/storages run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all storages from\nthe world when this datapack is removed,\nincluding any options you may have made\nany changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if predicate eoflib:settings/uninstall/storages run function eoflib:config/settings/uninstall/storages/toggle_show_ugui"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Storages", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all storage data when this\ndatapack is uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/storages run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Storage data will persist after this\ndatapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute unless predicate eoflib:settings/uninstall/storages run function eoflib:config/settings/uninstall/storages/toggle_show_ugui"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Storages", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Remove all storage data when this\ndatapack is uninstalled.", "color": "gray"}}}]

        ## Forceloads
            ### Disable
execute if predicate eoflib:settings/uninstall/forceloads run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all forceloads\nfrom the world when this datapack is\nremoved, including any options you may\nhave made any changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if predicate eoflib:settings/uninstall/forceloads run function eoflib:config/settings/uninstall/forceloads/toggle_show_ugui"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Forceloads", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle whether forceloaded chunks\nstay forceloaded after this datapack\nis uninstalled.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/uninstall/forceloads run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Forceloaded chunks will stay forceloaded\nafter this datapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute unless predicate eoflib:settings/uninstall/forceloads run function eoflib:config/settings/uninstall/forceloads/toggle_show_ugui"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Forceloads", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle whether forceloaded chunks\nstay forceloaded after this datapack\nis uninstalled.", "color": "gray"}}}]

#endregion
