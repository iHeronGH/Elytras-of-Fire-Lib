#> eoflib:config/settings/admin/cooldown_bypass/bypass
#
# Bypass all cooldowns from Elytras of Fire abilities.

#region
    # Bypass Cooldowns
        ## Advancement Check
execute if entity @s[advancements={eoflib:used/primary=true}] run function eoflib:loop/cds/end/10s
execute unless entity @s[advancements={eoflib:meleed/mud_swipe=false, eoflib:meleed/soul_sap=false}] run function eoflib:loop/cds/end/12s
execute unless entity @s[advancements={eoflib:meleed/premonition=false, eoflib:meleed/tail_flail=false}] run function eoflib:loop/cds/end/20s
execute if entity @s[advancements={eoflib:used/secondary=true}] run function eoflib:loop/cds/end/24s

        ## Score Check
execute if entity @s[scores={eoflib.cd.10=1..}] run function eoflib:loop/cds/end/10s
execute if entity @s[scores={eoflib.cd.12=1..}] run function eoflib:loop/cds/end/12s
execute if entity @s[scores={eoflib.cd.24=1..}] run function eoflib:loop/cds/end/24s
execute if entity @s[scores={eoflib.cd.20=1..}] run function eoflib:loop/cds/end/20s

#endregion
