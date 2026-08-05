---
title: Save Load and Run State System
document_id: SYS-016
version: 0.1
status: Draft
owner: Technical Systems
engine: Unity 6 LTS
dependencies:
  - SYS-005 Camelot Meta Progression
  - SYS-007 Quest And Narrative System
  - SYS-009 Inventory And Equipment System
  - SYS-015 UI UX And Player Experience System
  - SYS-013 AI Development And MCP Asset Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-016 Save, Load & Run State System

Version 0.1

---

# 1. Purpose

The Save, Load and Run State System defines how player progress is stored, restored, and managed across the rogue-like gameplay loop.

The system must preserve:

- Arthur's journey
- Camelot restoration
- Knight recruitment
- Permanent progression
- Equipment collections
- Story decisions
- Run history

---

# 2. Core Philosophy

The core principle:

> Death ends a journey, not the legend.

Every death should:

- Record what happened
- Reward learning
- Strengthen the next attempt
- Advance Arthur's destiny

---

# 3. Design Pillars Supported

✓ Every Run Creates A Story

✓ The World Must Remember

✓ Restore The Legend

✓ Become The King

✓ Meaningful Progression

---

# 4. Save Architecture Overview

The game uses two layers of persistence:

```
Permanent Save Data

+

Temporary Run Data
```

---

# 5. Permanent Save Data

Permanent data survives death.

Contains:

```
Camelot Progress

Unlocked Knights

Character Levels

Masteries

Collected Items

Lore

Quest Progress

Resources

Achievements
```

---

# 6. Run Data

Run data exists only during a single attempt.

Contains:

```
Current Character

Run Seed

Current Region

Temporary Items

Temporary Bonuses

Current Health

Active Events

Run Rewards
```

---

# 7. Death Loop Architecture

The gameplay loop:

```
Start Run

↓

Explore Britain

↓

Collect Power

↓

Fight Enemies

↓

Die

↓

Guinevere Revival

↓

Convert Rewards

↓

Improve Camelot

↓

Begin Again
```

---

# 8. Save Data Structure

Main save object:

```
PlayerSaveData
```

Contains:

```
ProfileData

WorldData

CharacterData

InventoryData

QuestData

CamelotData

LoreData

StatisticsData
```

---

# 9. Profile Data

Stores:

```
Player Name

Difficulty

Settings

Control Preferences

Play Time
```

---

# 10. World Data

Stores:

```
Unlocked Regions

Discovered Locations

World Events

Faction Reputation

Timeline State
```

---

# 11. Character Data

Each playable knight has:

```
Level

Experience

Skills

Mastery

Equipment

Appearance

Statistics
```

---

# 12. Camelot Data

The heart of progression.

Stores:

```
Buildings

Resources

Round Table Members

Research

Kingdom Level
```

---

# 13. Quest Data

Stores:

```
Completed Quests

Active Quests

Choices Made

Character Relationships
```

---

# 14. Lore Data

Stores:

```
Discovered Entries

Character Histories

Artefact Knowledge

Enemy Records
```

---

# 15. Run Seed System

Every run receives:

```
Unique Seed
```

The seed controls:

```
Dungeon Layout

Enemy Placement

Events

Loot Generation

Rewards
```

---

# 16. Seed Reproducibility

A seed must generate:

The same world.

The same encounters.

The same rewards.

---

Purpose:

- Debugging
- Sharing runs
- Testing balance

---

# 17. Run History

The game records previous attempts.

Example:

```
Arthur Run #47

Region:
Avalon Depths

Killed By:
Corrupted Lancelot

Enemies Defeated:
352

Legendary Items Found:
3

Memorable Event:
Saved The Forgotten Knight
```

---

# 18. Death Summary System

After death display:

```
Run Duration

Enemies Defeated

Items Found

Progress Made

Permanent Rewards
```

---

# 19. Guinevere Revival System

Death is not a failure state.

It is a story event.

Flow:

```
Death

↓

Memory Sequence

↓

Guinevere Dialogue

↓

Reward Conversion

↓

Revival
```

---

# 20. Revival Rewards

Possible rewards:

```
Experience

Resources

Unlock Progress

Knowledge

Permanent Bonuses
```

---

# 21. Meta Progression Storage

Permanent upgrades include:

```
Camelot Buildings

Character Unlocks

Skill Improvements

Resource Capacity

Crafting Knowledge
```

---

# 22. Item Persistence

Permanent items include:

```
Collected Legendaries

Favourite Equipment

Transmog Collection

Stored Items
```

---

# 23. Temporary Item Handling

Temporary items are:

```
Destroyed

↓

Converted

↓

Rewarded
```

after death.

---

# 24. Save Slots

Initial support:

```
Three Save Profiles
```

Each contains:

```
Independent Camelot

Independent Progression

Independent Characters
```

---

# 25. Cloud Save Readiness

Architecture must support:

```
Local Save

↓

Cloud Synchronisation

↓

Conflict Resolution
```

---

# 26. Save Security

Prevent:

- Corrupted files
- Accidental overwrites
- Invalid data

---

Methods:

```
Versioning

Validation

Backup Saves

Checksums
```

---

# 27. Save Versioning

Every save contains:

```
Save Version

Game Version

Migration Data
```

---

Purpose:

Allow updates without destroying progress.

---

# 28. Technical Architecture

Data objects:

```
PlayerSaveData

RunStateData

CharacterSaveData

WorldSaveData

CamelotSaveData
```

---

Runtime systems:

```
SaveManager

LoadManager

RunManager

PersistenceManager

MigrationManager
```

---

# 29. File Structure

Example:

```
SaveData/

├── Profile_001

├── Profile_002

└── Backup
```

---

# 30. Serialization

Preferred:

```
JSON

+

Binary Backup
```

---

Benefits:

- Debugging
- Human readable
- Migration support

---

# 31. Auto Save Rules

Automatic saves occur:

```
Entering Camelot

Completing Major Quest

Unlocking Knight

Restoring Legendary Item

Before Exit
```

---

# 32. AI Implementation Rules

AI agents must:

- Never modify save structures without migration
- Preserve backwards compatibility
- Test loading old saves
- Validate all data

---

# 33. Testing Requirements

Test:

## Save Creation

New games save correctly.

---

## Loading

Progress restores correctly.

---

## Death Loop

Rewards persist correctly.

---

## Version Migration

Old saves continue working.

---

# 34. Future Expansion

Possible additions:

- Online profiles
- Cross-platform saves
- Replay history
- Shared kingdoms
- Community challenges

---

# Definition Of Done

Save System complete when:

✓ Runs persist correctly

✓ Death loop works

✓ Camelot progression saves

✓ Characters persist

✓ Items persist

✓ Quest choices persist

✓ Save corruption is handled

✓ AI agents can safely extend the system
