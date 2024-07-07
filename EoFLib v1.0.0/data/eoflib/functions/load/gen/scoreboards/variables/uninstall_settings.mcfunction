#> eoflib:load/gen/scoreboards/variables/uninstall_settings
#
# Initialises uninstall settings variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards/uninstall_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/uninstall_settings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards/uninstall_settings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/uninstall_settings.mcfunction", "color": "aqua"}}}]

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
