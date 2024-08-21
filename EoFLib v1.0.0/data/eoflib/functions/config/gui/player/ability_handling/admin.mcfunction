#> eoflib:config/gui/player/ability_handling/admin
#
# Display admin-targeted messages.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/player/ability_handling/admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/player/ability_handling/admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/admin.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/player/ability_handling/admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## No Tribe
            ### AS: Disable Abilities
execute if entity @s[tag=eoflib.admin, predicate=!eoflib:tribes/dragon] if predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!\n\nYou are not a member of any tribes.", "color": "dark_gray"}}, "clickEvent": {"action": "suggest_command", "value": "/team join team"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Disable the ability for non-admin players to\nchange how their abilities are handled.", "color": "red"}, {"text": "\n\n* This setting changes and is changed by\nthe Allow Abilities admin setting.", "color": "gray", "italic": true}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 22"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "dark_gray"}}}]

            ### AS: Enable Abilities
execute if entity @s[tag=eoflib.admin, predicate=!eoflib:tribes/dragon] unless predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!\n\nYou are not a member of any tribes.", "color": "dark_gray"}}, "clickEvent": {"action": "suggest_command", "value": "/team join team"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Enable the ability for non-admin players to\nchange how their abilities are handled.", "color": "green"}, {"text": "\n\n* This setting changes and is changed by\nthe Allow Abilities admin setting.", "color": "gray", "italic": true}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 22"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "dark_gray"}}}]

    # Success
        ## Sacrifice Ability
            ### AS: Disable Abilities
execute if entity @s[tag=eoflib.admin, tag=eoflib.ah.drop_item, predicate=eoflib:tribes/dragon] if predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Drop Item", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove and disable your abilities until\nthey are activated again.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 8"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the ability for non-admin players to\ntoggle their abilities.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 22"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "gray"}}}]

            ### AS: Enable Abilities
execute if entity @s[tag=eoflib.admin, tag=eoflib.ah.drop_item, predicate=eoflib:tribes/dragon] unless predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Drop Item", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove and disable your abilities until\nthey are activated again.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 8"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable the ability for non-admin players to\ntoggle their abilities.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 22"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "gray"}}}]

        ## Sacrifice Item
            ### AS: Disable Abilities
execute if entity @s[tag=eoflib.admin, tag=!eoflib.ah.drop_item, predicate=eoflib:tribes/dragon] if predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 9"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the ability for non-admin players to\ntoggle their abilities.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 22"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "gray"}}}]

            ### AS: Enable Abilities
execute if entity @s[tag=eoflib.admin, tag=!eoflib.ah.drop_item, predicate=eoflib:tribes/dragon] unless predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Remove Abilities", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: Setting to Drop Item will drop the\nitem you replace your ability with, which can\npotentially put your valuables in danger.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 9"}}, {"text": "] [", "color": "gray"}, {"text": "AS", "color": "gold"}, {"text": ": ", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable the ability for non-admin players to\ntoggle their abilities.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 22"}}, {"text": "] ", "color": "gray"}, {"text": "Ability Handling", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Choose what happens when an ability item\nis replaced with another item.", "color": "gray"}}}]

#endregion
