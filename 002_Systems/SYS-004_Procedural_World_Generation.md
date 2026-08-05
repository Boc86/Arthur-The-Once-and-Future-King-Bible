---
title: Procedural World Generation System
document_id: SYS-004
version: 0.1
status: Draft
owner: World Systems
engine: Unity 6 LTS
dependencies:
  - PROJ-003 Design Pillars
  - PROJ-004 Core Gameplay Loop
  - SYS-002 Combat System
  - SYS-003 Loot System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-004 Procedural World Generation System

Version 0.1

---

# 1. Purpose

The Procedural World Generation System creates the constantly changing versions of Arthurian Britain that players explore.

The world is not randomly generated.

It is **legend generated**.

Each expedition represents a possible history:

- A Britain that could have existed
- A legend that was forgotten
- A timeline corrupted by magic
- A memory restored by Arthur's return

---

# 2. World Generation Philosophy

The core principle:

> Every journey should feel like a lost chapter of Arthur's legend.

Procedural generation exists to create:

- Discovery
- Replayability
- Surprise
- Storytelling

---

# 3. Design Pillars Supported

✓ Every Run Creates A Story

✓ The World Must Remember

✓ Restore The Legend

✓ Quality Over Quantity

✓ Data Before Code

---

# 4. World Structure Overview

The world is organised as:

```
Arthurian Britain

↓

Kingdom Regions

↓

Biomes

↓

Zones

↓

Rooms / Areas

↓

Encounters
```

---

# 5. The Fractured Timeline System

Every expedition receives a:

```
Timeline Seed
```

The seed determines:

- World state
- Enemy factions
- Events
- Modifiers
- Rewards

---

Example:

```
Timeline:

The Fall Of Camelot

Cause:

Mordred defeated Arthur

Corruption:

Dark magic spreads

Region:

Avalon Forest

Enemies:

Corrupted Knights

Boss:

Mordred's Champion
```

---

# 6. Procedural Generation Pipeline

The generation process:

```
Create Timeline

↓

Select Region

↓

Select Biome

↓

Generate Layout

↓

Populate Encounters

↓

Add Events

↓

Place Rewards

↓

Generate Boss

↓

Validate Difficulty
```

---

# 7. Generation Seed

Every run receives:

```
Run Seed
```

Example:

```
ARTHUR-849291
```

The seed controls:

- Layout
- Enemy placement
- Loot
- Events
- Weather
- Timeline modifiers

---

# 8. Region System

Regions represent major areas of Britain.

Initial regions:

---

# Camelot

Theme:

The fallen kingdom.

Gameplay:

Balanced encounters.

Enemies:

- Corrupted knights
- Saxon invaders

---

# Avalon

Theme:

Mystical island of magic.

Gameplay:

Magic focused.

Enemies:

- Fae
- Spirits
- Ancient creatures

---

# Sherwood Forest

Theme:

Wild forgotten lands.

Gameplay:

Ambushes and survival.

Enemies:

- Bandits
- Beasts
- Outlaws

---

# The Saxon Marches

Theme:

War-torn frontier.

Gameplay:

Large battles.

Enemies:

- Saxon warriors
- War machines

---

# The Cursed Lands

Theme:

Corruption spreading from Mordred.

Gameplay:

High difficulty.

Enemies:

- Undead
- Demons
- Fallen knights

---

# 9. Biome System

Each region contains multiple biomes.

Example:

Avalon:

```
Enchanted Forest

Crystal Caverns

Ancient Ruins

Fae Sanctum
```

---

Each biome defines:

- Environment assets
- Lighting
- Music
- Enemy pools
- Loot rules
- Events

---

# 10. Zone Generation

Zones are created using modular pieces.

Structure:

```
Entrance

↓

Combat Area

↓

Exploration Area

↓

Event Area

↓

Elite Encounter

↓

Boss Area
```

---

# 11. Room Module System

Rooms are reusable chunks.

Types:

## Combat Room

Contains:

- Enemy groups
- Cover
- Arena space

---

## Treasure Room

Contains:

- Chests
- Rewards
- Secrets

---

## Story Room

Contains:

- NPCs
- Dialogue
- Lore

---

## Puzzle Room

Contains:

- Environmental challenges

---

## Boss Arena

Contains:

- Unique mechanics
- Cinematic moments

---

# 12. Encounter Generation

Encounters are generated using:

```
EncounterDefinition
```

Contains:

```
Enemy Pool

Difficulty

Modifiers

Rewards

Environment Rules
```

---

# 13. Enemy Placement Rules

Enemies are not placed randomly.

Rules include:

- Theme
- Difficulty
- Composition
- Terrain

---

Example:

Forest:

Bad:

```
20 Knights Standing Randomly
```

Good:

```
Bandit Ambush

Archers Hidden In Trees

Leader Appears After Attack
```

---

# 14. Event System

Events create memorable moments.

Events use:

```
WorldEventDefinition
```

---

Examples:

---

## Merlin's Lost Tower

Discover a hidden tower.

Outcome:

Unlock magical upgrades.

---

## The Green Knight

A mysterious challenger appears.

Outcome:

Rare reward.

---

## The Lady Of The Lake

Offer a choice.

Outcome:

Different rewards.

---

## Lost Knight

Rescue or fight.

Outcome:

Possible recruitment.

---

# 15. World Modifiers

Each expedition may contain modifiers.

Examples:

---

## The Dead Rise

Effect:

More undead enemies.

Reward:

Increased holy loot.

---

## Fae Corruption

Effect:

Magic enemies appear.

Reward:

More magical items.

---

## Endless Winter

Effect:

Reduced movement speed.

Reward:

Frost equipment.

---

# 16. Weather System

Weather affects gameplay.

Examples:

Rain:

- Reduced visibility
- Atmospheric changes

---

Fog:

- Ambush chance increases

---

Storm:

- Lightning events

---

# 17. Boss Generation

Bosses are selected based on:

```
Region

Timeline

Difficulty

Events Completed
```

---

Bosses require:

- Unique arena
- Unique mechanics
- Unique loot

---

# 18. Replayability

Runs remain interesting through:

- New seeds
- New Knights
- New builds
- New timelines
- New events
- New loot

---

# 19. Difficulty Scaling

Difficulty increases through:

## Enemy Scaling

- Health
- Damage
- Abilities

---

## World Corruption

More dangerous timelines appear.

---

## Modifiers

Additional challenges.

---

# 20. Technical Architecture

Required Scriptable Objects:

```
RegionDefinition

BiomeDefinition

ZoneDefinition

RoomDefinition

EncounterDefinition

WorldEventDefinition

TimelineDefinition
```

---

Runtime Systems:

```
WorldGenerator

SeedManager

ZoneBuilder

EncounterSpawner

EventManager

DifficultyManager
```

---

# 21. Save Data

Store:

```
Completed Regions

Discovered Events

Timeline History

Boss Victories

World Restoration Level
```

---

# 22. AI Implementation Rules

AI agents generating worlds must:

- Use approved assets
- Maintain biome identity
- Preserve performance limits
- Avoid meaningless randomness
- Document generation rules

---

# 23. Testing Requirements

Test:

## Seeds

Same seed creates same world.

---

## Variety

Different seeds create meaningful differences.

---

## Balance

Difficulty remains reasonable.

---

## Performance

Generated areas maintain FPS targets.

---

# 24. Future Expansion

Possible additions:

- Mount exploration
- Open world zones
- Kingdom wars
- Player-created legends
- Multiplayer expeditions
- Dynamic factions

---

# Definition Of Done

Procedural World System complete when:

✓ Seeds generate worlds

✓ Regions exist

✓ Biomes exist

✓ Encounters generate

✓ Events function

✓ Bosses spawn correctly

✓ Loot integrates

✓ Performance targets met

✓ AI agents can extend safely
