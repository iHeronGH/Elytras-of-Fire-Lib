# Elytras of Fire Lib

## Welcome!

Elytras of Fire Lib is a Minecraft datapack used by other Elytras of Fire DLCs to function properly. Without it, these DLCs will not work at all, so make sure you have this downloaded!

This datapack does nothing on its own. If you are looking to use this alongside other datapacks that depend on this, [view a list of available DLCs here](#dlc-compatibility); if you would like to develop a DLC, [view this example pack](https://github.com/iHeronGH/DLC-Template) and read the documentation below.

---

## Table of Contents

- [Elytras of Fire Lib](#elytras-of-fire-lib)
  - [Welcome!](#welcome)
  - [Table of Contents](#table-of-contents)
  - [Installation and Uninstallation](#installation-and-uninstallation)
  - [Features](#features)
    - [DLC Compatibility](#dlc-compatibility)
    - [Advancements](#advancements)
      - [Ability Used](#eoflibability_usedjson)
      - [Death](#eoflibdeathjson)
      - [Dragon](#eoflibdragonjson)
      - [Ignited](#eoflibignitedjson)
      - [New ID](#eoflibnew_idjson)
      - [Rejoin](#eoflibrejoinjson)
      - [Ricardo Report](#eoflibricardo_reportjson)
      - [Root](#eoflibrootjson)
      - [Trigger](#eoflibtriggerjson)
    - [Loot Tables](#loot-tables)
      - Commands
        - [Ricardo](#eoflibricardojson)
      - Blocks
        - [Shulker Box](#minecraftshulker_boxjson)
    - [Predicates](#predicates)
      - [On Fire](#eoflibon_firejson)
      - [Inventory](#inventorypredicatejson)
      - [Location](#locationpredicatejson)
      - [Mainhand](#mainhandpredicatejson)
      - [Movement](#movementpredicatejson)
      - [Tribes](#tribespredicatejson)
    - [Tags](#tags)
      - Block Tags
        - [Earth Blocks](#eoflibearth_blocksjson)
        - [Ice](#eoflibicejson)
        - [Snow](#eoflibsnowjson)
        - [Waterlogged](#eoflibwaterloggedjson)
        - [Climbable](#minecraftclimbablejson)
        - [Desert](#eoflibdeserttagjson)
        - [Flora](#eoflibfloratagjson)
        - [Minecraft](#eoflibminecrafttagjson)
      - Entity Tags
        - [Projectiles](#eoflibprojectilesjson)
        - [Unaffected](#eoflibunaffectedjson)
      - Function Tags
        - [Config](#tagsfunctionsconfigjson)
        - [Detect DLCs](#tagsfunctionsdetect_dlcsjson)
        - [DLC Load](#tagsfunctionsdlc_loadjson)
        - [Uninstall](#tagsfunctionsuninstalljson)
        - [Load](#tagsfunctionsloadtagjson)
        - [Reset](#tagsfunctionsresettagjson)
        - [Timers](#tagsfunctionstimerstagjson)
      - Item Tags
        - [Items](#tagsitemsitemsjson)
  - [Planned Features](#planned-features)
    - [Abilities Support](#abilities-support)
    - [Ability Blacklist](#ability-blacklist)
    - [Custom Death Messages](#custom-death-messages)
    - [Friendly Fire (A.K.A. Wings)](#friendly-fire-aka-wings)
  - [Other Qualities](#other-qualities)
    - [Configuration Settings](#configuration-settings)
    - [IMP Compliance](#imp-compliance)

---

## Installation and Uninstallation

[Back to top](#)

Installing Elytras of Fire Lib is relatively simple:

1. Download the datapack using the [Releases](https://github.com/iHeronGH/Elytras-of-Fire-Lib/releases) tab on the right (this will be populated when the datapack is in a releasable state, which it is not as of writing this.)
2. Open your world folder and place the downloaded folder into the "datapacks" folder.
3. Use **`/reload`** in-game to refresh your world. If you have installed it correctly, you will be met with a successful installation message. Thank you for using Elytras of Fire! I hope you enjoy it.

And uninstalling Elytras of Fire Lib is even simpler:

1. Run the command **`/function eoflib:uninstall`**. This will uninstall Elytras of Fire Lib along with all other dependent DLCs\*. And that's it!

    *\*Always double-check that your DLCs uninstalled correctly! Elytras of Fire Lib does its best to remove itself and its dependencies, but it's up to the developers of these DLCs that they are removed entirely. Contact the respective developers regarding incomplete uninstallation; unless it is an issue with Elytras of Fire Lib itself, I will not offer my assistance directly.*

---

## Features

[Back to top](#)

### DLC Compatibility

Elytras of Fire Lib, as a library of sources that other datapacks can hook into, promotes DLCs!

If you're looking to use Elytras of Fire Lib and other DLCs, here is a list updated as of **`October 10, 2023`** for all supported DLCs:

- [iHeronGH](https://github.com/iHeronGH)'s [Elytras of Fire](https://github.com/iHeronGH/Elytras-of-Fire)
- [iHeronGH](https://github.com/iHeronGH)'s [The Lost Continent](https://github.com/iHeronGH/The-Lost-Continent)

If you're a developer, contributor, or just plain curious, continue below as documented are some features that datapack makers can use to get the most out of this library. You can also [check out an example pack](https://github.com/iHeronGH/DLC-Template) to have the process a little more streamlined and have guidance throughout your development.

---

### Advancements

Elytras of Fire Lib comes with 9 advancements:

<details>

<summary> View Advancements List </summary>

[Back to top](#)

#### eoflib:ability_used.json

**`ability_used.json`** is an advancement that is rewarded to players who have right-clicked their ability item — not necessarily activating said ability, but solely using the item. **`ability_used.json`** can be hooked into by adding your functions to your datapack's **`eoflib:reset/abilities.json`** function tag. Note that functions triggered via this advancement will activate one game tick after this advancement is rewarded to properly reset used abilities. **Do not overwrite/add the file to Elytras of Fire Lib.**

```text
📦 eoflib:advancements
└ 📄 ability_used.json
```

#### eoflib:death.json

**`death.json`** is an advancement that is rewarded to players who have died. **`death.json`** can be hooked into by setting this advancement as a parent to any other advancement you'd like, or by adding your functions to your datapack's **`eoflib:tags/functions/death.json`** function tag. **Do not overwrite/add the file to Elytras of Fire Lib.**

```json
{
  "parent": "eoflib:death",
  ...
}
```

```text
📦 eoflib:advancements
└ 📄 death.json
```

#### eoflib:dragon.json

**`dragon.json`** is an advancement that is rewarded under either of the following conditions: when a player joins a team that is recognised by any datapack as an Elytras of Fire team, or when a player is given a tag matching the name of an Elytras of Fire team. **`dragon.json`** can be hooked into by setting this advancement as a parent to any other advancement you'd like. **Do not overwrite/add the file to Elytras of Fire Lib.**

```json
{
  "parent": "eoflib:dragon",
  ...
}
```

```text
📦 eoflib:advancements
└ 📄 dragon.json
```

#### eoflib:ignited.json

**`ignited.json`** is an advancement that is rewarded when a player is damaged by fire. **`ignited.json`** can be hooked into by setting this advancement as a parent to any other advancement you'd like. **Do not overwrite/add the file to Elytras of Fire Lib.**

```json
{
  "parent": "eoflib:ignited",
  ...
}
```

```text
📦 eoflib:advancements
└ 📄 ignited.json
```

#### eoflib:new_id.json

**`new_id.json`** is an advancement that is rewarded to players who have joined the server for the first time since the datapack's loading. It assigns every player a unique score that can be used to distinguish between players, separate ability users from targets, and so on. **`new_id.json`** can be hooked into by adding your functions to your datapack's **`eoflib:tags/functions/new_id.json`** function tag. **Do not overwrite/add the file to Elytras of Fire Lib.**

```json
{
  "replace": false,
  "values": [
    "namespace:function/path/here",
    ...
  ]
}
```

```text
📦 eoflib:advancements
└ 📄 new_id.json
```

#### eoflib:rejoin.json

**`rejoin.json`** is an advancement that is activated when a player rejoins the server. Most commonly, this is used to reactivate schedules that require players present on the server such as tribe effects and passive abilities. **`rejoin.json`** can be hooked into by adding your functions to your datapack's **`eoflib:tags/functions/rejoin.json`** function tag. **Do not overwrite/add the file to Elytras of Fire Lib.**

```json
{
  "parent": "eoflib:rejoin",
  ...
}
```

```text
📦 eoflib:advancements
└ 📄 rejoin.json
```

#### eoflib:ricardo_report.json

**`ricardo_report.json`** is an advancement used by this library to detect if something has gone horribly wrong. It handles the event in which a player either throws or eats Ricardo the Error potato, sending the player a bug report form in chat along with the opportunity to bid Ricardo farewell.

```text
📦 eoflib:advancements
└ 📄 ricardo_report.json
```

#### eoflib:root.json

**`root.json`** is an advancement that is rewarded to players who have joined the server for the first time since the datapack's loading. It is simply used to detect that the datapack has loaded. **Do not overwrite/add the file to Elytras of Fire Lib.**

```json
{
  "parent": "eoflib:root",
  ...
}
```

```text
📦 eoflib:advancements
└ 📄 root.json
```

#### eoflib:trigger.json

**`trigger.json`** is an advancement that is rewarded to players who have triggered certain scoreboard events.**

```text
📦 eoflib:advancements
└ 📄 trigger.json
```

</details>

---

### Loot Tables

Elytras of Fire Lib comes with 2 loot tables: **`ricardo.json`** and **`shulker_box.json`**.

<details>

<summary> View Loot Tables List </summary>

[Back to top](#)

#### eoflib:ricardo.json

**`ricardo.json`** is a loot table that creates a poisonous potato named Ricardo the Error Potato. He's a cute little guy with big, round eyes, a well-kept mustache, and a black-as-coals top hat! Ricardo is meant to be a bug item; if Ricardo is accidentally — or on purpose — given to a player, he lets them know to submit a bug report.

```text
📦 eoflib:loot_tables
└ 📁 commands
  └ 📄 ricardo.json
```

#### minecraft:shulker_box.json

**`shulker_box.json`** is a loot table that manipulates shulkers to drop their contents if an item with specific NBT is used to break it. Use any item or **`/loot mine`** command that has the **`{items: 1b}`** tag to obtain only the contents of the shulker box.

```text
📦 minecraft:loot_tables
└ 📁 blocks
  └ 📄 shulker_box.json
```

</details>

---

### Predicates

Elytras of Fire Lib comes with many predicates for DLCs to hook into:

<details>

<summary> View Predicates List </summary>

[Back to top](#)

#### eoflib:on_fire.json

**`on_fire.json`** checks if an entity is on fire.

```text
📦 eoflib:predicates
└ 📄 on_fire.json
```

#### inventory/.../\<predicate>.json

Predicates located here deal with inventory checking. By default, 9 files are included, each checking a specific hotbar slot to see if it is unoccupied.

```text
📦 eoflib:predicates
└ 📁 inventory
  ├ 📄 slot_0_empty.json
  ├ 📄 slot_1_empty.json
  ├ 📄 slot_2_empty.json
  ├ 📄 slot_3_empty.json
  ├ 📄 slot_4_empty.json
  ├ 📄 slot_5_empty.json
  ├ 📄 slot_6_empty.json
  ├ 📄 slot_7_empty.json
  └ 📄 slot_8_empty.json
```

#### location/.../\<predicate>.json

Predicates located here deal with location checking. By default, 2 files are included: **`submerged_in_water.json`** checks for players that are completely encompassed in water (or waterlogged blocks) and **`water.json`** checks for players standing on or in water (or waterlogged blocks.)

```text
📦 eoflib:predicates
└ 📁 location
  ├ 📄 submerged_in_water.json
  └ 📄 water.json
```

#### mainhand/.../\<predicate>.json

Predicates located here deal with mainhand checking. By default, 3 files are included, each checking whether a player is holding either a primary, secondary, or tertiary ability in their mainhand.

```text
📦 eoflib:predicates
└ 📁 mainhand
  └ 📁 ability
    ├ 📄 primary.json
    ├ 📄 secondary.json
    └ 📄 tertiary.json
```

#### movement/.../\<predicate>.json

Predicates located here deal with movement checking. By default, 6 files are included, each checking for general and player-specific movement types.

```text
📦 eoflib:predicates
└ 📁 movement
  ├ 📄 elytra_flight.json
  ├ 📄 ground_sneak.json
  ├ 📄 on_ground.json
  ├ 📄 sneak.json
  ├ 📄 sprint.json
  └ 📄 swim.json
```

#### tribes/.../\<predicate>.json

Predicates located here deal with tribe checking. By default, only 1 file is included.

```text
📦 eoflib:predicates
└ 📁 tribes
  └ 📄 dragon.json
```

</details>

---

### Tags

Elytras of Fire Lib comes with dozens of tags for blocks, entities, functions, and items for DLCs to hook into:

<details>

<summary> View Block Tags List </summary>

[Back to top](#)

#### eoflib:earth_blocks.json

**`earth_blocks.json`** groups blocks associated with earthy/silty materials.

```text
📦 eoflib:tags
└ 📁 blocks
  └ 📄 earth_blocks.json
```

#### eoflib:ice.json

**`ice.json`** groups blocks associated with ice.

```text
📦 eoflib:tags
└ 📁 blocks
  └ 📄 ice.json
```

#### eoflib:snow.json

**`snow.json`** groups blocks associated with snow.

```text
📦 eoflib:tags
└ 📁 blocks
  └ 📄 snow.json
```

#### eoflib:waterlogged.json

**`waterlogged.json`** groups blocks that are able to be waterlogged.

```text
📦 eoflib:tags
└ 📁 blocks
  └ 📄 waterlogged.json
```

#### minecraft:climbable.json

**`climbable.json`** adds to Minecraft's own **`climbable.json`** block tag. Because there is no way to make custom block tags climbable, this is the only overwrite Elytras of Fire Lib does to the Minecraft namespace.

```text
📦 minecraft:tags
└ 📁 blocks
  └ 📄 climbable.json
```

#### eoflib:desert/.../\<tag>.json

Tags here group blocks commonly found composing Minecraft deserts. By default, 5 related files are included.

```text
📦 eoflib:tags
└ 📁 blocks
  ├ 📄 desert.json
  └ 📁 desert
    ├ 📄 sand.json
    ├ 📄 sandstone.json
    └ 📁 sandstone
      ├ 📄 red.json
      └ 📄 white.json
```

#### eoflib:flora/.../\<tag>.json

Tags here group blocks best described as flora. They are further grouped by dimension and general distinction (grasses, mosses, vines, etc.) By default, 10 related files are included.

```text
📦 eoflib:tags
└ 📁 blocks
  ├ 📄 flora.json
  └ 📁 flora
    ├ 📄 dripleaf.json
    ├ 📄 grass.json
    ├ 📄 moss.json
    ├ 📄 mushrooms.json
    ├ 📄 vines.json
    └ 📁 nether
    │ ├ 📄 grass.json
    │ └ 📄 vines.json
    └ 📁 overworld
      ├ 📄 grass.json
      └ 📄 vines.json
```

#### eoflib:minecraft/.../\<tag>.json

Tags here group blocks that are meant to replace or add to the default Minecraft tags in terms of usage. [As it is good practice to not *overwrite* default tags](#imp-compliance), these are simply here to abide by this practice. By default, 11 files are included.

```text
📦 eoflib:tags
└ 📁 blocks
  └ 📁 minecraft
    ├ 📄 air.json
    ├ 📄 amethyst.json
    ├ 📄 coral_fans.json
    ├ 📄 corals.json
    ├ 📄 dirt.json
    ├ 📄 flowers.json
    ├ 📄 glass_panes.json
    ├ 📄 gravel.json
    ├ 📄 redstone_components.json
    ├ 📄 sand.json
    └ 📄 torches.json
```

</details>

<details>

<summary> View Entity Tags List </summary>

[Back to top](#)

#### eoflib:projectiles.json

**`projectiles.json`** groups entities used as projectiles by any entity or block.

```text
📦 eoflib:tags
└ 📁 entities
  └ 📄 projectiles.json
```

#### eoflib:unaffected.json

**`unaffected.json`** groups entities that are unable to be affected by any vanilla Minecraft effects.

```text
📦 eoflib:tags
└ 📁 entities
  └ 📄 unaffected.json
```

</details>

<details>

<summary> View Function Tags List </summary>

[Back to top](#)

#### tags/functions/config.json

**`config.json`** is used by Elytras of Fire Lib and other DLCs to run configuration settings provided by them.

```text
📦 eoflib:tags
└ 📁 functions
  └ 📄 config.json
```

#### tags/functions/detect_dlcs.json

**`detect_dlcs.json`** is used by Elytras of Fire Lib and other DLCs to detect other DLCs.

```text
📦 eoflib:tags
└ 📁 functions
  └ 📄 detect_dlcs.json
```

#### tags/functions/dlc_load.json

**`dlc_load.json`** is used by Elytras of Fire Lib and other DLCs to load themselves and/or other DLCs.

```text
📦 eoflib:tags
└ 📁 functions
  └ 📄 dlc_load.json
```

#### tags/functions/uninstall.json

**`uninstall.json`** is used by Elytras of Fire Lib and other DLCs to uninstall themselves and/or other DLCs.

```text
📦 eoflib:tags
└ 📁 functions
  └ 📄 uninstall.json
```

#### tags/functions/load/.../\<tag>.json

Tags here group functions to be ran only once by Elytras of Fire Lib or other DLCs. By default, 8 files are included.

```text
📦 eoflib:tags
└ 📁 functions
  └ 📁 load
    ├ 📁 del
    │ ├ 📄 forceloads.json
    │ ├ 📄 scoreboards.json
    │ ├ 📄 storage.json
    │ └ 📄 teams.json
    └ 📁 gen
      ├ 📄 forceloads.json
      ├ 📄 scoreboards.json
      ├ 📄 storage.json
      └ 📄 teams.json
```

#### tags/functions/reset/.../\<tag>.json

Tags here group functions to be ran when resetting certain aspects of Elytras of Fire Lib. By default, 1 file is included.

```text
📦 eoflib:tags
└ 📁 functions
  └ 📁 reset
    └ 📄 tribe_advancements.json
```

#### tags/functions/timers/.../\<tag>.json

Tags here group functions to be ran on a regular schedule. By default, 4 files are included.

```text
📦 eoflib:tags
└ 📁 functions
  └ 📁 timer
    ├ 📄 1t.json
    ├ 📄 5t.json
    └ 📄 10t.json
    └ 📄 20t.json
```

</details>

<details>

<summary> View Item Tags List </summary>

[Back to top](#)

#### tags/items/items.json

**`items.json`** is used by Elytras of Fire Lib and other DLCs to group items used by them.

```text
📦 eoflib:tags
└ 📁 functions
  └ 📁 items
    └ 📄 items.json
```

</details>

---

## Planned Features

[Back to top](#)

### Abilities Support

Arguably one of the most major parts of Elytras of Fire, ability support will be coming next! Currently there is minimal framework for ability support, but this is the next step in the development of Elytras of Fire Lib — and Elytras of Fire as a whole.

### Ability Blacklist

The Ability Blacklist is planned to exclude certain abilities from being granted to players. It is slated to deny abilities by type (primary, secondary, and tertiary), by tribe, and/or individually.

### Custom Death Messages

Custom Death Messages will be exactly that: custom death messages that will play when a player or named entity dies by a registered Elytras of Fire ability.

### Friendly Fire (A.K.A. Wings)

"Wings," in this instance, will refer to groups that users of Elytras of Fire can form; this can be most likened to factions found on Factions servers. Players that are a part of the same Wing will not be able to damage or negatively afflict one another via their abilities, and can invite up to 9 other players to their Wing.

---

## Other Qualities

[Back to top](#)

### Configuration Settings

Elytras of Fire Lib comes with many settings to fit many niches!
<!--ooooooohhh spooky its line 666 :scream:-->
<details>

<summary> Player Settings </summary>

[Back to top](#)

The following entries are settings that any player can use and configure, no matter the conditions:

- **Enable Tribe Abilities**: Toggle on or off your hotbar abilities. (Default: OFF)
  - ON: Player is able to use active abilities freely. They may disable them at any point.
  - OFF: Player is unable to use active abilities. They may enable them at any point.<br><br>
- **Enable Tribe Attributes**: Toggle on or off your tribe's attributes and any passive abilities. (Default: OFF)
  - ON: Player benefits from the passive effects of their current tribe. They may disable them at any point.
  - OFF: Player is unaffected by any tribe's passive effects. They may enable them at any point.<br><br>
- **Enable Range Display**: Toggle on or off the range preview for your held ability. (Default: OFF)
  - ON: Player receives visual feedback of the range/range type of their held ability. They may disable this feedback at any point.
  - OFF: Player no longer sees their held ability's range preview. They may enable this feedback at any point.<br><br>
- **Ability Handling**: Choose what happens when an ability item is replaced with another item. (Default: Remove Abilities)
  - Remove Abilities: Player's abilities are automatically disabled when a non-ability item enters a slot occupied by an ability item.
  - Remove Items: Player's attempt to replace an ability item with a non-ability item results in the non-ability item being dropped at their feet.<br><br>

</details>

<details>

<summary> Admin Settings </summary>

[Back to top](#)

The following entries are settings that only players with the **`eoflib.admin`** tag can change:

- **Persistent Settings**: Keep your settings when the world is reloaded in any way. (Default: ON)
  - ON: Admin Settings and Uninstall Settings stay as-configured when the /reload command is ran or the world is otherwise reloaded.
  - OFF: Admin Settings and Uninstall Settings are set to the default, recommended settings on world reloading.
    - Default: Admin Settings and Uninstall Settings are immediately set to their defaults.<br><br>
- **Allow Abilities**: Toggle the ability for non-admin players to toggle their abilities. (Default: ON)
  - ON: Players are able to freely toggle on or off their tribe abilities. Players must reenable their setting when Allow Abilities is changed from OFF to ON.
  - OFF: Players are no longer able to toggle on their tribe abilities, and all players have their abilities disabled.
    - Blacklist: Edit the [Ability Blacklist](#ability-blacklist).<br><br>
- **Allow Attributes**: Toggle the ability for non-admin players to toggle their tribe attributes. (Default: ON)
  - ON: Players are able to freely toggle on or off their tribe attributes. Players must reenable their setting when Allow Attributes is changed from OFF to ON.
  - OFF: Players are no longer able to toggle on their tribe attributes, and all players have their attributes disabled.<br><br>
- **Allow Range Display**: Toggle the ability for non-admin players to toggle Range Display. (Default: OFF)
  - ON: Players are able to freely toggle on or off their ability's range display. Players must reenable their setting when Allow Range Display is changed from OFF to ON.
  - OFF: Players are no longer able to toggle on their ability's range display, and all players have their ability's range display disabled.<br><br>
- **Enable Deactiviation Timer**: The Deactivation timer automatically disables abilities for players who are not actively using them. Enable this option to decrease performance impact of Elytras of Fire Lib and any installed DLCs. (Default: ON)
  - ON: Players who have not actively used their ability during a period of time will automatically have them disabled.
  - OFF: Players will keep their abilities active regardless of ability inactivity.<br><br>
- **Enable Destructive Effects**: Toggle the destructive properties that some abilities come with. (Default: OFF)
  - ON: Abilities can cause physical damage to some terrain, structures, buildings, etc.
  - OFF: Abilities will cause no damage to the environment and will only affect entities.<br><br>
- **Custom Death Messages** (unreleased): Toggle custom death messages when players are killed by certain abilities. (Default: ON)
  - ON: Deaths caused by certain abilities will give a datapack-generated death message. Purely cosmetic.
  - OFF: Deaths by abilities will not yield new death messages.<br><br>
- **Enable Friendly Fire** (unreleased): Toggle friendly fire for most abilities. (Default: OFF)
  - ON: ---
  - OFF: ---<br><br>
- **Cooldown Bypass**: Cooldown Bypass allows you to bypass all tribe ability cooldowns. (Default: OFF)
  - ON: User will bypass all cooldowns imposed by abilities.
  - OFF: User is penalised by ability cooldowns on successful use.<br><br>
- **Debug Mode**: Debug Mode displays helpful information in-game to streamline datapack development and show function references and sources. (Default: OFF)
  - ON: User will receive debugging messages in chat.
  - OFF: User will see no technical messages.

</details>

<details>

<summary> Uninstall Settings </summary>

[Back to top](#)

The following entries are settings that only players with the **`eoflib.admin`** tag can change:

- **Keep Teams**: Remove all tribe teams when this datapack is uninstalled (Default: ON)
  - ON: Teams will remain after uninstall.
  - OFF: Teams will be removed during uninstall.<br><br>
- **Keep Scoreboards**: Remove all scoreboard objectives and data when this datapack is uninstalled. (Default: ON)
  - ON: Scoreboards will remain after uninstall.
  - OFF: Scoreboard objectives and data will be removed during uninstall.<br><br>
- **Keep Storages**: Remove all storage data when this datapack is uninstalled. (Default: ON)
  - ON: Storage data will remain after uninstall.
  - OFF: Relevant storage data will be removed during uninstall.<br><br>
- **Keep Forceloads**: Toggle whether forceloaded chunks stay forceloaded after this datapack is uninstalled. (Default: ON)
  - ON: Forceloaded chunks will remain forceloaded after uninstall.
  - OFF: Forceloaded chunks will no longer be forceloaded during uninstall.

</details>

### IMP Compliance

The following features of Elytras of Fire Lib are listed to prove [IMP compliance](https://github.com/Arcensoth/imp-spec), which are a set of suggested guidelines for Minecraft datapacks that ensure quality, compatibility, and optimal user and development experience.

> Core Standards: [Leave vanilla alone](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_core.md#1-leave-vanilla-alone)

The sole edit to Vanilla is the **`climbable`** block tag. There is currently no implementable workaround for this.

> Core Standards: [Namespace everything](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_core.md#2-namespace-everything)

All entity tags, custom items, scoreboard objectives, and storages used in Elytras of Fire use the following namespaces to clarify association with Elytras of Fire:

- **`eoflib`**
- **`eof`**

> Documentation: [Function headers](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_doc.md#function-headers)

All functions utilise the IMP-recommended header to the best of my ability. I do not guarantee 100% accuracy.

> Documentation: [Function annotations](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_doc.md#function-annotations)

All functions utilise the appropriate IMP-recommended annotations to the best of my ability. I do not guarantee 100% accuracy.
