#> eoflib:load/gen/scoreboards/uninstall_settings
#
# Initialises uninstall settings.

#region
    # Initialise uninstall settings
#define score_holder #eoflib.uninstall_settings.teams Remove all teams when the datapack is uninstalled.
scoreboard players set #eoflib.uninstall_settings.teams eoflib.uninstall_settings 1

#define score_holder #eoflib.uninstall_settings.scoreboards Remove all scoreboards when the datapack is uninstalled.
scoreboard players set #eoflib.uninstall_settings.scoreboards eoflib.uninstall_settings 1

#define score_holder #eoflib.uninstall_settings.storages Remove all storages when the datapack is uninstalled.
scoreboard players set #eoflib.uninstall_settings.storages eoflib.uninstall_settings 1

#endregion
