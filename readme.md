# Elytras of Fire Lib

## Welcome!

Elytras of Fire Lib is a Minecraft datapack used by other Elytras of Fire DLCs to function properly. Without it, these DLCs will not work at all, so make sure you have this downloaded!

---

## Table of Contents

- [Installation and Uninstallation](#installation-and-uninstallation)
- [Features](#features)
  - [DLC Compatibility!](#dlc-compatibility)
  - [Advancements](#advancements)
    - [Dragon](#advancementsdragonjson)
    - [New ID](#advancementsnew_idjson)
    - [Rejoin](#advancementsrejoinjson)
    - [Ricardo](#advancementsricardojson)
    - [Root](#advancementsrootjson)
    - [Trigger](#advancementstriggerjson)
  - [Loot Tables](#loot-tables)
    - Commands
      - [Ricardo](#loot_tablescommandsricardojson)
    - Blocks
      - [Shulker Box](#loot_tablesblocksshulker_boxjson)
  - [Predicates](#predicates)
    - [Inventory Folder](#inventorypredicatejson)
    - [Location Folder](#locationpredicatejson)
    - [Mainhand Folder](#mainhandpredicatejson)
    - [Movement Folder](#movementpredicatejson)
    - [Tribes Folder](#tribespredicatejson)
  - [Tags](#tags)
    - Block Tags
      - [Desert](#tagsblocksdeserttagjson)
      - [Flora](#tagsblocksfloratagjson)
      - [Minecraft](#tagsblocksminecrafttagjson)
      - [Climbable](#tagsblocksclimbablejson)
    - Entity Tags
      - [Projectiles](#tagsentity_typesprojectilesjson)
      - [Unaffected](#tagsentity_typesunaffectedjson)
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
  - Admin Settings
    - [Ability Blacklist](#ability-blacklist)
    - [Custom Death Messages](#custom-death-messages)
    - [Friendly Fire](#friendly-fire-aka-wings)
- [Other Qualities](#other-qualities)
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

If you're a developer, contributor, or just plain curious, continue below as documented are some features that datapack makers can use to get the most out of this library.

### Advancements

Elytras of Fire Lib comes with 6 advancements: **`dragon.json`**, **`new_id.json`**, **`rejoin.json`**, **`ricardo.json`**, **`root.json`**, and **`trigger.json`**.

<details>

<summary>View Advancements List</summary>

[Back to top](#)

#### advancements/dragon.json

**`dragon.json`** is an advancement that is rewarded under either of the following conditions: when a player joins a team that is recognised by any datapack as an Elytras of Fire team, or when a player is given a tag matching the name of an Elytras of Fire team.

#### advancements/new_id.json

**`new_id.json`** is an advancement that is rewarded to players who have joined the server for the first time since the datapack's loading. It assigns every player a unique score that can be used to distinguish between players, separate ability users from targets, and so on.

#### advancements/rejoin.json

**`rejoin.json`** is an advancement that is activated when a player rejoins the server. Upon rejoining, a series of commands can be specified to play in your DLC datapack's **`eoflib:tags/functions/rejoin`** function tag. Most commonly, this is used to reactivate schedules that require players present on the server such as tribe effects and passive abilities.

#### advancements/ricardo.json

**`ricardo.json`** is an advancement used by this library to detect if something has gone horribly wrong. It handles the event in which a player either throws or eats Ricardo the Error potato, sending the player a bug report form in chat along with the opportunity to bid Ricardo farewell.

#### advancements/root.json

**`root.json`** is an advancement that is rewarded to players who have joined the server for the first time since the datapack's loading. It is simply used to detect that the datapack has loaded.

#### advancements/trigger.json

**`trigger.json`** is an advancement that is rewarded to players who have triggered certain scoreboard events.

</details>

### Loot Tables

Elytras of Fire Lib comes with 2 advancements: **`ricardo.json`** and **`shulker_box.json`**.

<details>

<summary>View Loot Tables List</summary>

[Back to top](#)

#### loot_tables/commands/ricardo.json

**`ricardo.json`** is a loot table that creates a poisonous potato named Ricardo the Error Potato. He's a cute little guy with big, round eyes, a well-kept mustache, and a black-as-coals top hat! Ricardo is meant to be a bug item; if Ricardo is accidentally — or on purpose — given to a player, he lets them know to submit a bug report.

#### loot_tables/blocks/shulker_box.json

**`shulker_box.json`** is a loot table that manipulates shulkers to drop their contents if a specific item is used to break it.

</details>

### Predicates

Elytras of Fire Lib comes with many predicates for DLCs to hook into:

<details>

<summary>View Predicates List</summary>

[Back to top](#)

#### inventory/.../\<predicate>.json

Predicates located here deal with inventory checking. By default, 9 files are included, each checking a specific hotbar slot to see if it is unoccupied.

#### location/.../\<predicate>.json

Predicates located here deal with location checking. By default, 2 files are included; **`submerged_in_water.json`** checks for players that are completely encompassed in water (or waterlogged blocks) and **`water.json`** checks for players standing on or in water (or waterlogged blocks.)

#### mainhand/.../\<predicate>.json

Predicates located here deal with mainhand checking. By default, 3 files are included, each checking whether a player is holding either a primary, secondary, or tertiary ability in their mainhand.

#### movement/.../\<predicate>.json

Predicates located here deal with movement checking. By default, 5 files are included, each checking for specific general and player-specific movement types.

#### tribes/.../\<predicate>.json

Predicates located here deal with tribe checking. By default, 1 file is included — **`dragon.json`** (this file is extremely important!)

</details>

### Tags

Elytras of Fire Lib comes with dozens of tags for blocks, entities, functions, and items for DLCs to hook into:

<details>

<summary>View Block Tags List</summary>

[Back to top](#)

#### tags/blocks/desert/.../\<tag>.json

Tags here group blocks commonly found composing Minecraft deserts. By default, 4 files are included.

#### tags/blocks/flora/.../\<tag>.json

Tags here group blocks best described as flora. They are further grouped by dimension and general distinction (grasses, mosses, vines, etc.) By default, 9 files are included.

#### tags/blocks/minecraft/.../\<tag>.json

Tags here group blocks that are meant to replace or add to the default Minecraft tags in terms of usage. [As it is best practice to not *overwrite* default tags](#imp-compliance), these are simply here to abide by this practice. By default, 11 files are included.

#### tags/blocks/climbable.json

**`climbable.json`** adds to Minecraft's own **`climbable.json`** block tag. Because there is no way to make custom block tags climbable, this is the only overwrite Elytras of Fire Lib does to the Minecraft namespace.

</details>

<details>

<summary>View Entity Tags List</summary>

[Back to top](#)

#### tags/entity_types/projectiles.json

**`projectiles.json`** groups entities used as projectiles by any entity or block.

#### tags/entity_types/unaffected.json

**`unaffected.json`** groups entities that are unable to be affected by any vanilla Minecraft effects.

</details>

<details>

<summary>View Function Tags List</summary>

[Back to top](#)

#### tags/functions/config.json

**`config.json`** is used by Elytras of Fire Lib and other DLCs to run configuration settings provided by them.

#### tags/functions/detect_dlcs.json

**`detect_dlcs.json`** is used by Elytras of Fire Lib and other DLCs to detect other DLCs.

#### tags/functions/dlc_load.json

**`dlc_load.json`** is used by Elytras of Fire Lib and other DLCs to load themselves and/or other DLCs.

#### tags/functions/uninstall.json

**`uninstall.json`** is used by Elytras of Fire Lib and other DLCs to uninstall themselves and/or other DLCs.

#### tags/functions/load/.../\<tag>.json

Tags here group functions to be ran only once by Elytras of Fire Lib or other DLCs. By default, 8 files are included.

#### tags/functions/reset/.../\<tag>.json

Tags here group functions to be ran when resetting certain aspects of Elytras of Fire Lib. By default, 1 file is included.

#### tags/functions/timers/.../\<tag>.json

Tags here group functions to be ran on a regular schedule. By default, 3 files are included.

</details>

<details>

<summary>View Item Tags List</summary>

[Back to top](#)

#### tags/items/items.json

**`items.json`** is used by Elytras of Fire Lib and other DLCs to group items used by them.

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

### IMP Compliance

The following features of Elytras of Fire Lib are listed to prove [IMP compliance](https://github.com/Arcensoth/imp-spec), which are a set of suggested guidelines for Minecraft datapacks that ensure quality, compatibility, and optimal user and development experience.

> Core Standards: [Leave vanilla alone](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_core.md#1-leave-vanilla-alone)

The sole edit to Vanilla is the climbable block tag. There is currently no implementable workaround for this.

> Core Standards: [Namespace everything](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_core.md#2-namespace-everything)

All entity tags, custom items, scoreboard objectives, and storages used in Elytras of Fire use the following namespaces to clarify association with Elytras of Fire:

- **`eoflib`**
- **`eof`**

> Documentation: [Function headers](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_doc.md#function-headers)

All functions utilise the IMP-recommended header to the best of my ability. I do not guarantee 100% accuracy.

> Documentation: [Function annotations](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_doc.md#function-annotations)

All functions utilise the appropriate IMP-recommended annotations to the best of my ability. I do not guarantee 100% accuracy.
