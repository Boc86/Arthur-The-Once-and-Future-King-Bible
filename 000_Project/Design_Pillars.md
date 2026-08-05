---
title: Design Pillars
document_id: PROJ-003
version: 0.1
status: Draft
owner: Creative Director
engine: Unity 6 LTS
dependencies:
  - PROJ-001 Project Charter
  - PROJ-002 Game Vision
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King
# Design Pillars

Version 0.1

---

# Purpose

This document defines the fundamental principles that guide every design decision in Arthur: The Once and Future King.

Every feature, system, asset, quest, character, enemy, and piece of content must support one or more of these pillars.

If a feature conflicts with these pillars, it must be reconsidered.

These pillars are the foundation used by:

- Human designers
- Unity developers
- AI coding agents
- Content generation agents
- Art generation agents
- Balance agents

---

# Pillar 1
# Restore The Legend

## Statement

The central fantasy of the game is rebuilding Arthur's lost legend.

The player is not simply becoming stronger.

The player is restoring something that was broken.

---

## Design Requirements

Every major system should contribute towards restoration.

Examples:

Combat:

Defeating corrupted enemies cleanses fractured regions.

---

Loot:

Recovering legendary weapons restores lost artefacts.

---

Characters:

Recruiting Knights rebuilds the Round Table.

---

Meta Progression:

Upgrading Camelot visibly restores the kingdom.

---

## Questions For Designers

Before adding a feature:

Does this help restore Arthur's legend?

Does the player feel closer to rebuilding Camelot?

If not:

Why does this feature exist?

---

# Pillar 2
# Every Run Creates A Story

## Statement

Procedural generation must create meaningful adventures, not random content.

Every expedition should feel like a forgotten chapter of Arthurian history.

---

## Design Requirements

Runs should vary through:

- Locations
- Events
- Enemy factions
- Boss encounters
- Loot opportunities
- NPC interactions
- World conditions

---

## Example

A forest level should not simply become:

"Forest Level 12"

It becomes:

"The Forest Where Merlin Was Lost"

or:

"The Forest Consumed By The Fae"

or:

"The Forest Where The Green Knight Hunts"

---

## Questions For Designers

Does this procedural element create a memorable story?

Would a player tell someone about this run?

---

# Pillar 3
# Combat Is Simple, Deep And Rewarding

## Statement

The player controls a small number of actions with meaningful decisions.

Complexity comes from mastery, not button count.

---

## Core Controls

The baseline combat system:

```
Basic Attack

Skill 1

Skill 2

Skill 3

Skill 4

Ultimate

Dodge

Interact
```

---

## Design Requirements

Combat must provide:

- Responsive controls
- Clear feedback
- Impactful attacks
- Readable enemies
- Meaningful positioning
- Build synergy

---

## Avoid

Avoid unnecessary complexity.

Do not create:

- Excessive ability bars
- Mandatory rotations
- Unclear combat states
- Systems that slow combat flow

---

# Pillar 4
# Every Knight Is A Unique Fantasy

## Statement

Playable characters must not feel like simple variations.

Each Knight represents a different way of experiencing the game.

---

## Requirements

Each Knight requires:

- Unique combat identity
- Unique abilities
- Unique animations
- Unique equipment preferences
- Unique dialogue
- Unique story

---

## Example

Arthur:

The Balanced King

---

Lancelot:

The Perfect Warrior

---

Merlin:

The Arcane Master

---

Gawain:

The Champion Of Honour

---

# Pillar 5
# Loot Creates Possibilities

## Statement

Loot is one of the primary reasons players continue playing.

Items should create decisions, not just numbers.

---

## Requirements

Loot must provide:

- Build changes
- Visual identity
- Exciting discoveries
- Meaningful upgrades

---

## Items Must Have

Every item requires:

- Name
- Appearance
- Stats
- Affixes
- Rarity
- Lore
- Generation rules

---

## Avoid

Avoid meaningless item inflation.

A stronger item should not simply be:

"+5 damage"

It should create a new possibility.

---

# Pillar 6
# The World Must Remember

## Statement

Progression must be visible.

The player changes the world.

---

## Examples

Early:

```
Ruined Camelot
Few survivors
Broken buildings
Lost hope
```

Later:

```
Great Camelot
Knights return
Markets open
Festivals begin
Kingdom restored
```

---

## Requirements

Permanent progression should affect:

- Environment
- NPCs
- Dialogue
- Available systems
- Visual appearance

---

# Pillar 7
# Data Before Code

## Statement

Systems should be created as reusable frameworks.

Content should be created through data.

---

## Required Approach

Preferred:

```
Scriptable Object

↓

System

↓

Gameplay

```

Avoid:

```
Hardcoded Item

↓

Custom Logic

↓

One Use Only
```

---

# Pillar 8
# AI Agents Must Build Safely

## Statement

AI agents are contributors, not autonomous designers.

---

## Agents Must

- Follow specifications
- Respect architecture
- Create tests
- Document changes
- Avoid breaking existing systems

---

## Agents Must Not

- Invent mechanics
- Change lore
- Modify balance philosophy
- Rewrite architecture

without approved documentation changes.

---

# Pillar 9
# Quality Over Quantity

## Statement

A smaller number of meaningful systems is better than hundreds of shallow mechanics.

---

## Example

Better:

10 memorable Knights

than:

50 identical characters.

---

Better:

100 meaningful items

than:

10,000 stat sticks.

---

Better:

20 unique enemies

than:

200 recoloured enemies.

---

# Pillar 10
# Become The King

## Statement

The entire game leads towards one question:

"What kind of king did Arthur become?"

---

Every choice contributes.

Combat.

Mercy.

Leadership.

Relationships.

Restoration.

Sacrifice.

---

The player is not just completing a campaign.

The player is creating Arthur's final legend.

---

# Design Review Checklist

Every proposed feature must answer:

## Does it restore the legend?

YES / NO

---

## Does it create meaningful gameplay?

YES / NO

---

## Does it improve player choice?

YES / NO

---

## Does it support replayability?

YES / NO

---

## Does it fit Arthurian mythology?

YES / NO

---

## Can it be implemented as a reusable system?

YES / NO

---

A feature failing multiple checks should not enter production.
