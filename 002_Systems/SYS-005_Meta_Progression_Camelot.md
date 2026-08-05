---
title: Meta Progression and Camelot Restoration System
document_id: SYS-005
version: 0.1
status: Draft
owner: Gameplay Systems
engine: Unity 6 LTS
dependencies:
  - PROJ-003 Design Pillars
  - PROJ-004 Core Gameplay Loop
  - SYS-001 Character Framework
  - SYS-004 Procedural World Generation
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-005 Meta Progression & Camelot Restoration System

Version 0.1

---

# 1. Purpose

The Meta Progression System defines the permanent progression that occurs between expeditions.

Unlike traditional ARPG progression, death is not the end.

Every failure is another step towards restoring Arthur's legend.

The player does not simply become stronger.

The kingdom becomes stronger.

---

# 2. Core Philosophy

The central idea:

> Arthur cannot reclaim the throne alone. He must rebuild everything that was lost.

Every resurrection creates progress.

Every expedition contributes to Camelot.

---

# 3. Design Pillars Supported

✓ The World Must Remember

✓ Restore The Legend

✓ Every Run Creates A Story

✓ Become The King

✓ Quality Over Quantity

---

# 4. Meta Progression Loop

The permanent loop:

```
Complete Expedition

↓

Collect Resources

↓

Return To Camelot

↓

Restore Buildings

↓

Unlock Systems

↓

Recruit Knights

↓

Attempt Greater Challenges
```

---

# 5. Death And Resurrection System

Death is a narrative mechanic.

The player does not reload a previous timeline.

Arthur returns.

---

# 6. Resurrection Sequence

When Arthur dies:

```
Defeat

↓

World Fractures

↓

Soul Returns To Avalon

↓

Guinevere Performs Ritual

↓

Arthur Awakens

↓

Camelot Evolves

↓

New Journey Begins
```

---

# 7. Guinevere's Role

Guinevere is the anchor of Arthur's existence.

She remembers every version of him.

She is the keeper of the legend.

---

## Guinevere Functions

She provides:

- Resurrection
- Progression management
- Story progression
- Kingdom guidance
- Emotional connection

---

# 8. Resurrection Explanation

Arthur's legend is incomplete.

The throne cannot be claimed until Britain accepts him.

Each death reveals another fragment of the truth.

---

# 9. Camelot Hub

Camelot is the permanent player hub.

It changes visually throughout the game.

---

# 10. Camelot Restoration Levels

Initial state:

```
Ruined Camelot
```

↓

```
Survivor Camp
```

↓

```
Restored Keep
```

↓

```
Knight's Castle
```

↓

```
Royal Camelot
```

↓

```
Legendary Camelot
```

---

# 11. Camelot Resources

Restoration requires:

## Gold

Basic currency.

Used for:

- Construction
- Trading
- Upgrades

---

## Materials

Recovered from expeditions.

Used for:

- Building
- Crafting

---

## Renown

Represents Arthur's restored reputation.

Used for:

- Unlocking systems
- Recruiting allies

---

## Memories

Fragments of forgotten history.

Used for:

- Lore
- Legendary upgrades

---

# 12. Building System

Buildings are permanent upgrades.

Each building has:

```
BuildingDefinition
```

Containing:

```
Name

Level

Cost

Benefits

Visual Changes

Unlock Requirements
```

---

# 13. Round Table

## Purpose

The heart of Arthur's legend.

---

## Functions

Unlocks:

- Knights
- Character upgrades
- Party bonuses

---

## Upgrade Path

Level 1:

Broken table.

---

Level 5:

Restored Round Table.

---

Level 10:

Legendary gathering place.

---

# 14. Blacksmith

## Purpose

Restores legendary weapons.

---

## Unlocks

- Item upgrades
- Crafting
- Reforging
- Equipment restoration

---

# 15. Merlin's Tower

## Purpose

Magical research.

---

## Unlocks

- Relics
- Enchantments
- Arcane systems

---

# 16. Training Grounds

## Purpose

Combat improvement.

---

## Unlocks

- Character mastery
- Practice challenges
- Combat bonuses

---

# 17. Library Of Avalon

## Purpose

Preserves knowledge.

---

## Unlocks

- Lore entries
- Historical discoveries
- World modifiers

---

# 18. Market

## Purpose

Economic progression.

---

## Unlocks

- Merchants
- Rare items
- Trading

---

# 19. Knight Recruitment System

Knights are unlocked through legend recovery.

---

Recruitment flow:

```
Discover Knight

↓

Complete Personal Quest

↓

Restore Their Memory

↓

Knight Joins Round Table

↓

Playable Character Unlocked
```

---

# 20. Example Knight Unlocks

---

## Sir Lancelot

Location:

Corrupted battlefield.

Quest:

Recover his honour.

Reward:

Playable Lancelot.

---

## Sir Gawain

Location:

The Green Forest.

Quest:

Prove your worth.

Reward:

Playable Gawain.

---

## Merlin

Location:

Avalon Tower.

Quest:

Restore his lost magic.

Reward:

Playable Merlin.

---

# 21. Permanent Player Upgrades

The player can unlock:

## Combat Improvements

Examples:

- Increased starting power
- New abilities
- Resource bonuses

---

## Expedition Improvements

Examples:

- Better rewards
- More events
- New regions

---

## Kingdom Improvements

Examples:

- More merchants
- More services
- More allies

---

# 22. Legacy System

Each Arthur death leaves a legacy.

Examples:

"The King Who Returned"

Bonus:

Increased holy damage.

---

"The Fallen Warrior"

Bonus:

Increased defence after resurrection.

---

"The Forgotten King"

Bonus:

Improved discovery rewards.

---

# 23. World Impact

Camelot restoration affects the world.

Examples:

Early:

Bandits control roads.

Later:

Knights patrol roads.

---

Early:

NPCs fear Arthur.

Later:

People celebrate him.

---

# 24. Technical Architecture

Required Scriptable Objects:

```
BuildingDefinition

UpgradeDefinition

LegacyDefinition

ResourceDefinition

KnightUnlockDefinition
```

---

Runtime Systems:

```
CamelotManager

ProgressionManager

ResurrectionManager

BuildingSystem

KnightRecruitmentSystem
```

---

# 25. Save Data

Permanent data:

```
CamelotLevel

Buildings

Resources

UnlockedKnights

LegacyBonuses

StoryProgress

DiscoveredLore
```

---

# 26. AI Implementation Rules

AI agents must:

- Treat Camelot as persistent world state
- Avoid temporary progression systems
- Maintain narrative consistency
- Update visual states with upgrades

---

# 27. Testing Requirements

Test:

## Persistence

Does Camelot remember upgrades?

---

## Unlocks

Do Knights unlock correctly?

---

## Death Loop

Does resurrection work?

---

## Economy

Are costs balanced?

---

# 28. Future Expansion

Possible additions:

- Kingdom management
- NPC relationships
- Court decisions
- Army management
- Multiple endings

---

# Definition Of Done

Meta Progression complete when:

✓ Death creates progress

✓ Guinevere resurrection works

✓ Camelot evolves visually

✓ Buildings upgrade

✓ Knights unlock

✓ Permanent bonuses function

✓ Save system works

✓ AI agents can extend safely
