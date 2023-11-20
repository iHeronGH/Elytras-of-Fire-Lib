#> eoflib:load/gen/scoreboards/admin_settings
#
# Initialises admin settings.

#region
	# Initialise admin settings
#define score_holder #eoflib.admin_settings.ability_timer Toggles the ability timer.
scoreboard players set #eoflib.admin_settings.ability_timer eoflib.admin_settings 1

#define score_holder #eoflib.admin_settings.allow_abilities Allows players to toggle tribe abilities.
scoreboard players set #eoflib.admin_settings.allow_abilities eoflib.admin_settings 1

#define score_holder #eoflib.admin_settings.allow_attributes Allows players to toggle tribe attributes.
scoreboard players set #eoflib.admin_settings.allow_attributes eoflib.admin_settings 1

#define score_holder #eoflib.admin_settings.allow_range_display Allows players to toggle their abilities' range display.
scoreboard players set #eoflib.admin_settings.allow_range_display eoflib.admin_settings 0

#define score_holder #eoflib.admin_settings.destructive_abilities Toggles the destructive effects of some abilities.
scoreboard players set #eoflib.admin_settings.destructive_abilities eoflib.admin_settings 0

#define score_holder #eoflib.admin_settings.custom_deaths Toggles custom death messages.
scoreboard players set #eoflib.admin_settings.custom_deaths eoflib.admin_settings 0

#define score_holder #eoflib.admin_settings.friendly_fire Toggles friendly fire.
scoreboard players set #eoflib.admin_settings.friendly_fire eoflib.admin_settings 0

#define score_holder #eoflib.admin_settings.save_settings Toggles admin setting persistance on world reload.
scoreboard players set #eoflib.admin_settings.save_settings eoflib.admin_settings 1

#endregion
