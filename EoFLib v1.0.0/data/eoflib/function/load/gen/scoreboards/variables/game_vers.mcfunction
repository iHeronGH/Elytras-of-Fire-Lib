#> eoflib:load/gen/scoreboards/variables/game_vers
#
# Declare game versions to ensure compatibility.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/game_vers.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:load/gen/scoreboards/variables/game_vers.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/game_vers.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:load/gen/scoreboards/variables/game_vers.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/game_vers.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:load/gen/scoreboards/variables/game_vers.mcfunction", "color": "aqua"}}}]

    # Version Consts
#define score_holder #eoflib.1_20 Data version for Minecraft Java 1.20.
execute unless score #eoflib.1_20 eoflib.game_ver = #eoflib.1_20 eoflib.game_ver run scoreboard players set #eoflib.1_20 eoflib.game_ver 3463

#define score_holder #eoflib.1_20_1 Data version for Minecraft Java 1.20.1.
execute unless score #eoflib.1_20_1 eoflib.game_ver = #eoflib.1_20_1 eoflib.game_ver run scoreboard players set #eoflib.1_20_1 eoflib.game_ver 3465

#define score_holder #eoflib.1_20_2 Data version for Minecraft Java 1.20.2.
execute unless score #eoflib.1_20_2 eoflib.game_ver = #eoflib.1_20_2 eoflib.game_ver run scoreboard players set #eoflib.1_20_2 eoflib.game_ver 3578

#define score_holder #eoflib.1_20_3 Data version for Minecraft Java 1.20.3.
execute unless score #eoflib.1_20_3 eoflib.game_ver = #eoflib.1_20_3 eoflib.game_ver run scoreboard players set #eoflib.1_20_3 eoflib.game_ver 3698

#define score_holder #eoflib.1_20_4 Data version for Minecraft Java 1.20.4.
execute unless score #eoflib.1_20_4 eoflib.game_ver = #eoflib.1_20_4 eoflib.game_ver run scoreboard players set #eoflib.1_20_4 eoflib.game_ver 3700

#define score_holder #eoflib.1_20_5 Data version for Minecraft Java 1.20.5.
execute unless score #eoflib.1_20_5 eoflib.game_ver = #eoflib.1_20_5 eoflib.game_ver run scoreboard players set #eoflib.1_20_5 eoflib.game_ver 3837

#define score_holder #eoflib.1_20_6 Data version for Minecraft Java 1.20.6.
execute unless score #eoflib.1_20_6 eoflib.game_ver = #eoflib.1_20_6 eoflib.game_ver run scoreboard players set #eoflib.1_20_6 eoflib.game_ver 3839

#define score_holder #eoflib.1_21 Data version for Minecraft Java 1.21.
execute unless score #eoflib.1_21 eoflib.game_ver = #eoflib.1_21 eoflib.game_ver run scoreboard players set #eoflib.1_21 eoflib.game_ver 3953

#define score_holder #eoflib.1_21_1 Data version for Minecraft Java 1.21.1.
execute unless score #eoflib.1_21_1 eoflib.game_ver = #eoflib.1_21_1 eoflib.game_ver run scoreboard players set #eoflib.1_21_1 eoflib.game_ver 3955

#define score_holder #eoflib.1_21_2 Data version for Minecraft Java 1.21.2.
execute unless score #eoflib.1_21_2 eoflib.game_ver = #eoflib.1_21_2 eoflib.game_ver run scoreboard players set #eoflib.1_21_2 eoflib.game_ver 4080

#define score_holder #eoflib.1_21_3 Data version for Minecraft Java 1.21.3.
execute unless score #eoflib.1_21_3 eoflib.game_ver = #eoflib.1_21_3 eoflib.game_ver run scoreboard players set #eoflib.1_21_3 eoflib.game_ver 4082

#define score_holder #eoflib.1_21_4 Data version for Minecraft Java 1.21.4.
execute unless score #eoflib.1_21_4 eoflib.game_ver = #eoflib.1_21_4 eoflib.game_ver run scoreboard players set #eoflib.1_21_4 eoflib.game_ver 4189

#define score_holder #eoflib.game_ver Data version for the current world/server.
execute unless score #eoflib.game_ver eoflib.game_ver matches 1.. store result score #eoflib.game_ver eoflib.game_ver run data get entity @a[limit=1] DataVersion

    # Check for correct world version
function #eoflib:load/check_version

#endregion
