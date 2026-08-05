---
title: World Map Region and Biome System
document_id: SYS-029
version: 0.1
status: Draft
owner: World Design
engine: Unity 6 LTS
dependencies:
  - SYS-004 Procedural World Generation
  - SYS-010 Procedural Dungeon And Level Design System
  - SYS-019 World Factions And Reputation System
  - SYS-020 Procedural Event And Encounter System
  - SYS-021 Enemy Boss And Combat Encounter Design System
  - SYS-028 Camelot Hub And Kingdom Development System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-029 World Map, Region & Biome System

Version 0.1

---

# 1. Purpose

This document defines the world structure of Arthurian Britain.

The world is designed as a living, evolving kingdom where geography, factions, corruption, and history influence gameplay.

---

# 2. Core Philosophy

The core principle:

> Britain is not a collection of levels. It is a kingdom waiting to be reclaimed.

Every region should communicate:

- History
- Culture
- Conflict
- Danger
- Opportunity

---

# 3. Design Pillars Supported

✓ The World Must Remember

✓ Every Run Creates A Story

✓ Restore The Legend

✓ Become The King

✓ Exploration Matters

---

# 4. World Structure Overview

The world consists of:

```
Kingdom Map

↓

Regions

↓

Biomes

↓

Zones

↓

Encounters

↓

Dungeons
```

---

# 5. World Map Concept

Arthurian Britain is divided into:

```
Camelot Heartlands

Avalon Territories

Northern Kingdoms

Saxon Occupied Lands

Wildlands

Corrupted Lands
```

---

# 6. World Progression

The player begins restricted.

New regions unlock through:

```
Story Progression

Knight Recruitment

Faction Alliances

Boss Defeats

Camelot Growth
```

---

# 7. Region Architecture

Each region contains:

```
Identity

Biome

Faction Influence

Enemy Pool

Events

Bosses

Resources
```

---

# 8. Region Data Structure

Scriptable Object:

```
RegionDefinition
```

Contains:

```
Region ID

Name

Biome

Level Range

Faction

Enemy Pool

Events

Rewards
```

---

# 9. Region One

# Camelot Heartlands

Theme:

The birthplace of the new kingdom.

---

State:

Beginning:

```
Ruined

Unsafe

Forgotten
```

---

Later:

```
Restored

Protected

Prosperous
```

---

# 10. Camelot Heartlands Biomes

Contains:

```
Fields

Villages

Old Roads

Ruined Fortifications

Training Grounds
```

---

# 11. Region Two

# Broceliande Forest

Theme:

Ancient magical forest.

---

Faction:

Avalon / Fae.

---

Threats:

```
Fae Creatures

Corrupted Beasts

Lost Knights
```

---

# 12. Gameplay Identity

Focus:

- Exploration
- Magic
- Mystery

---

Special Events:

```
Ancient Shrines

Fae Bargains

Hidden Paths
```

---

# 13. Region Three

# Avalon

Theme:

The mythical island beyond mortal lands.

---

Purpose:

Late game magical region.

---

Contains:

```
Ancient Libraries

Magic Trials

Legendary Weapons
```

---

# 14. Region Four

# Saxon Borderlands

Theme:

War-torn territory.

---

Faction:

Saxon Kingdoms.

---

Gameplay:

```
Large Battles

Fortresses

Military Camps
```

---

# 15. Region Five

# The Cursed Kingdoms

Theme:

Lands corrupted by Morgana.

---

Visual Identity:

```
Dark Skies

Twisted Nature

Broken Castles
```

---

Enemies:

```
Cultists

Shadow Knights

Corrupted Beasts
```

---

# 16. Region Six

# The Old Lands

Theme:

Ancient Britain before Arthur.

---

Contains:

```
Standing Stones

Ancient Tombs

Forgotten Gods
```

---

# 17. Biome System

Each biome controls:

```
Terrain

Vegetation

Architecture

Lighting

Enemies

Events
```

---

# 18. Biome Examples

---

## Forest

Features:

```
Trees

Ruins

Wildlife

Hidden Paths
```

---

## Swamp

Features:

```
Poison

Lost Villages

Ancient Magic
```

---

## Mountains

Features:

```
Cliffs

Mines

Ancient Fortresses
```

---

## Ruins

Features:

```
Broken Kingdoms

Lost History

Elite Enemies
```

---

# 19. Procedural Generation Rules

Generated zones consider:

```
Region

Biome

Faction

Difficulty

Story State
```

---

# 20. Zone Generation

Each zone contains:

```
Entrance

Exploration Area

Combat Areas

Events

Elite Encounter

Reward Area

Exit
```

---

# 21. Environmental Storytelling

The world communicates history through:

```
Ruins

Objects

NPCs

Environmental Damage

Ancient Symbols
```

---

# 22. Faction Influence System

Regions can shift based on reputation.

Example:

High Avalon reputation:

```
More Fae Allies

More Magic Events
```

---

Low reputation:

```
Hostile Fae

Dangerous Encounters
```

---

# 23. Corruption System

Morgana's influence spreads.

Corruption affects:

```
Enemies

Lighting

Events

Loot

Terrain
```

---

# 24. Restoring Regions

Arthur can reclaim land.

Restoration provides:

```
Resources

Allies

Safe Areas

Rewards
```

---

# 25. Fast Travel

Unlocked through:

```
Camelot Expansion

Restored Settlements

Ancient Waystones
```

---

# 26. World Events

Regional events include:

```
Saxon Invasion

Fae Ritual

Dragon Awakening

Knight Challenge

Village Crisis
```

---

# 27. Boss Locations

Boss arenas are generated but themed.

Requirements:

```
Unique Identity

Environmental Story

Mechanics
```

---

# 28. Resource Distribution

Regions provide:

```
Crafting Materials

Rare Loot

Lore Items

Faction Rewards
```

---

# 29. Technical Architecture

Data:

```
RegionDefinition

BiomeDefinition

WorldSeed

ZoneDefinition
```

---

Runtime:

```
WorldManager

RegionManager

BiomeGenerator

ZoneGenerator
```

---

# 30. AI Generation Rules

AI agents creating regions must define:

```
Purpose

Visual Identity

Enemies

Events

Rewards

Lore
```

---

# 31. Performance Requirements

World generation must support:

```
Streaming

Object Pooling

LOD

Async Loading
```

---

# 32. Testing Requirements

Test:

## Variety

Are zones different?

---

## Identity

Does each region feel unique?

---

## Progression

Does exploration reward players?

---

## Performance

Does generation remain stable?

---

# 33. Future Expansion

Possible regions:

```
Ireland

Scotland

Otherworld

Atlantis

Avalon Depths
```

---

# Definition Of Done

World System complete when:

✓ Regions exist

✓ Biomes generate correctly

✓ Factions influence areas

✓ Zones feel unique

✓ Exploration is rewarding

✓ Britain feels alive
