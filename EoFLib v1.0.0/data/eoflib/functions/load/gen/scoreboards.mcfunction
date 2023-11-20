#> eoflib:load/gen/scoreboards
#
# Generates essential scoreboards for EoFLib.

#region
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
scoreboard players set @s eof.abilities 0

#define objective eof.attributes Toggles tribe attributes.
scoreboard objectives add eof.attributes trigger
scoreboard players enable @a eof.attributes
scoreboard players set @s eof.attributes 0

#define objective eof.settings Activates settings.
scoreboard objectives add eof.settings trigger
scoreboard players enable @a eof.settings
scoreboard players set @s eof.settings 0

#define objective eoflib.trigger Simulates function access for non-operator players.
scoreboard objectives add eoflib.trigger trigger
scoreboard players enable @a eoflib.trigger
scoreboard players set @s eoflib.trigger 0

        ## Settings Objectives
#define objective eoflib.admin_settings Contains settings in scoreboard format.
scoreboard objectives add eoflib.admin_settings dummy

        ## Miscellaneous Objectives
#define objective eoflib.dropped_ability_item Tracks players who have dropped an Elytras of Fire ability item.
scoreboard objectives add eoflib.dropped_ability_item minecraft.dropped:minecraft.knowledge_book

#define objective eoflib.dropped_ricardo Tracks players who have dropped Ricardo. What the heck, dude?
scoreboard objectives add eoflib.dropped_ricardo minecraft.dropped:minecraft.poisonous_potato

    # Variables
        ## Global Vars
#define score_holder #eoflib.dlc.eoflib The load status of this datapack.
execute unless score #eoflib.dlc.eoflib eoflib.dlcs = #eoflib.dlc.eoflib eoflib.dlcs run scoreboard players set #eoflib.dlc.eoflib eoflib.dlcs 1

#define score_holder #eoflib.new_id The next available ID to give a player.
execute unless score #eoflib.new_id eoflib.id = #eoflib.new_id eoflib.id run scoreboard players set #eoflib.new_id eoflib.id 0

        ## Admin Settings Vars
function eoflib:load/gen/scoreboards/admin_settings

        ## Number Vars
#define score_holder #eoflib.-1 Equal to -1.
execute unless score #eoflib.-1 eoflib.numbers = #eoflib.-1 eoflib.numbers run scoreboard players set #eoflib.-1 eoflib.numbers -1

#define score_holder #eoflib.0 Equal to 0.
execute unless score #eoflib.0 eoflib.numbers = #eoflib.0 eoflib.numbers run scoreboard players set #eoflib.0 eoflib.numbers 0

#define score_holder #eoflib.1 Equal to 1.
execute unless score #eoflib.1 eoflib.numbers = #eoflib.1 eoflib.numbers run scoreboard players set #eoflib.1 eoflib.numbers 1

#define score_holder #eoflib.2 Equal to 2.
execute unless score #eoflib.2 eoflib.numbers = #eoflib.2 eoflib.numbers run scoreboard players set #eoflib.2 eoflib.numbers 2

#define score_holder #eoflib.3 Equal to 3.
execute unless score #eoflib.3 eoflib.numbers = #eoflib.3 eoflib.numbers run scoreboard players set #eoflib.3 eoflib.numbers 3

#define score_holder #eoflib.4 Equal to 4.
execute unless score #eoflib.4 eoflib.numbers = #eoflib.4 eoflib.numbers run scoreboard players set #eoflib.4 eoflib.numbers 4

#define score_holder #eoflib.5 Equal to 5.
execute unless score #eoflib.5 eoflib.numbers = #eoflib.5 eoflib.numbers run scoreboard players set #eoflib.5 eoflib.numbers 5

#define score_holder #eoflib.10 Equal to 10.
execute unless score #eoflib.10 eoflib.numbers = #eoflib.10 eoflib.numbers run scoreboard players set #eoflib.10 eoflib.numbers 10

#define score_holder #eoflib.23999 Equal to 23999.
execute unless score #eoflib.23999 eoflib.numbers = #eoflib.23999 eoflib.numbers run scoreboard players set #eoflib.23999 eoflib.numbers 23999

#define score_holder #eoflib.24000 Equal to 24000.
execute unless score #eoflib.24000 eoflib.numbers = #eoflib.24000 eoflib.numbers run scoreboard players set #eoflib.24000 eoflib.numbers 24000

        ## Worldtime Vars
#define score_holder #eoflib.worldtime.current Tracks the current time on the world.
execute store result score #eoflib.worldtime.current eoflib.worldtime run time query daytime

#define score_holder #eoflib.worldtime.dusk Defines the beginning of dusk.
execute unless score #eoflib.worldtime.dusk eoflib.worldtime = #eoflib.worldtime.dusk eoflib.worldtime run scoreboard players set #eoflib.worldtime.dusk eoflib.worldtime 12000

#define score_holder #eoflib.worldtime.sunset Defines the beginning of sunset.
execute unless score #eoflib.worldtime.sunset eoflib.worldtime = #eoflib.worldtime.sunset eoflib.worldtime run scoreboard players set #eoflib.worldtime.sunset eoflib.worldtime 14400

#define score_holder #eoflib.worldtime.sunrise Defines the beginning of sunrise.
execute unless score #eoflib.worldtime.sunrise eoflib.worldtime = #eoflib.worldtime.sunrise eoflib.worldtime run scoreboard players set #eoflib.worldtime.sunrise eoflib.worldtime 21600

#define score_holder #eoflib.worldtime.dawn Defines the beginning of dawn.
execute unless score #eoflib.worldtime.dawn eoflib.worldtime = #eoflib.worldtime.dawn eoflib.worldtime run scoreboard players set #eoflib.worldtime.dawn eoflib.worldtime 24000

#endregion
