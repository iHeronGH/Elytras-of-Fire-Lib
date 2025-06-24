#> eoflib:config/gui/admin/cooldown_bypass
#
# Display Admin Settings line for toggling Cooldown Bypass.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/cooldown_bypass.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/admin/cooldown_bypass.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/cooldown_bypass.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/admin/cooldown_bypass.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/cooldown_bypass.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/admin/cooldown_bypass.mcfunction", "color": "aqua"}}}]

    # Disable
execute if entity @s[tag=eoflib.cooldown.bypass] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Disable Cooldown Bypass for yourself.", "color": "green"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=eoflib.admin, tag=eoflib.cooldown.bypass] run trigger eoflib.trigger set 56"}}, {"text": "] ", "color": "gray"}, {"text": "Cooldown Bypass", "color": "red", "hover_event": {"action": "show_text", "value": {"text": "Cooldown Bypass allows you to bypass\nall tribe ability cooldowns.", "color": "gray"}}}]

    # Enable
execute if entity @s[tag=!eoflib.cooldown.bypass] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Warning: While Cooldown Bypass is only\nenabled for the administrator triggering\nit, it is purely intended for debugging\nand troubleshooting only.\n\nProceed with caution!", "color": "red"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=eoflib.admin, tag=!eoflib.cooldown.bypass] run trigger eoflib.trigger set 57"}}, {"text": "] ", "color": "gray"}, {"text": "Cooldown Bypass", "color": "red", "hover_event": {"action": "show_text", "value": {"text": "Cooldown Bypass allows you to bypass\nall tribe ability cooldowns.", "color": "gray"}}}]


#endregion
