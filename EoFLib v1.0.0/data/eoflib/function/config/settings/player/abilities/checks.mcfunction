#> eoflib:config/settings/player/abilities/checks
#
# Check if the player is capable of enabling their hotbar abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/player/abilities/checks.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/player/abilities/checks.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/checks.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/player/abilities/checks.mcfunction", "color": "aqua"}}}]

    # Initialise check
scoreboard players set @s eoflib.check 1

    # Initialise scores
execute unless predicate eoflib:settings/player/set_slot/valid_primary run scoreboard players set @s eoflib.set_slot.primary 6
execute unless predicate eoflib:settings/player/set_slot/valid_secondary run scoreboard players set @s eoflib.set_slot.secondary 7
execute unless predicate eoflib:settings/player/set_slot/valid_tertiary run scoreboard players set @s eoflib.set_slot.tertiary 8

    # Fail
        ## Not a Dragon (-1)
execute if score @s eoflib.check matches 1 run function eoflib:config/settings/player/abilities/checks/not_a_dragon

        ## Globally disabled (-2)
execute if score @s eoflib.check matches 1 run function eoflib:config/settings/player/abilities/checks/admin_disabled

        ## Slots occupied (-3)
execute if score @s eoflib.check matches 1 run function eoflib:config/settings/player/abilities/checks/occupied_slots

        ## Cancel ability toggle request
execute if score @s eoflib.check matches -3..-1 run scoreboard players set @s eof.abilities 0

    # Succeed
execute if score @s eoflib.check matches 1 run function eoflib:config/settings/player/abilities/enable

#endregion
