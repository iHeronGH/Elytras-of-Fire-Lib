#> eoflib:load/gen/storage
#
# Generates abstract storage containers.

#region
    # Regenerate containers
        ## Settings
# execute unless data storage eoflib:config Settings[{save_settings: "on"}] run data merge storage eoflib:config {Settings: [{ability_timer: "on", allow_abilities: "on", allow_attributes: "on", allow_range_display: "off", destructive_abilities: "off", custom_deaths: "off", friendly_fire: "off", save_settings: "on"}]}

        ## Ability data
            ### Reset Storage
data modify storage eoflib:config {} set value {}

#endregion
