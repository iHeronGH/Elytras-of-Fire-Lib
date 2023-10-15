#> eoflib:load/gen/scoreboards
#
# Generates essential scoreboards for EoFLib.

#region
	# Scoreboards
		## Global Objectives
	#define objective eoflib.dlcs Detects and labels every Elytras of Fire DLC.
scoreboard objectives add eoflib.dlcs dummy

	#define objective eoflib.id Contains a unique ID for every player using Elytras of Fire.
scoreboard objectives add eoflib.id dummy

	#define objective eoflib.health Tracks player health.
scoreboard objectives add eoflib.health health

	#define objective eoflib.numbers Contains constants and variables for math operations.
scoreboard objectives add eoflib.numbers dummy

	#define objective eoflib.worldtime Contains variables to track major worldtime events.
scoreboard objectives add eoflib.worldtime dummy

	#define objective eoflib.leave_game Tracks players who have left the game.
scoreboard objectives add eoflib.leave_game minecraft.custom:minecraft.leave_game

	#define objective eoflib.death Tracks players who have died.
scoreboard objectives add eoflib.death minecraft.custom:minecraft.deaths

		## Trigger Objectives
	#define objective eof.abilities Allows players to toggle hotbar abilities.
scoreboard objectives add eof.abilities trigger
scoreboard players enable @a eof.abilities

	#define objective eof.attributes Allows players to toggle tribe attributes.
scoreboard objectives add eof.attributes trigger
scoreboard players enable @a eof.attributes

	#define objective eof.settings Allows players to edit personal settings.
scoreboard objectives add eof.settings trigger
scoreboard players enable @a eof.settings

	#define objective eoflib.trigger Simulates function access for non-operator players.
scoreboard objectives add eoflib.trigger trigger
scoreboard players enable @a eoflib.trigger

		## Miscellaneous Objectives
	#define objective eoflib.dropped_ability_item Tracks players who have dropped an Elytras of Fire ability item.
scoreboard objectives add eoflib.dropped_ability_item minecraft.dropped:minecraft.knowledge_book

	#define objective eoflib.dropped_ricardo Tracks players who have dropped Ricardo. What the heck, dude?
scoreboard objectives add eoflib.dropped_ricardo minecraft.dropped:minecraft.poisonous_potato

	# Variables
		## Global Vars
	#define score_holder _eoflib.dlc.eoflib The next available ID to give a player.
execute unless score _eoflib.dlc.eoflib eoflib.dlcs = _eoflib.dlc.eoflib eoflib.dlcs run scoreboard players set _eoflib.dlc.eoflib eoflib.dlcs 1

	#define score_holder #eoflib.new_id The next available ID to give a player.
execute unless score #eoflib.new_id eoflib.id = #eoflib.new_id eoflib.id run scoreboard players set #eoflib.new_id eoflib.id 0

		## Number Vars
	#define score_holder #eoflib.-1 Equal to -1.
execute unless score #eoflib.-1 eoflib.numbers = #eoflib.-1 eoflib.numbers run scoreboard players set #eoflib.-1 eoflib.numbers -1

	#define score_holder #eoflib.0 Equal to 0.
execute unless score #eoflib.0 eoflib.numbers = #eoflib.0 eoflib.numbers run scoreboard players set #eoflib.0 eoflib.numbers 0

	#define score_holder #eoflib.1 Equal to 1.
execute unless score #eoflib.1 eoflib.numbers = #eoflib.1 eoflib.numbers run scoreboard players set #eoflib.1 eoflib.numbers 1

	#define score_holder #eoflib.10 Equal to 10.
execute unless score #eoflib.10 eoflib.numbers = #eoflib.10 eoflib.numbers run scoreboard players set #eoflib.10 eoflib.numbers 10

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
