#> eoflib:load/gen/scoreboards
#
# Generates essential scoreboards for Elytras of Fire Lib.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:gen/scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Global Objectives
#define objective eoflib.death Tracks players who have died.
scoreboard objectives add eoflib.death minecraft.custom:minecraft.deaths

#define objective eoflib.dlcs Detects and labels every Elytras of Fire DLC.
scoreboard objectives add eoflib.dlcs dummy

#define objective eoflib.id Contains a unique ID for every player using Elytras of Fire.
scoreboard objectives add eoflib.id dummy

#define objective eoflib.health Tracks player health.
scoreboard objectives add eoflib.health health

#define objective eoflib.health Tracks player hunger.
scoreboard objectives add eoflib.hunger food

#define objective eoflib.leave_game Tracks players who have left the game.
scoreboard objectives add eoflib.leave_game minecraft.custom:minecraft.leave_game

#define objective eoflib.numbers Contains constants and variables for math operations.
scoreboard objectives add eoflib.numbers dummy

#define objective eoflib.worldtime Contains variables to track major worldtime events.
scoreboard objectives add eoflib.worldtime dummy

        ## Trigger Objectives
#define objective eof.abilities Toggles hotbar abilities.
scoreboard objectives add eof.abilities trigger
scoreboard players enable @a eof.abilities
scoreboard players set @a eof.abilities 0

#define objective eof.attributes Toggles tribe attributes.
scoreboard objectives add eof.attributes trigger
scoreboard players enable @a eof.attributes
scoreboard players set @a eof.attributes 0

#define objective eof.settings Activates settings.
scoreboard objectives add eof.settings trigger
scoreboard players enable @a eof.settings
scoreboard players set @a eof.settings 0

#define objective eoflib.trigger Simulates function access for non-operator players.
scoreboard objectives add eoflib.trigger trigger
scoreboard players enable @a eoflib.trigger
scoreboard players set @a eoflib.trigger 0

        ## Settings Objectives
#define objective eoflib.admin_settings Contains admin settings in scoreboard format.
scoreboard objectives add eoflib.admin_settings dummy

#define objective eoflib.admin_settings Contains uninstall settings in scoreboard format.
scoreboard objectives add eoflib.uninstall_settings dummy

        ## Miscellaneous Objectives
#define objective eoflib.dropped_ability_item Tracks players who have dropped an Elytras of Fire ability item.
scoreboard objectives add eoflib.dropped_ability_item minecraft.dropped:minecraft.knowledge_book

#define objective eoflib.dropped_ricardo Tracks players who have dropped Ricardo. What the heck, dude?
scoreboard objectives add eoflib.dropped_ricardo minecraft.dropped:minecraft.poisonous_potato

#define objective eoflib.projectile.egg Tracks players who have thrown an egg.
scoreboard objectives add eoflib.projectile.egg minecraft.used:minecraft.egg

#define objective eoflib.projectile.snowball Tracks players who have thrown a snowball.
scoreboard objectives add eoflib.projectile.snowball minecraft.used:minecraft.snowball

#define objective eoflib.projectile.ender_pearl Tracks players who have thrown a ender pearl.
scoreboard objectives add eoflib.projectile.ender_pearl minecraft.used:minecraft.ender_pearl

    # Scoreholders
        ## Global Vars
#define score_holder #eoflib.available_dlcs The number of active DLCs currently on the world/server.
scoreboard players set #eoflib.available_dlcs eoflib.dlcs 0

#define score_holder #eoflib.dlc.eoflib The load status of this datapack.
scoreboard players set #eoflib.dlc.eoflib eoflib.dlcs 1

#define score_holder #eoflib.new_id The next available ID to give a player.
execute unless score #eoflib.new_id eoflib.id = #eoflib.new_id eoflib.id run scoreboard players set #eoflib.new_id eoflib.id 0

        ## Admin Settings Vars
function eoflib:load/gen/scoreboards/admin_settings

        ## Uninstall Settings Vars
function eoflib:load/gen/scoreboards/uninstall_settings

        ## Number Consts
function eoflib:load/gen/scoreboards/numbers

        ## Worldtime Consts
function eoflib:load/gen/scoreboards/worldtime

#endregion
