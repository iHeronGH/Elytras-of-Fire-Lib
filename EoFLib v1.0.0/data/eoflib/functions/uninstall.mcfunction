#> eoflib:uninstall
#
# Begin pre-uninstall procedures.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:functions/uninstall.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/uninstall.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:functions/uninstall.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/uninstall.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:functions/uninstall.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/uninstall.mcfunction", "color": "aqua"}}}]

    # Tag player as about to uninstall
tag @s add eoflib.uninstall.active

    # Prompt Uninstall Settings
execute if entity @s[tag=eoflib.uninstall] run trigger eof.settings set 3

    # Suggest player use Uninstall Settings if Uninstall Mode is disabled
execute if entity @s[tag=!eoflib.uninstall] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Are you certain you wish to uninstall without enabling Uninstall Mode? Improperly preserved data may be lost!", "color": "red"}, {"text": "\n\n[", "color": "gray"}, {"text": "Check Settings", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Launch Uninstall Settings.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eof.settings set 3"}}, {"text": "] [", "color": "gray"}, {"text": "Proceed", "color": "dark_red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Proceed with uninstall without using\nUninstall Settings.\n\nThis is your final confirmation!", "color": "dark_red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 77"}}, {"text": "] [", "color": "gray"}, {"text": "Cancel", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Cancel Elytras of Fire uninstallation.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 78"}}, {"text": "]", "color": "gray"}]

#endregion
