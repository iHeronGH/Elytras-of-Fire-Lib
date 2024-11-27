#> eoflib:load/gen/scoreboards/variables/admin_settings
#
# Initialises admin settings variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/admin_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:load/gen/scoreboards/variables/admin_settings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/admin_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:load/gen/scoreboards/variables/admin_settings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/admin_settings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:load/gen/scoreboards/variables/admin_settings.mcfunction", "color": "aqua"}}}]

    # Admin settings
#define score_holder #eoflib.admin_settings.ability_timer Toggles the ability timer.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.ability_timer eoflib.admin_settings 1

#define score_holder #eoflib.admin_settings.allow_abilities Allows players to toggle tribe abilities.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.allow_abilities eoflib.admin_settings 1

#define score_holder #eoflib.admin_settings.allow_attributes Allows players to toggle tribe attributes.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.allow_attributes eoflib.admin_settings 1

#define score_holder #eoflib.admin_settings.allow_range_display Allows players to toggle their abilities' range display.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.allow_range_display eoflib.admin_settings 0

#define score_holder #eoflib.admin_settings.allow_pvp Allows players to toggle PVP.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.allow_pvp eoflib.admin_settings 1

#define score_holder #eoflib.admin_settings.destructive_abilities Toggles the destructive effects of some abilities.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.destructive_abilities eoflib.admin_settings 0

#define score_holder #eoflib.admin_settings.custom_deaths Toggles custom death messages.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.custom_deaths eoflib.admin_settings 0

#define score_holder #eoflib.admin_settings.friendly_fire Toggles friendly fire.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.friendly_fire eoflib.admin_settings 0

#define score_holder #eoflib.admin_settings.save_settings Toggles admin setting persistance on world reload.
execute unless predicate eoflib:settings/admin/save_settings run scoreboard players set #eoflib.admin_settings.save_settings eoflib.admin_settings 1

    ## Ability Blacklist variables
#define score_holder eoflib.admin_settings.blacklist_settings.counter Used to iterate through the blacklist array.
scoreboard players set eoflib.admin_settings.blacklist_settings.counter eoflib.admin_settings 0

#define score_holder eoflib.admin_settings.blacklist_settings.total_blacklisted The total number of abilities blacklisted.
scoreboard players set eoflib.admin_settings.blacklist_settings.total_blacklisted eoflib.admin_settings 0

#endregion
