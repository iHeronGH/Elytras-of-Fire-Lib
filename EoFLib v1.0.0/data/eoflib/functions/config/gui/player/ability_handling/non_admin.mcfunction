#> eoflib:config/gui/player/ability_handling/non_admin
#
# Display non-admin-targeted messages.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/non_admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/player/ability_handling/non_admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/non_admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/player/ability_handling/non_admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/non_admin.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/player/ability_handling/non_admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Globally Disabled
execute unless predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!\n\nThis setting is disabled. Contact an\nadministrator if this is incorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "dark_gray"}}}]

        ## No Tribe
execute if predicate eoflib:settings/admin/allow_abilities unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!\n\nYou are not a member of any tribes.\nContact an administrator if this is\nincorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "dark_gray"}}}]

    # Success
        ## Sacrifice Ability
execute if predicate eoflib:settings/admin/allow_abilities if entity @s[tag=eoflib.ah.drop_item, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Drop Item", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove and disable your abilities until\nthey are activated again.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 8"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "gray"}}}]

        ## Sacrifice Item
execute if predicate eoflib:settings/admin/allow_abilities if entity @s[tag=!eoflib.ah.drop_item, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 9"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "gray"}}}]

#endregion
