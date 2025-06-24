#> eoflib:config/gui/player/ability_handling/non_admin
#
# Display non-admin-targeted messages.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/non_admin.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/player/ability_handling/non_admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/non_admin.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/player/ability_handling/non_admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/non_admin.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/player/ability_handling/non_admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Globally Disabled
execute unless predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "dark_gray", "hover_event": {"action": "show_text", "value": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!\n\nThis setting is disabled. Contact an\nadministrator if this is incorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "dark_gray", "strikethrough": true, "hover_event": {"action": "show_text", "value": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "dark_gray"}}}]

        ## No Tribe
execute if predicate eoflib:settings/admin/allow_abilities unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "dark_gray", "hover_event": {"action": "show_text", "value": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!\n\nYou are not a member of any tribes.\nContact an administrator if this is\nincorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "dark_gray", "strikethrough": true, "hover_event": {"action": "show_text", "value": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "dark_gray"}}}]

    # Success
        ## Sacrifice Ability
execute if predicate eoflib:settings/admin/allow_abilities if entity @s[tag=eoflib.ah.drop_item, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Drop Item", "color": "red", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Remove and disable your abilities until\nthey are activated again.", "color": "green"}}, "click_event": {"action": "run_command", "command": "/trigger eoflib.trigger set 6"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "gray"}}}]

        ## Sacrifice Item
execute if predicate eoflib:settings/admin/allow_abilities if entity @s[tag=!eoflib.ah.drop_item, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "green", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!", "color": "red"}}, "click_event": {"action": "run_command", "command": "/trigger eoflib.trigger set 7"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "gray"}}}]

#endregion
