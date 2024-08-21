#> eoflib:config/gui/admin/cooldown_bypass
#
# Display Admin Settings line for toggling Cooldown Bypass.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/cooldown_bypass.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/admin/cooldown_bypass.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/cooldown_bypass.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/admin/cooldown_bypass.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/cooldown_bypass.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/admin/cooldown_bypass.mcfunction", "color": "aqua"}}}]

    # Disable
execute if entity @s[tag=eoflib.cooldown.bypass] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable Cooldown Bypass for yourself.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin, tag=eoflib.cooldown.bypass] run trigger eoflib.trigger set 46"}}, {"text": "] ", "color": "gray"}, {"text": "Cooldown Bypass", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Cooldown Bypass allows you to bypass\nall tribe ability cooldowns.", "color": "gray"}}}]

    # Enable
execute if entity @s[tag=!eoflib.cooldown.bypass] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: While Cooldown Bypass is only\nenabled for the administrator triggering\nit, it is purely intended for debugging\nand troubleshooting only.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin, tag=!eoflib.cooldown.bypass] run trigger eoflib.trigger set 47"}}, {"text": "] ", "color": "gray"}, {"text": "Cooldown Bypass", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Cooldown Bypass allows you to bypass\nall tribe ability cooldowns.", "color": "gray"}}}]


#endregion
