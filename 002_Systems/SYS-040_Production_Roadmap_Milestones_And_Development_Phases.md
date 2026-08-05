---
title: Production Roadmap Milestones And Development Phases
document_id: SYS-040
version: 0.1
status: Draft
owner: Production Management
engine: Unity 6 LTS
dependencies:
  - SYS-026 Production Roadmap And Milestone System
  - SYS-038 Unity Technical Implementation Architecture System
  - SYS-039 AI Agent Game Development Execution Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-040 Production Roadmap, Milestones & Development Phases

Version 0.1

---

# 1. Purpose

This document defines the development strategy for creating Arthur: The Once and Future King.

The goal is to avoid building a large collection of unfinished systems.

Development follows:

```
Foundation

↓

Core Gameplay

↓

Vertical Slice

↓

Content Expansion

↓

Polish

↓

Release
```

---

# 2. Production Philosophy

The core principle:

> Build the sword before the kingdom.

The game must become fun before becoming large.

---

# 3. Development Phases

The project is divided into:

```
Phase 0 - Foundation

Phase 1 - Core Prototype

Phase 2 - Vertical Slice

Phase 3 - Alpha

Phase 4 - Beta

Phase 5 - Release
```

---

# PHASE 0

# Foundation

Goal:

Create the technical foundation.

---

Duration:

Initial development stage.

---

## Required Systems

Implement:

```
Unity Project Structure

Git Workflow

AI Pipeline

Save Architecture

Core Managers
```

---

## Deliverables

✓ Unity project created

✓ Folder architecture implemented

✓ Assembly definitions created

✓ Git repository connected

✓ MCP workflow tested

---

# PHASE 1

# Core Gameplay Prototype

Goal:

Create the first playable combat loop.

---

Player Experience:

```
Spawn

↓

Fight Enemies

↓

Use Skills

↓

Collect Loot

↓

Die

↓

Restart
```

---

# Required Systems

Implement:

```
Player Controller

Camera

Basic Combat

Enemy AI

Health

Damage

Loot Pickup
```

---

# Prototype Character

Only create:

```
Arthur
```

---

# Prototype Skills

Arthur receives:

```
Basic Attack

Royal Strike

Shield Block

Sword Dash

King's Judgement
```

---

# Prototype Enemies

Create:

```
Bandit

Corrupted Soldier

Beast
```

---

# Success Criteria

The game must answer:

> Is fighting fun?

---

# PHASE 2

# Vertical Slice

Goal:

Create a representative version of the final game.

---

Contains:

```
One Region

One Dungeon

One Boss

Three Knights

Full Loot Loop
```

---

# Region

Create:

```
Camelot Outskirts
```

---

Features:

```
Forest

Ruins

Bandit Camps

Ancient Stones
```

---

# Playable Knights

Implement:

```
Arthur

Lancelot

Merlin
```

---

# Full Character Identity

Each must have:

```
Unique Skills

Unique Ultimate

Unique Playstyle
```

---

# Loot System

Implement:

```
Random Stats

Rarity

Affixes

Equipment
```

---

# Boss

Create:

```
The Black Knight
```

---

# Success Criteria

A player should understand:

```
Combat

Progression

Loot

Story
```

---

# PHASE 3

# Alpha

Goal:

Expand the complete gameplay systems.

---

# Systems Added

Implement:

```
All Knight Classes

Full Procedural Generation

Camelot Upgrades

Quest System

More Enemies

More Biomes
```

---

# Knight Roster

Implement:

```
Lancelot

Gawain

Percival

Galahad

Tristan

Kay

Bedivere

Merlin
```

---

# World Expansion

Add:

```
Britain Map

Multiple Regions

Faction Systems
```

---

# Narrative Expansion

Add:

```
Main Story

Knight Quests

Morgana Encounters

Guinevere Events
```

---

# PHASE 4

# Beta

Goal:

Complete content and polish.

---

# Content Completion

Required:

```
All Regions

All Knights

All Bosses

All Major Quests
```

---

# Balance

Tune:

```
Combat

Loot

Difficulty

Progression
```

---

# Performance

Optimise:

```
Loading

Memory

Graphics

AI
```

---

# Quality Assurance

Complete:

```
Bug Fixing

Regression Testing

Controller Testing
```

---

# PHASE 5

# Release

Goal:

Deliver a complete legendary experience.

---

# Release Requirements

Must have:

```
Stable Build

Complete Campaign

Balanced Gameplay

Polished UI

Finished Audio
```

---

# 4. AI Agent Assignment By Phase

---

# Phase 0 Agents

Active:

```
Architect Agent

Build Agent

Documentation Agent
```

---

# Phase 1 Agents

Active:

```
Gameplay Agent

Combat Agent

AI Agent

QA Agent
```

---

# Phase 2 Agents

Active:

```
All Agents
```

---

# Phase 3+

Active:

```
Content Teams

Balance Agent

Polish Agents
```

---

# 5. Feature Priority Rules

Features are prioritised by:

```
Gameplay Impact

Dependency Importance

Development Cost
```

---

# 6. Features To Delay

Do not build early:

```
Multiplayer

Advanced Crafting

Large Open World

Cosmetic Store

Endgame Systems
```

---

# 7. First Playable Definition

First playable requires:

✓ Player movement

✓ Camera

✓ Combat

✓ Enemy

✓ Loot

✓ Death

✓ Restart

---

# 8. Vertical Slice Definition

Vertical slice requires:

✓ Complete gameplay loop

✓ One polished region

✓ Multiple characters

✓ Boss encounter

✓ Narrative moment

✓ Meta progression

---

# 9. Alpha Definition

Alpha requires:

✓ Complete systems

✓ Full architecture

✓ Majority content

✓ Playable campaign

---

# 10. Beta Definition

Beta requires:

✓ Feature complete

✓ Content complete

✓ Performance tested

---

# 11. Release Definition

Release requires:

✓ Stable

✓ Polished

✓ Balanced

✓ Memorable

---

# 12. Development Tracking

Track:

```
Completed Systems

Active Tasks

Bugs

Assets

Build Status
```

---

# 13. Milestone Naming

Milestones use Arthurian themes.

---

Example:

```
Milestone 1:
The Sword Awakens

Milestone 2:
The Round Table

Milestone 3:
Camelot Reborn

Milestone 4:
The Last War

Milestone 5:
The Once And Future King
```

---

# 14. Risk Management

Major risks:

```
Scope Expansion

AI Generated Technical Debt

Content Quantity

Performance
```

---

# 15. Risk Solutions

Solutions:

```
Build Small First

Automate Testing

Reuse Systems

Prioritise Quality
```

---

# 16. Future Expansion

Possible:

```
Avalon Expansion

Mordred Campaign

The Holy Grail

New Legends
```

---

# Definition Of Done

Production Roadmap complete when:

✓ Development order is clear

✓ AI agents know priorities

✓ Systems are built in dependency order

✓ Scope is controlled

✓ The project can move into implementation
