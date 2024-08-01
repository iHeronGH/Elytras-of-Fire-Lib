#> eoflib:load/triggers
# 
# Execute a variety of functions, simulating /function access for non-operator players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/triggers.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/load/triggers.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/triggers.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/load/triggers.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:load/triggers.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/load/triggers.mcfunction", "color": "aqua"}}}]

    # Remove Advancement
advancement revoke @s only eoflib:trigger

    # Other Trigger
        ## View Credits
execute if score @s eoflib.trigger matches 2 run function eoflib:load/credits

        ## Settings
            ### Player Settings triggers
                #### PS: Set Slots
execute if score @s eoflib.trigger matches 3 run function eoflib:config/settings/player/abilities/set_slots/checks

                #### PS: Range Display
execute if score @s eoflib.trigger matches 4 run function eoflib:config/settings/player/range_display/disable
execute if score @s eoflib.trigger matches 5 run function eoflib:config/settings/player/range_display/enable

                #### PS: PVP
execute if score @s eoflib.trigger matches 6 run function eoflib:config/settings/player/pvp/disable
execute if score @s eoflib.trigger matches 7 run function eoflib:config/settings/player/pvp/enable

                #### PS: Ability Handling
execute if score @s eoflib.trigger matches 8 run function eoflib:config/settings/player/ability_handling/ability
execute if score @s eoflib.trigger matches 9 run function eoflib:config/settings/player/ability_handling/item

            ### Admin Settings triggers
                #### AS: Save Settings
execute if score @s eoflib.trigger matches 20 run function eoflib:config/settings/admin/save_settings/toggle_show_agui
execute if score @s eoflib.trigger matches 21 run function eoflib:config/settings/admin/reset

                #### AS: Allow Abilities
execute if score @s eoflib.trigger matches 22 run function eoflib:config/settings/admin/allow_abilities/toggle_show_pgui
execute if score @s eoflib.trigger matches 23 run function eoflib:config/settings/admin/allow_abilities/toggle_show_agui

                #### AS: Ability Blacklist
execute if score @s eoflib.trigger matches 24 run function eoflib:config/settings/admin/allow_abilities/blacklist/prepare_add
execute if score @s eoflib.trigger matches 25 run function eoflib:config/settings/admin/allow_abilities/blacklist/add_ability
execute if score @s eoflib.trigger matches 26 run function eoflib:config/settings/admin/allow_abilities/blacklist/add_tribe
execute if score @s eoflib.trigger matches 27 run function eoflib:config/settings/admin/allow_abilities/blacklist/add_archetype
execute if score @s eoflib.trigger matches 28 run function eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove
execute if score @s eoflib.trigger matches 29 run function eoflib:config/settings/admin/allow_abilities/blacklist/remove_earliest_ability
execute if score @s eoflib.trigger matches 30 run function eoflib:config/settings/admin/allow_abilities/blacklist/remove_latest_ability
execute if score @s eoflib.trigger matches 31 run function eoflib:config/settings/admin/allow_abilities/blacklist/remove_all_abilities
execute if score @s eoflib.trigger matches 32 run function eoflib:config/settings/admin/allow_abilities/blacklist/cancel_operation

                #### AS: Allow Attributes
execute if score @s eoflib.trigger matches 40 run function eoflib:config/settings/admin/allow_attributes/toggle_show_pgui
execute if score @s eoflib.trigger matches 41 run function eoflib:config/settings/admin/allow_attributes/toggle_show_agui

                #### AS: Allow Range Display
execute if score @s eoflib.trigger matches 42 run function eoflib:config/settings/admin/allow_range_display/toggle_show_pgui
execute if score @s eoflib.trigger matches 43 run function eoflib:config/settings/admin/allow_range_display/toggle_show_agui

                #### AS: PVP
execute if score @s eoflib.trigger matches 44 run function eoflib:config/settings/admin/allow_pvp/toggle_show_pgui
execute if score @s eoflib.trigger matches 45 run function eoflib:config/settings/admin/allow_pvp/toggle_show_agui

                #### AS: Deactivation Timer
execute if score @s eoflib.trigger matches 46 run function eoflib:config/settings/admin/deactivation_timer/toggle_show_agui

                #### AS: Destructive Abilities
execute if score @s eoflib.trigger matches 47 run function eoflib:config/settings/admin/destructive_abilities/toggle_show_agui

                #### AS: Custom Deaths
execute if score @s eoflib.trigger matches 48 run function eoflib:config/settings/admin/custom_deaths/toggle_show_agui

                #### AS: Friendly Fire
execute if score @s eoflib.trigger matches 49 run function eoflib:config/settings/admin/friendly_fire/toggle_show_agui

                #### AS: Cooldown Bypass
execute if score @s eoflib.trigger matches 50 run function eoflib:config/settings/admin/cooldown_bypass/disable_show_agui
execute if score @s eoflib.trigger matches 51 run function eoflib:config/settings/admin/cooldown_bypass/enable_show_agui

                #### AS: Debug Mode
execute if score @s eoflib.trigger matches 52 run function eoflib:config/settings/admin/debug_mode/disable_show_agui
execute if score @s eoflib.trigger matches 53 run function eoflib:config/settings/admin/debug_mode/enable_show_agui
execute if score @s eoflib.trigger matches 54 run function eoflib:config/settings/admin/debug_mode/dec_level_show_agui
execute if score @s eoflib.trigger matches 55 run function eoflib:config/settings/admin/debug_mode/inc_level_show_agui

            ### Uninstall Settings triggers
execute if score @s eoflib.trigger matches 70 run function eoflib:config/settings/uninstall/teams/toggle_show_ugui
execute if score @s eoflib.trigger matches 71 run function eoflib:config/settings/uninstall/scoreboards/toggle_show_ugui
execute if score @s eoflib.trigger matches 72 run function eoflib:config/settings/uninstall/storages/toggle_show_ugui
execute if score @s eoflib.trigger matches 73 run function eoflib:config/settings/uninstall/bossbars/toggle_show_ugui
execute if score @s eoflib.trigger matches 74 run function eoflib:config/settings/uninstall/forceloads/toggle_show_ugui
execute if score @s eoflib.trigger matches 75 run function eoflib:config/settings/uninstall/uninstall_mode/disable_show_ugui
execute if score @s eoflib.trigger matches 76 run function eoflib:config/settings/uninstall/uninstall_mode/enable_show_ugui
execute if score @s eoflib.trigger matches 77 run function eoflib:uninstall/main
execute if score @s eoflib.trigger matches 78 run function eoflib:config/settings/uninstall/uninstall_mode/cancel_uninstall

        ## Form Submissions
execute if score @s eoflib.trigger matches 90 run function eoflib:load/report/bug
execute if score @s eoflib.trigger matches 91 run function eoflib:load/report/idea
execute if score @s eoflib.trigger matches 92 run function eoflib:load/report/feedback
execute if score @s eoflib.trigger matches 93 run function eoflib:load/report/bye_ricardo

        ## Failsafe
execute unless score @s eoflib.trigger matches 0 unless score @s eoflib.trigger matches 2..9 unless score @s eoflib.trigger matches 20..45 unless score @s eoflib.trigger matches 70..78 unless score @s eoflib.trigger matches 90..93 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Invalid range for trigger ", "color": "red"}, {"text": "eoflib.trigger", "color": "gold"}, {"text": "; received value (", "color": "red"}, {"score": {"name": "@s", "objective": "eoflib.trigger"}, "color": "gold"}, {"text": ") does not match expected value range (", "color": "red"}, {"text": "2-9, 20-45, 60-68, 80-83", "color": "gold"}, {"text": ").", "color": "red"}]

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

        ## Failsafe
execute unless score @s eof.settings matches 0..3 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Invalid range for trigger ", "color": "red"}, {"text": "eof.settings", "color": "gold"}, {"text": "; received value (", "color": "red"}, {"score":{"name": "@s", "objective": "eof.settings"}, "color": "gold"}, {"text": ") does not match expected value range (", "color": "red"}, {"text": "1-3", "color": "gold"}, {"text": ").", "color": "red"}]

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
