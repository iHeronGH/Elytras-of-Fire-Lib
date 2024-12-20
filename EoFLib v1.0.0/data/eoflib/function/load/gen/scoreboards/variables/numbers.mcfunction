#> eoflib:load/gen/scoreboards/variables/numbers
#
# Initialises static number constants.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/numbers.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:load/gen/scoreboards/variables/numbers.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/numbers.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:load/gen/scoreboards/variables/numbers.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/numbers.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:load/gen/scoreboards/variables/numbers.mcfunction", "color": "aqua"}}}]

    # Number Consts
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

#define score_holder #eoflib.6 Equal to 6.
execute unless score #eoflib.6 eoflib.numbers = #eoflib.6 eoflib.numbers run scoreboard players set #eoflib.6 eoflib.numbers 6

#define score_holder #eoflib.7 Equal to 7.
execute unless score #eoflib.7 eoflib.numbers = #eoflib.7 eoflib.numbers run scoreboard players set #eoflib.7 eoflib.numbers 7

#define score_holder #eoflib.8 Equal to 8.
execute unless score #eoflib.8 eoflib.numbers = #eoflib.8 eoflib.numbers run scoreboard players set #eoflib.8 eoflib.numbers 8

#define score_holder #eoflib.9 Equal to 9.
execute unless score #eoflib.9 eoflib.numbers = #eoflib.9 eoflib.numbers run scoreboard players set #eoflib.9 eoflib.numbers 9

#define score_holder #eoflib.10 Equal to 10.
execute unless score #eoflib.10 eoflib.numbers = #eoflib.10 eoflib.numbers run scoreboard players set #eoflib.10 eoflib.numbers 10

#define score_holder #eoflib.20 Equal to 20.
execute unless score #eoflib.20 eoflib.numbers = #eoflib.20 eoflib.numbers run scoreboard players set #eoflib.20 eoflib.numbers 20

#define score_holder #eoflib.23999 Equal to 23999.
execute unless score #eoflib.23999 eoflib.numbers = #eoflib.23999 eoflib.numbers run scoreboard players set #eoflib.23999 eoflib.numbers 23999

#define score_holder #eoflib.24000 Equal to 24000.
execute unless score #eoflib.24000 eoflib.numbers = #eoflib.24000 eoflib.numbers run scoreboard players set #eoflib.24000 eoflib.numbers 24000

#endregion
