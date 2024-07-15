#> eoflib:load/triggers
# 
# Execute a variety of functions, simulating /function access for non-operator players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/triggers.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/triggers.mcfunction", "color": "aqua"}}}]
execute if entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=2..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/triggers.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n\ndata/eoflib/functions/load/triggers.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/triggers.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/triggers.mcfunction", "color": "aqua"}}}]

    # Remove Advancement
advancement revoke @s only eoflib:trigger

    # Other Trigger
        ## View Credits
execute if score @s eoflib.trigger matches 2 run function eoflib:load/credits

        ## Settings
            ### Player Settings triggers
                #### PS: Range Display
execute if score @s eoflib.trigger matches 3 run function eoflib:config/settings/player/range_display/disable
execute if score @s eoflib.trigger matches 4 run function eoflib:config/settings/player/range_display/enable

                #### PS: Ability Handling
execute if score @s eoflib.trigger matches 5 run function eoflib:config/settings/player/ability_handling/ability
execute if score @s eoflib.trigger matches 6 run function eoflib:config/settings/player/ability_handling/item

                #### PS: PVP
execute if score @s eoflib.trigger matches 7 run function eoflib:config/settings/player/pvp/disable
execute if score @s eoflib.trigger matches 8 run function eoflib:config/settings/player/pvp/enable

            ### Admin Settings triggers
                #### AS: Save Settings
execute if score @s eoflib.trigger matches 9 run function eoflib:config/settings/admin/save_settings/toggle_show_agui

                #### AS: Allow Abilities
execute if score @s eoflib.trigger matches 10 run function eoflib:config/settings/admin/allow_abilities/toggle_show_pgui
execute if score @s eoflib.trigger matches 11 run function eoflib:config/settings/admin/allow_abilities/toggle_show_agui

                #### AS: Allow Attributes
execute if score @s eoflib.trigger matches 12 run function eoflib:config/settings/admin/allow_attributes/toggle_show_pgui
execute if score @s eoflib.trigger matches 13 run function eoflib:config/settings/admin/allow_attributes/toggle_show_agui

                #### AS: Allow Range Display
execute if score @s eoflib.trigger matches 14 run function eoflib:config/settings/admin/allow_range_display/toggle_show_pgui
execute if score @s eoflib.trigger matches 15 run function eoflib:config/settings/admin/allow_range_display/toggle_show_agui

                #### AS: PVP
execute if score @s eoflib.trigger matches 16 run function eoflib:config/settings/admin/allow_pvp/toggle_show_pgui
execute if score @s eoflib.trigger matches 17 run function eoflib:config/settings/admin/allow_pvp/toggle_show_agui

                #### AS: Deactivation Timer
execute if score @s eoflib.trigger matches 18 run function eoflib:config/settings/admin/deactivation_timer/toggle_show_agui

                #### AS: Destructive Abilities
execute if score @s eoflib.trigger matches 19 run function eoflib:config/settings/admin/destructive_abilities/toggle_show_agui

                #### AS: Custom Deaths
execute if score @s eoflib.trigger matches 20 run function eoflib:config/settings/admin/custom_deaths/toggle_show_agui

                #### AS: Friendly Fire
execute if score @s eoflib.trigger matches 21 run function eoflib:config/settings/admin/friendly_fire/toggle_show_agui

                #### AS: Cooldown Bypass
execute if score @s eoflib.trigger matches 22 run function eoflib:config/settings/admin/cooldown_bypass/disable_show_agui
execute if score @s eoflib.trigger matches 23 run function eoflib:config/settings/admin/cooldown_bypass/enable_show_agui

                #### AS: Debug Mode
execute if score @s eoflib.trigger matches 24 run function eoflib:config/settings/admin/debug_mode/disable_show_agui
execute if score @s eoflib.trigger matches 25 run function eoflib:config/settings/admin/debug_mode/enable_show_agui
execute if score @s eoflib.trigger matches 26 run function eoflib:config/settings/admin/debug_mode/dec_level_show_agui
execute if score @s eoflib.trigger matches 27 run function eoflib:config/settings/admin/debug_mode/inc_level_show_agui

        ## Form Submissions
execute if score @s eoflib.trigger matches 28 run function eoflib:load/report/bug
execute if score @s eoflib.trigger matches 29 run function eoflib:load/report/idea
execute if score @s eoflib.trigger matches 30 run function eoflib:load/report/feedback
execute if score @s eoflib.trigger matches 31 run function eoflib:load/report/bye_ricardo

        ## Failsafe
execute unless score @s eoflib.trigger matches 0 unless score @s eoflib.trigger matches 2..29 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Invalid range for trigger ", "color": "red"}, {"text": "eoflib.trigger", "color": "gold"}, {"text": "; received value (", "color": "red"}, {"score": {"name": "@s", "objective": "eoflib.trigger"}, "color": "gold"}, {"text": ") does not match expected value range (", "color": "red"}, {"text": "2-29", "color": "gold"}, {"text": ").", "color": "red"}]

    # Abilities Trigger
execute if score @s eof.abilities matches 1..2 run function eoflib:config/settings/player/abilities/toggle
execute if score @s eof.abilities matches 3 run function #eoflib:reset/abilities

        ## Failsafe
execute unless score @s eof.abilities matches 0..3 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Invalid range for trigger ", "color": "red"}, {"text": "eof.abilities", "color": "gold"}, {"text": "; received value (", "color": "red"}, {"score":{"name": "@s", "objective": "eof.abilities"}, "color": "gold"}, {"text": ") does not match expected value range (", "color": "red"}, {"text": "1-3", "color": "gold"}, {"text": ").", "color": "red"}]

    # Attributes Trigger
execute if score @s eof.attributes matches 1..2 run function eoflib:config/settings/player/attributes/toggle

        ## Failsafe
execute unless score @s eof.attributes matches 0..2 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Invalid range for trigger ", "color": "red"}, {"text": "eof.attributes", "color": "gold"}, {"text": "; received value (", "color": "red"}, {"score":{"name": "@s", "objective": "eof.attributes"}, "color": "gold"}, {"text": ") does not match expected value range (", "color": "red"}, {"text": "1-2", "color": "gold"}, {"text": ").", "color": "red"}]

    # Settings Trigger
execute if score @s eof.settings matches 1..3 run function #eoflib:config
execute if score @s eof.settings matches 4 run function eoflib:config/settings/admin/allow_abilities/blacklist/prepare_add
execute if score @s eof.settings matches 5 run function eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove
execute if score @s eof.settings matches 6 run function eoflib:config/settings/admin/allow_abilities/blacklist/remove_earliest_ability
execute if score @s eof.settings matches 7 run function eoflib:config/settings/admin/allow_abilities/blacklist/remove_latest_ability
execute if score @s eof.settings matches 8 run function eoflib:config/settings/admin/allow_abilities/blacklist/remove_all_abilities
execute if score @s eof.settings matches 9 run function eoflib:config/settings/admin/allow_abilities/blacklist/cancel_operation

        ## Failsafe
execute unless score @s eof.settings matches 0..9 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Invalid range for trigger ", "color": "red"}, {"text": "eof.settings", "color": "gold"}, {"text": "; received value (", "color": "red"}, {"score":{"name": "@s", "objective": "eof.settings"}, "color": "gold"}, {"text": ") does not match expected value range (", "color": "red"}, {"text": "1-9", "color": "gold"}, {"text": ").", "color": "red"}]

    # Reset Scores
scoreboard players enable @s eof.abilities
scoreboard players enable @s eof.attributes
scoreboard players enable @s eof.settings
scoreboard players enable @s eoflib.trigger
scoreboard players set @s eof.abilities 0
scoreboard players set @s eof.attributes 0
scoreboard players set @s eof.settings 0
scoreboard players set @s eoflib.trigger 0

#endregion
