---
title: Camelot Hub and Kingdom Development System
document_id: SYS-028
version: 0.1
status: Draft
owner: Meta Progression Design
engine: Unity 6 LTS
dependencies:
  - SYS-005 Camelot Meta Progression
  - SYS-019 World Factions And Reputation System
  - SYS-022 Character Class And Knight Roster System
  - SYS-027 Player Experience And Game Loop System
  - SYS-016 Save Load And Run State System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-028 Camelot Hub & Kingdom Development System

Version 0.1

---

# 1. Purpose

This document defines Camelot as the player's persistent home, progression centre, and emotional anchor.

Camelot is not a menu.

Camelot is a living kingdom that grows alongside Arthur.

---

# 2. Core Philosophy

The core principle:

> Every death rebuilds the kingdom. Every return brings Arthur closer to becoming king.

---

# 3. Design Pillars Supported

✓ The World Must Remember

✓ Become The King

✓ Restore The Legend

✓ Every Run Creates A Story

✓ Meaningful Progression

---

# 4. Camelot Role

Camelot provides:

```
Meta Progression

Character Management

Crafting

Story Advancement

NPC Interaction

World State Changes
```

---

# 5. Initial Camelot State

At the beginning:

Camelot is:

```
Ruined

Empty

Forgotten

Broken
```

---

Visual state:

```
Collapsed Walls

Destroyed Round Table

Abandoned Streets

Darkened Castle
```

---

# 6. Camelot Restoration Loop

The player restores Camelot through:

```
Resources

Achievements

Knight Recruitment

Faction Reputation

Story Progress
```

---

# 7. Camelot Evolution

Camelot progresses through stages:

```
Ruined Fortress

↓

Reclaimed Settlement

↓

Growing Kingdom

↓

Legendary Capital

↓

Seat Of England
```

---

# 8. Kingdom Resources

Primary resources:

```
Gold

Materials

Renown

Knowledge

Magic
```

---

# 9. Resource Acquisition

Resources come from:

```
Runs

Events

Bosses

Quests

Faction Rewards
```

---

# 10. Camelot Buildings

Initial buildings:

```
Round Table

Armoury

Blacksmith

Library

Training Grounds

Merlin's Tower

Royal Chambers
```

---

# 11. The Round Table

Purpose:

Knight management.

Functions:

```
Recruit Knights

Assign Knights

View Relationships

Start Knight Quests
```

---

# 12. Round Table Progression

Stages:

## Broken Table

No knights.

---

## Restored Table

First knights return.

---

## Legendary Table

All knights united.

---

# 13. Armoury

Purpose:

Equipment management.

Functions:

```
Store Items

Upgrade Gear

Display Legendary Items
```

---

# 14. Blacksmith

Purpose:

Crafting and upgrades.

Functions:

```
Forge Weapons

Upgrade Armour

Craft Materials
```

---

# 15. Library

Purpose:

Knowledge progression.

Unlocks:

```
Lore

Enemy Information

Ancient Records

World Secrets
```

---

# 16. Training Grounds

Purpose:

Character improvement.

Functions:

```
Skill Training

Practice Combat

Unlock Masteries
```

---

# 17. Merlin's Tower

Purpose:

Magic progression.

Unlocks:

```
Ancient Spells

Magical Upgrades

Avalon Knowledge
```

---

# 18. Royal Chambers

Purpose:

Arthur's personal progression.

Contains:

```
Crown

Excalibur

Memories

Achievements
```

---

# 19. NPC Population System

Camelot gains inhabitants.

Examples:

```
Blacksmiths

Farmers

Scholars

Knights

Merchants
```

---

# 20. NPC Restoration

NPCs return through:

```
Quests

Rescues

Faction Reputation
```

---

# 21. Camelot Visual Progression

The kingdom visibly changes.

Examples:

Early:

```
Broken walls

Empty streets
```

Late:

```
Banners

Markets

Training arenas

Celebrations
```

---

# 22. Knight Management

Players manage:

```
Unlocked Knights

Equipment

Masteries

Relationships
```

---

# 23. Knight Personal Areas

Each knight can gain:

```
Room

Display Area

Quest Chain

Unique Upgrade
```

---

# 24. Kingdom Reputation

Camelot reputation affects:

```
NPC behaviour

Faction relationships

World events

Story outcomes
```

---

# 25. Kingdom Events

Examples:

```
A new knight arrives

A village joins Camelot

A faction requests aid

An enemy attacks
```

---

# 26. Kingdom Defence

Later progression introduces:

```
Sieges

Attacks

Kingdom Events
```

---

# 27. Death Integration

When Arthur dies:

The player returns to Camelot.

Changes:

```
New resources

New memories

New upgrades

New opportunities
```

---

# 28. Guinevere's Role

Guinevere acts as:

```
Reviver

Advisor

Keeper Of Hope
```

---

# 29. Merlin's Role

Merlin acts as:

```
Teacher

Historian

Magical Advisor
```

---

# 30. Morgana's Influence

Camelot can become corrupted if:

```
Dark choices are made

Magic is abused

Allies are betrayed
```

---

# 31. Kingdom Choice System

Arthur's leadership style affects Camelot.

Paths:

```
The Noble King

The Warrior King

The Mystic King
```

---

# 32. Kingdom Upgrades

Upgrades provide:

```
Permanent Bonuses

New Content

New Systems
```

---

Examples:

Training Grounds:

```
+ Knight Experience
```

---

Library:

```
+ Lore Discovery
```

---

# 33. Technical Architecture

Data:

```
BuildingDefinition

KingdomUpgradeDefinition

NPCDefinition

CamelotState
```

---

Runtime:

```
CamelotManager

BuildingManager

NPCManager

KingdomProgressionManager
```

---

# 34. Save Integration

Stored:

```
Buildings

Resources

NPCs

Visual State

Kingdom Reputation
```

---

# 35. AI Implementation Rules

AI agents must:

- Treat Camelot as a living system
- Preserve visual progression
- Avoid menu-like solutions
- Connect upgrades to gameplay
- Maintain lore consistency

---

# 36. Testing Requirements

Test:

## Progression

Does Camelot visibly improve?

---

## Rewards

Do upgrades feel meaningful?

---

## Persistence

Does Camelot survive death?

---

## Emotion

Does returning home feel rewarding?

---

# 37. Future Expansion

Possible additions:

```
Kingdom Diplomacy

Castle Customisation

Royal Decisions

Court Politics

NPC Stories
```

---

# Definition Of Done

Camelot System complete when:

✓ Camelot evolves visually

✓ Buildings provide benefits

✓ Knights have a home

✓ NPCs return

✓ Progression survives death

✓ The player feels like a king
