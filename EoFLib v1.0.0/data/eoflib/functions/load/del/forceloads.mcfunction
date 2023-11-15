#> eoflib:load/del/forceloads
#
# Delete EoFLib forceloads.

#region
    # Forceload 1
        ## Remove Forceload
forceload remove 29999983 29999983

        ## Reset Area
execute positioned 29999983 -63 29999983 run fill ~ ~ ~ ~-2 ~-2 ~-2 bedrock

#endregion
