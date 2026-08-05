---
title: Save Load Profile And Run State Management System
document_id: SYS-037
version: 0.1
status: Draft
owner: Technical Architecture
engine: Unity 6 LTS
dependencies:
  - SYS-005 Camelot Meta Progression
  - SYS-016 Save Load And Run State System
  - SYS-027 Player Experience And Game Loop System
  - SYS-028 Camelot Hub And Kingdom Development System
  - SYS-034 Character Progression Leveling And Meta Advancement System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-037 Save, Load, Profile & Run State Management System

Version 0.1

---

# 1. Purpose

This document defines the persistence architecture for Arthur: The Once and Future King.

The system manages:

- Player profiles
- Character progression
- Camelot development
- Roguelike runs
- Procedural worlds
- Unlocks
- Settings
- Future online features

---

# 2. Core Philosophy

The core principle:

> Nothing earned in Arthur's legend should be forgotten.

Every battle, discovery, and sacrifice contributes to the player's permanent story.

---

# 3. Save Architecture Overview

The game contains three save layers:

```
Profile Save

+

Kingdom Save

+

Active Run Save
```

---

# 4. Profile Save

Contains permanent player progression.

Examples:

```
Unlocked Knights

Achievements

Cosmetics

Settings

Statistics
```

---

# 5. Kingdom Save

Contains Camelot progression.

Examples:

```
Buildings

Resources

NPC Relationships

Kingdom Upgrades

Recovered Relics
```

---

# 6. Run Save

Contains temporary roguelike state.

Examples:

```
Current Character

Current Level

Current Equipment

Temporary Skills

World Seed
```

---

# 7. Save Philosophy

The player should always know:

```
What is Permanent

What Is Temporary

What Is Lost
```

---

# 8. Player Profile Data

Data structure:

```
PlayerProfile
```

Contains:

```
Profile ID

Created Date

Play Time

Unlocked Content

Statistics

Preferences
```

---

# 9. Character Save Data

Each knight stores:

```
Character Level

Experience

Mastery

Unlocked Skills

Equipment

Build Loadouts
```

---

# 10. Camelot Save Data

Contains:

```
Camelot Level

Buildings

Residents

Resources

Kingdom Reputation
```

---

# 11. World State Save

Stores:

```
Region Progress

Boss Defeats

Faction Status

Discovered Locations
```

---

# 12. Procedural World Save

Every run requires:

```
World Seed

Generation Parameters

Completed Events

Loot History
```

---

# 13. Run State

Active runs store:

```
Run Identifier

Character

Level

Stats

Equipment

Abilities

Objectives
```

---

# 14. Death Handling

When Arthur dies:

The system performs:

```
Capture Run Summary

Award Renown

Update Memories

Apply Permanent Rewards

Clear Temporary Data
```

---

# 15. Resurrection Flow

Sequence:

```
Player Death

↓

Death Screen

↓

Guinevere Scene

↓

Reward Calculation

↓

Camelot Return

↓

New Run Available
```

---

# 16. Save Points

Automatic saving occurs:

```
After Run Completion

After Death

After Boss Defeat

After Major Unlock

After Camelot Upgrade
```

---

# 17. Manual Saving

The player cannot manually save during active combat.

Allowed:

```
Camelot Hub

Main Menu

Safe Locations
```

---

# 18. Save Integrity

The system protects against:

```
Corrupted Files

Incomplete Saves

Invalid Data
```

---

# 19. Save Versioning

Every save contains:

```
Save Version

Game Version

Migration Data
```

---

# 20. Migration System

When loading older saves:

```
Detect Version

Apply Migration

Validate Data

Load Profile
```

---

# 21. Data Validation

Checks:

```
Missing Items

Invalid Values

Broken References

Impossible States
```

---

# 22. Roguelike Run Recovery

If interrupted:

Options:

```
Resume Run

Abandon Run

Restore Last Safe State
```

---

# 23. Character Build Storage

Players can save:

```
Equipment Sets

Skill Builds

Preferred Playstyle
```

---

# 24. Statistics Tracking

Track:

```
Enemies Defeated

Bosses Defeated

Deaths

Time Played

Loot Found

Distance Travelled
```

---

# 25. Chronicle System

The game records Arthur's legend.

Contains:

```
Major Victories

Knight Recruits

Important Choices

Memories
```

---

# 26. Cloud Save Readiness

Architecture supports:

```
Steam Cloud

Console Cloud

Future Online Storage
```

---

# 27. Save Data Format

Recommended:

```
JSON

Binary Serialization

Encrypted Containers
```

---

# 28. Technical Architecture

Data:

```
SaveProfile

RunState

KingdomState

WorldState

MigrationDefinition
```

---

Runtime:

```
SaveManager

LoadManager

ProfileManager

RunStateManager

MigrationManager
```

---

# 29. Unity Implementation

Uses:

```
Scriptable Objects

Serializable Classes

Async Saving

Background Processing
```

---

# 30. AI Development Rules

AI agents working on save systems must:

Never:

```
Delete Player Data

Overwrite Saves

Change Progression Values
```

---

All changes require:

```
Migration Plan

Validation

Testing
```

---

# 31. Testing Requirements

Test:

## Reliability

Can saves survive crashes?

---

## Compatibility

Do old saves work?

---

## Integrity

Can data be trusted?

---

## Performance

Are saves fast?

---

# 32. Failure Recovery

If save corruption occurs:

```
Create Backup

Attempt Recovery

Notify Player
```

---

# 33. Future Expansion

Possible additions:

```
Cross Platform Saves

Achievements

Player Statistics API

Community Challenges
```

---

# Definition Of Done

Save System complete when:

✓ Player progression persists

✓ Death/rebirth works correctly

✓ Camelot remembers changes

✓ Procedural runs can recover

✓ Data corruption is prevented

✓ Future platforms are supported
