---
title: Procedural Event and Encounter System
document_id: SYS-020
version: 0.1
status: Draft
owner: Narrative Gameplay Systems
engine: Unity 6 LTS
dependencies:
  - SYS-004 Procedural World Generation
  - SYS-006 Enemy And AI Framework
  - SYS-007 Quest And Narrative System
  - SYS-019 World Factions And Reputation System
  - SYS-016 Save Load And Run State System
  - SYS-013 AI Development And MCP Asset Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-020 Procedural Event & Encounter System

Version 0.1

---

# 1. Purpose

The Procedural Event and Encounter System defines the dynamic storytelling layer of Arthur: The Once and Future King.

The system creates unique experiences during every run by generating:

- Random encounters
- Narrative choices
- Combat events
- Character interactions
- World discoveries
- Faction conflicts

---

# 2. Core Philosophy

The core principle:

> Every death should leave behind a different legend.

The player should never feel like they are simply replaying the same dungeon.

Each journey through Britain should create a new story.

---

# 3. Design Pillars Supported

✓ Every Run Creates A Story

✓ The World Must Remember

✓ Meaningful Choices

✓ Restore The Legend

✓ Become The King

---

# 4. Event System Overview

Events are generated through:

```
World Generation

+

Faction State

+

Player Progression

+

Run Seed

+

Story Conditions
```

---

# 5. Event Categories

Initial categories:

```
Combat Events

Narrative Events

NPC Events

Merchant Events

Discovery Events

Boss Events

Faction Events

Legendary Events
```

---

# 6. Event Architecture

Every event contains:

```
Event Definition

↓

Conditions

↓

Presentation

↓

Choices

↓

Consequences

↓

Rewards
```

---

# 7. Event Data Structure

Scriptable Object:

```
EventDefinition
```

Contains:

```
Event ID

Name

Description

Requirements

Choices

Rewards

Consequences

Cooldown
```

---

# 8. Event Generation Rules

Events are selected based on:

```
Region

Faction Presence

Character Used

Previous Choices

Difficulty

Run State
```

---

# 9. Event Frequency

Events are controlled by:

```
Minimum Distance

Probability Weight

Region Rules

Story Importance
```

---

# 10. Encounter Types

---

# 10.1 Combat Encounter

Standard combat challenge.

Examples:

```
Bandit Ambush

Saxon Patrol

Corrupted Knight

Fae Guardian
```

Rewards:

- Experience
- Loot
- Reputation

---

# 10.2 Narrative Encounter

A story moment.

Examples:

```
A village asking for aid

A knight challenging Arthur

A forgotten tomb
```

---

# 10.3 Choice Encounter

The player chooses an action.

Example:

A village is attacked.

Choices:

```
Defend The Village

+

Gain Common Folk Reputation

```

or

```
Pursue The Enemy Leader

+

Gain Military Advantage
```

---

# 11. Moral Choice Philosophy

Choices should not be:

Good versus Evil.

They represent:

Different leadership styles.

---

Examples:

Mercy:

Creates loyalty.

---

Fear:

Creates obedience.

---

Pragmatism:

Creates results.

---

# 12. NPC Encounters

Important NPCs can appear during runs.

Examples:

```
Merlin

Morgana

Guinevere

Travelling Knights

Lost Heroes

Ancient Spirits
```

---

# 13. Merlin Encounters

Merlin provides:

- Guidance
- Prophecy
- Magic upgrades
- Lore discoveries

---

Possible events:

```
The Forgotten Spell

The Lost Prophecy

The Price Of Magic
```

---

# 14. Morgana Encounters

Morgana should appear throughout the game.

She is not only a final boss.

She is a constant presence.

---

Possible encounters:

```
Temptation

Challenge

Manipulation

Alliance Offer
```

---

# 15. Guinevere Encounters

Guinevere represents hope.

She appears:

- Before major decisions
- After deaths
- During important memories

---

# 16. Knight Recruitment Events

Knights become playable through events.

Examples:

---

# Lancelot

Event:

The Broken Oath.

Choice:

Restore his honour.

---

# Gawain

Event:

The Green Knight.

Choice:

Prove strength and wisdom.

---

# Galahad

Event:

The Holy Quest.

Choice:

Seek purity.

---

# 17. Merchant Encounters

Travelling merchants appear randomly.

Types:

```
Blacksmith

Mystic

Collector

Relic Hunter

Fae Trader
```

---

# 18. Merchant Rules

Merchant inventory depends on:

```
Region

Faction Reputation

Player Level

Run Progression
```

---

# 19. Legendary Encounters

Rare events.

Examples:

```
Excalibur Fragment

Avalon Gate

Dragon Awakening

Ancient Knight Tomb
```

---

Probability:

Very low.

Reward:

Very high.

---

# 20. Boss Encounters

Bosses are generated through:

```
Region

Story State

Faction

Difficulty
```

---

Boss events contain:

```
Introduction

Arena

Combat

Rewards

Aftermath
```

---

# 21. Elite Encounters

Elite enemies receive modifiers.

Examples:

```
Flame Blessed

Cursed

Ancient

Fae Touched
```

---

# 22. Event Chains

Events can create stories.

Example:

```
Save Village

↓

Meet Survivor

↓

Discover Enemy Camp

↓

Destroy Camp

↓

Recruit Knight
```

---

# 23. Event Memory

The world remembers.

Stored:

```
Completed Events

Choices

NPC Relationships

Faction Effects
```

---

# 24. Procedural Narrative Rules

AI generated events must maintain:

- Arthurian themes
- Character consistency
- Meaningful consequences
- Appropriate rewards

---

# 25. Event Rewards

Rewards include:

```
Experience

Gold

Items

Materials

Reputation

Lore

Permanent Unlocks
```

---

# 26. Event Difficulty

Events scale using:

```
Region Level

Player Power

Difficulty Tier

Faction Threat
```

---

# 27. Technical Architecture

Data:

```
EventDefinition

ChoiceDefinition

RewardDefinition

ConditionDefinition
```

---

Runtime:

```
EventManager

EncounterGenerator

ChoiceResolver

WorldMemoryManager
```

---

# 28. World Generation Integration

Procedural zones request events.

Flow:

```
Generate Zone

↓

Analyse Conditions

↓

Select Events

↓

Place Events

↓

Track Completion
```

---

# 29. AI Content Generation Pipeline

AI agents may create:

```
New Events

Dialogue

Lore Entries

Rewards

Encounter Variations
```

---

Requirements:

Every generated event requires:

```
Theme

Purpose

Gameplay Effect

Reward Logic

Lore Validation
```

---

# 30. AI Implementation Rules

AI agents must:

- Avoid repetitive events
- Respect lore
- Maintain faction logic
- Avoid meaningless choices
- Balance rewards

---

# 31. Testing Requirements

Test:

## Variety

Are runs different?

---

## Balance

Are rewards appropriate?

---

## Narrative

Do choices matter?

---

## Persistence

Does the world remember?

---

# 32. Future Expansion

Possible additions:

- AI-generated quest chains
- Community events
- Seasonal legends
- Dynamic kingdom wars
- Procedural companions

---

# Definition Of Done

Procedural Event System complete when:

✓ Events generate correctly

✓ Choices have consequences

✓ NPC encounters work

✓ Legendary events exist

✓ Faction events function

✓ Run variety is high

✓ AI agents can safely expand content
