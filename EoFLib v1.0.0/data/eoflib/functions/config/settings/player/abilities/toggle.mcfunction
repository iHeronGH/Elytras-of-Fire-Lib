#> eoflib:config/settings/player/abilities/toggle
#
# Toggle on or off hotbar abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/abilities/toggle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/abilities/toggle.mcfunction", "color": "aqua"}}}]

    # Disable abilities
execute if entity @s[tag=eoflib.abils, scores={eof.abilities=1..}] run function eoflib:config/settings/player/abilities/disable

    # Enable abilities
execute if entity @s[tag=!eoflib.abils, scores={eof.abilities=1..}] run function eoflib:config/settings/player/abilities/checks

#endregion
