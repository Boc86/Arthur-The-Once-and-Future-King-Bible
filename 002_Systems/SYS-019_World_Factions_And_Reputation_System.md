---
title: World Factions and Reputation System
document_id: SYS-019
version: 0.1
status: Draft
owner: Narrative Systems
engine: Unity 6 LTS
dependencies:
  - SYS-004 Procedural World Generation
  - SYS-005 Camelot Meta Progression
  - SYS-007 Quest And Narrative System
  - SYS-016 Save Load And Run State System
  - SYS-017 Game Balance And Difficulty System
  - SYS-013 AI Development And MCP Asset Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-019 World Factions & Reputation System

Version 0.1

---

# 1. Purpose

The World Factions and Reputation System defines the political, cultural, and supernatural forces shaping Arthurian Britain.

The system ensures the world feels alive.

Britain is not simply a collection of levels.

It is a kingdom fighting for survival.

---

# 2. Core Philosophy

The core principle:

> A king is not judged by the throne he sits upon, but by the people who stand behind him.

Arthur's journey is not only about defeating enemies.

It is about:

- Building alliances
- Restoring trust
- Healing old conflicts
- Creating a united Britain

---

# 3. Design Pillars Supported

✓ The World Must Remember

✓ Every Run Creates A Story

✓ Become The King

✓ Restore The Legend

✓ Meaningful Choices

---

# 4. Major Factions

The initial world contains:

```
Camelot

Knights Of The Round Table

Avalon

The Fae Courts

Saxon Kingdoms

Morgana's Cult

The Old Gods

The Common Folk
```

---

# 5. Faction Architecture

Each faction has:

```
Identity

History

Goals

Values

Relationship With Arthur

Reputation State
```

---

# 6. Reputation System

Each faction tracks:

```
Reputation Score

Faction Rank

Unlocked Rewards

Dialogue Changes

World Events
```

---

# 7. Reputation Levels

Initial structure:

```
Hostile

Distrustful

Neutral

Respected

Honoured

Legendary
```

---

# 8. Reputation Effects

Reputation affects:

- NPC dialogue
- Available quests
- Merchant inventory
- Enemy encounters
- Story outcomes

---

# 9. Camelot Faction

The heart of Arthur's kingdom.

---

## Identity

The people of Britain seeking unity.

---

## Goals

- Restore Camelot
- Protect Britain
- Find worthy knights
- Rebuild civilisation

---

## Values

- Honour
- Justice
- Loyalty

---

# 10. Knights Of The Round Table

A faction and collection of playable heroes.

Members include:

```
Lancelot

Gawain

Percival

Galahad

Tristan

Bors

```

---

# 11. Knight Recruitment

Knights are recruited through:

```
Story Events

Boss Encounters

Personal Quests

Moral Decisions
```

---

# 12. Knight Loyalty

Each knight tracks:

```
Trust

Respect

Personal Goals

Conflict State
```

---

# 13. Knight Relationships

Examples:

Arthur and Lancelot:

Friendship versus destiny.

---

Arthur and Gawain:

Warrior respect.

---

Arthur and Merlin:

King and advisor.

---

# 14. Avalon

The mystical realm connected to Arthur's destiny.

---

## Identity

Ancient magic.

Forgotten knowledge.

---

## Goals

Maintain balance.

---

## Values

- Wisdom
- Nature
- Magic

---

# 15. Avalon Reputation Effects

Higher reputation unlocks:

- Magical upgrades
- Ancient artefacts
- Hidden locations
- Fae blessings

---

# 16. Fae Courts

Ancient magical beings.

Divided into:

```
Light Court

Shadow Court

Wild Court
```

---

# 17. Fae Behaviour

The Fae do not think like humans.

They value:

- Promises
- Names
- Stories
- Balance

---

# 18. Saxon Kingdoms

The human enemies of Arthur's Britain.

---

## Identity

Invaders and rival kingdoms.

---

## Goals

Control Britain.

---

## Values

- Strength
- Conquest
- Survival

---

# 19. Saxon Reputation

Possible outcomes:

```
Destroy

Intimidate

Negotiate

Unite
```

---

# 20. Morgana's Cult

The primary supernatural antagonist faction.

---

## Identity

Followers of Morgana seeking a different future.

---

## Goals

Destroy Arthur's destiny.

---

## Values

- Power
- Magic
- Freedom From Prophecy

---

# 21. Morgana Relationship

Arthur and Morgana are connected.

Not simple enemies.

Their conflict represents:

```
Destiny

versus

Free Will
```

---

# 22. Old Gods

Ancient forces returning to Britain.

---

## Purpose

Represent forgotten mythology.

---

## Gameplay Role

- Rare encounters
- Legendary rewards
- World events

---

# 23. Common Folk

The people Arthur must protect.

---

Their reputation affects:

- Kingdom stability
- Resource generation
- Camelot growth

---

# 24. Faction Events

Procedural events include:

```
Faction Conflict

Trade Request

Rescue Mission

Political Choice

Ancient Discovery

Rebellion
```

---

# 25. World State Changes

Faction reputation can modify:

```
Enemy Types

Available Areas

NPC Locations

Quest Chains

Rewards
```

---

# 26. Procedural Faction Integration

Generated zones include:

```
Dominant Faction

Conflict

Objectives

Rewards
```

---

Example:

A forest may become:

```
Avalon Territory

+

Fae Conflict

+

Ancient Magic Event
```

---

# 27. Reputation Choices

Choices should not be:

Good versus Evil.

They should represent:

Different visions of Britain.

---

Example:

Help the Fae:

Gain magic.

Lose human trust.

---

# 28. Faction Rewards

Rewards include:

```
Equipment

Skills

Crafting Recipes

Followers

Cosmetics

Lore
```

---

# 29. Technical Architecture

Data:

```
FactionDefinition

ReputationDefinition

RelationshipDefinition

FactionEventDefinition
```

---

Runtime:

```
FactionManager

ReputationManager

RelationshipManager

WorldStateManager
```

---

# 30. Save Integration

Stored:

```
Faction Reputation

Completed Events

Relationships

World Changes
```

---

# 31. AI Implementation Rules

AI agents must:

- Maintain faction identity
- Respect lore
- Avoid generic factions
- Create meaningful choices
- Document world changes

---

# 32. Testing Requirements

Test:

## Reputation

Changes apply correctly.

---

## Dialogue

NPC responses update.

---

## World

Events reflect choices.

---

## Persistence

Faction states save correctly.

---

# 33. Future Expansion

Possible additions:

- Dynamic wars
- Faction diplomacy
- Player-created alliances
- Kingdom politics
- Multiple endings

---

# Definition Of Done

World Faction System complete when:

✓ Major factions exist

✓ Reputation works

✓ NPC relationships work

✓ World events react to choices

✓ Factions affect gameplay

✓ AI agents can expand factions safely
