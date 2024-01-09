#> eoflib:advancement/ignited
#
# Run commands when a player is damaged by a fire attack.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:advancement/ignited.mcf", "color": "gold"}]

    # Rejoin commands
function #eoflib:advancement/ignited

    # Reset
advancement revoke @s only eoflib:ignited

#endregion
