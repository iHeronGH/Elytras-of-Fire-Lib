#> eoflib:load/gen/scoreboards/objectives/global
#
# Initialise global objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/global.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:load/gen/scoreboards/objectives/global.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/global.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:load/gen/scoreboards/objectives/global.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/global.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:load/gen/scoreboards/objectives/global.mcfunction", "color": "aqua"}}}]

    # Global
#define objective eoflib.check True/false value used to permit/prevent actions.
scoreboard objectives add eoflib.check dummy

#define objective eoflib.damage Tracks amount of damage done in a hit.
scoreboard objectives add eoflib.damage minecraft.custom:minecraft.damage_dealt

#define objective eoflib.death Tracks players who have died.
scoreboard objectives add eoflib.death minecraft.custom:minecraft.deaths

#define objective eoflib.debug_mode Contains variables for different Debug Mode levels.
scoreboard objectives add eoflib.debug_mode dummy

#define objective eoflib.dlcs Detects and labels every Elytras of Fire DLC.
scoreboard objectives add eoflib.dlcs dummy

#define objective eoflib.game_ver Tracks the version of Minecraft the datapack is loaded on.
scoreboard objectives add eoflib.game_ver dummy

#define objective eoflib.health Tracks player health.
scoreboard objectives add eoflib.health health

#define objective eoflib.health Tracks player hunger.
scoreboard objectives add eoflib.hunger food

#define objective eoflib.id Contains a unique ID for every player using Elytras of Fire.
scoreboard objectives add eoflib.id dummy

#define objective eoflib.leave_game Tracks players who have left the game.
scoreboard objectives add eoflib.leave_game minecraft.custom:minecraft.leave_game

#define objective eoflib.numbers Contains constants and variables for math operations.
scoreboard objectives add eoflib.numbers dummy

#define objective eoflib.set_slot.primary Tracks player-assigned ability slot for their tribe's primary ability.
scoreboard objectives add eoflib.set_slot.primary dummy

#define objective eoflib.set_slot.secondary Tracks player-assigned ability slot for their tribe's secondary ability.
scoreboard objectives add eoflib.set_slot.secondary dummy

#define objective eoflib.set_slot.tertiary Tracks player-assigned ability slot for their tribe's tertiary ability.
scoreboard objectives add eoflib.set_slot.tertiary dummy

#define objective eoflib.worldtime Contains variables to track major worldtime events.
scoreboard objectives add eoflib.worldtime dummy

#endregion
