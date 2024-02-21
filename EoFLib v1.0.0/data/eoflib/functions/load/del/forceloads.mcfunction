#> eoflib:load/del/forceloads
#
# Delete EoFLib forceloads.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:del/forceloads.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/del/forceloads.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:del/forceloads.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/del/forceloads.mcfunction", "color": "aqua"}}}]

    # Forceload 1
        ## Remove Forceload
forceload remove 29999983 29999983

        ## Reset Area
execute positioned 29999983 -63 29999983 run fill ~ ~ ~ ~-2 ~-2 ~-2 bedrock

#endregion
