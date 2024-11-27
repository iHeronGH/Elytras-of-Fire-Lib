#> eoflib:load/gen/scoreboards/variables/uninstall_settings
#
# Initialises uninstall settings variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/uninstall_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:load/gen/scoreboards/variables/uninstall_settings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/uninstall_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:load/gen/scoreboards/variables/uninstall_settings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/uninstall_settings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:load/gen/scoreboards/variables/uninstall_settings.mcfunction", "color": "aqua"}}}]

    # Initialise uninstall settings
#define score_holder #eoflib.uninstall_settings.teams Remove all teams when the datapack is uninstalled.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.uninstall_settings.teams eoflib.uninstall_settings 1

#define score_holder #eoflib.uninstall_settings.scoreboards Remove all scoreboards when the datapack is uninstalled.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.uninstall_settings.scoreboards eoflib.uninstall_settings 1

#define score_holder #eoflib.uninstall_settings.storages Remove all storages when the datapack is uninstalled.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.uninstall_settings.storages eoflib.uninstall_settings 1

#define score_holder #eoflib.uninstall_settings.bossbars Remove all bossbars when the datapack is uninstalled.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.uninstall_settings.bossbars eoflib.uninstall_settings 1

#define score_holder #eoflib.uninstall_settings.forceloads Remove all forceloads when the datapack is uninstalled.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.uninstall_settings.forceloads eoflib.uninstall_settings 1

#endregion
