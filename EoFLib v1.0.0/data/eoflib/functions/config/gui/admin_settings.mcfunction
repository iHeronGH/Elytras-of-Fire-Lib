#> eoflib:config/gui/admin_settings
#
# Displays the administrative settings page.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/admin_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/gui/admin_settings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gui/admin_settings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/gui/admin_settings.mcfunction", "color": "aqua"}}}]

    # Menu header
tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": " [", "color": "gray"}, {"text": "PS", "color": "light_purple", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Player Settings", "color": "light_purple"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 1"}}, {"text": "] [", "color": "gray"}, {"text": "Admin Settings", "color": "gold"}, {"text": "] [", "color": "gray"}, {"text": "US", "color": "dark_aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents":[{"text": "Click here to switch to ", "color": "gray"}, {"text": "Uninstall Settings", "color": "dark_aqua"}, {"text": "!", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 3"}}, {"text": "]", "color": "gray"}]

    # Separator
tellraw @s [{"text": "                =                ", "color": "gray", "strikethrough": true}]

    # Admin options
        ## Persistent Settings
            ### Disable
execute if predicate eoflib:settings/admin/save_settings run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will prevent all changed\nsettings from persisting if the world\nis reloaded in any way.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 23"}}, {"text": "] [", "color": "gray"}, {"text": "Default", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Set all settings to their default state.\n\nRequires \"Persistent Settings\" setting\nto be disabled.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Persistent Settings", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep your settings when the world is\nreloaded in any way.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/admin/save_settings run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Save your settings when the world is\nreloaded by any means.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 23"}}, {"text": "] [", "color": "gray"}, {"text": "Default", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Set all settings to their default state.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/function eoflib:config/settings/admin/reset"}}, {"text": "] ", "color": "gray"}, {"text": "Persistent Settings", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep your settings when the world is\nreloaded in any way.", "color": "gray"}}}]

        ## Allow Abilities
            ### Disable
execute if predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will prevent all non-admin\nplayers from being able to enable their\nabilities and will disable abilities for\nthose currently logged on your world.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 10"}}, {"text": "] [", "color": "gray"}, {"text": "Add", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Add an ability to the ability blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 4"}}, " ", {"text": "Remove", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove an ability from the ability blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 5"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Abilities", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle their abilities.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Allow enabling of abilities for all players.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 10"}}, {"text": "] [", "color": "gray"}, {"text": "Add", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Add an ability to the ability blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 4"}}, " ", {"text": "Remove", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove an ability from the ability blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 5"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Abilities", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle their abilities.", "color": "gray"}}}]

        ## Allow Attributes
            ### Disable
execute if predicate eoflib:settings/admin/allow_attributes run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will prevent all non-admin\nplayers from being able to enable their\nattributes and will disable attributes for\nthose currently logged on your world.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 12"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Attributes", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle their tribe attributes.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/admin/allow_attributes run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Allow enabling of attributes for all players.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 12"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Attributes", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle their tribe attributes.", "color": "gray"}}}]

        ## Allow Range Display
            ### Disable
execute if predicate eoflib:settings/admin/allow_range_display run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will prevent all non-admin\nplayers from being able to enable Range\nDisplay, which may be useful for some.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 14"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Range Display", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle Range Display.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/admin/allow_range_display run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Allow enabling of Range Display for\nall players.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 14"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Range Display", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle Range Display.", "color": "gray"}}}]

        ## Allow PVP
            ### Disable
execute if predicate eoflib:settings/admin/allow_pvp run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will prevent all non-admin\nplayers from being able to enable PVP,\nwhich may be useful for some.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 25"}}, {"text": "] ", "color": "gray"}, {"text": "Allow PVP", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle PVP.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/admin/allow_pvp run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Allow enabling of PVP for\nall players.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 25"}}, {"text": "] ", "color": "gray"}, {"text": "Allow PVP", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle PVP.", "color": "gray"}}}]

        ## Deactivation Timer
            ### Disable
execute if predicate eoflib:settings/admin/ability_timer run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will prevent abilities from\nbeing automatically disabled for inactive\nplayers, which can create unnecessary\n(albeit minor) strain on your world.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 18"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Deactivation Timer", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "The Deactivation Timer automatically disables\nabilities for players who are not actively\nusing them. Enable this option to decrease\nperformance impact of Elytras of Fire\nLib and any installed DLCs.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/admin/ability_timer run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable deactivation timer for non-admin players.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 18"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Deactivation Timer", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "The Deactivation Timer automatically disables\nabilities for players who are not actively\nusing them. Enable this option to decrease\nperformance impact of Elytras of Fire\nLib and any installed DLCs.", "color": "gray"}}}]

        ## Destructive Effects
            ### Disable
execute if predicate eoflib:settings/admin/destructive_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable destructive aspects of abilities.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 21"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Destructive Effects", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the destructive properties that some\nabilities come with.", "color": "gray"}}}]

            ### Enable
execute unless predicate eoflib:settings/admin/destructive_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This allows players to destroy\ncertain blocks with their abilities, which\nwill bypass most methods used to protect\nplayer-owned properties and MAY also\nbypass any installed claiming plugins.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 21"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Destructive Effects", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the destructive properties that some\nabilities come with.", "color": "gray"}}}]

        ## Custom Death Messages
            ### Disable
#### execute if predicate eoflib:settings/admin/custom_deaths run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 17"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Custom Death Messages", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable custom death messages when players\nare killed by certain abilities.", "color": "gray"}}}]

            ### Enable
#### execute unless predicate eoflib:settings/admin/custom_deaths run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 17"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Custom Death Messages", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable custom death messages when players\nare killed by certain abilities.", "color": "gray"}}}]

            ### Not Implemented
tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray"}, {"text": "] ", "color": "gray"}, {"text": "Custom Death Messages", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle custom death messages when players\nare killed by certain abilities.\n\nThis feature is disabled. It may be released\nin a future update for Elytras of Fire!", "color": "dark_gray"}}}]

        ## Friendly Fire
            ### Disable
#### execute if predicate eoflib:settings/admin/friendly_fire run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 22"}}, {"text": "] ", "color": "gray"}, {"text": "Friendly Fire", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable custom death messages when players\nare killed by certain abilities.", "color": "gray"}}}]

            ### Enable
#### execute unless predicate eoflib:settings/admin/friendly_fire run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Enable Friendly Fire", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable friendly fire for most abilities.", "color": "gray"}}}, {"text": "✔", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 22"}}, {"text": "  ❌", "color": "red"}]

            ### Not Implemented
tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray"}, {"text": "] ", "color": "gray"}, {"text": "Enable Friendly Fire", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle friendly fire for most abilities.\n\nThis feature is disabled. It may be released\nin a future update for Elytras of Fire!", "color": "dark_gray"}}}]

        ## Cooldown Bypass
            ### Disable
execute if entity @s[tag=eoflib.cooldown.bypass] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable Cooldown Bypass for yourself.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.cooldown.bypass] run trigger eoflib.trigger set 15"}}, {"text": "] ", "color": "gray"}, {"text": "Cooldown Bypass", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Cooldown Bypass allows you to bypass\nall tribe ability cooldowns.", "color": "gray"}}}]

            ### Enable
execute if entity @s[tag=!eoflib.cooldown.bypass] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: While Cooldown Bypass is only\nenabled for the administrator triggering\nit, it is purely intended for debugging\nand troubleshooting only.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=!eoflib.cooldown.bypass] run trigger eoflib.trigger set 16"}}, {"text": "] ", "color": "gray"}, {"text": "Cooldown Bypass", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Cooldown Bypass allows you to bypass\nall tribe ability cooldowns.", "color": "gray"}}}]

        ## Debug Mode
            ### Disable
execute if entity @s[tag=eoflib.debug] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable Debug Mode for yourself.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.debug] run trigger eoflib.trigger set 19"}}, {"text": "] ", "color": "gray"}, {"text": "Enter Debug Mode", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Debug Mode displays helpful information\nin-game to streamline datapack development\nand show function references and sources.", "color": "gray"}}}]

            ### Enable
execute if entity @s[tag=!eoflib.debug] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: While Debug Mode is only\nenabled for the administrator triggering\nit, it is purely intended for debugging\nand troubleshooting only.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=!eoflib.debug] run trigger eoflib.trigger set 20"}}, {"text": "] ", "color": "gray"}, {"text": "Enter Debug Mode", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Debug Mode displays helpful information\nin-game to streamline datapack development\nand show function references and sources.", "color": "gray"}}}]

#endregion
