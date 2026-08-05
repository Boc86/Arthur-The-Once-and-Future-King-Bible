---
title: Production Roadmap and Milestone System
document_id: SYS-026
version: 0.1
status: Draft
owner: Production Management
engine: Unity 6 LTS
dependencies:
  - SYS-024 Unity Project Architecture And Code Standards
  - SYS-025 AI Agent Development Workflow And MCP Operations
  - All Gameplay Systems
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-026 Production Roadmap & Milestone System

Version 0.1

---

# 1. Purpose

This document defines the development roadmap for Arthur: The Once and Future King.

The goal is to build the game using a systems-first approach.

Development must prioritise:

- Core gameplay
- Stable architecture
- Repeatable systems
- Playable milestones

---

# 2. Core Production Philosophy

The core principle:

> Build the smallest version of the legend first, then expand the kingdom.

The game must become fun before becoming large.

---

# 3. Development Strategy

The project follows:

```
Prototype

↓

Foundation

↓

Vertical Slice

↓

Alpha

↓

Beta

↓

Release
```

---

# 4. Phase 0 - Foundation

## Goal

Create the technical foundation.

---

Duration:

Initial development phase.

---

## Required Systems

```
Unity Project Setup

Git Workflow

Architecture

AI Agent Pipeline

Basic Player Controller
```

---

## Deliverables

✓ Unity project created

✓ Folder structure created

✓ Assembly definitions created

✓ Build pipeline working

✓ AI workflow operational

---

# 5. Phase 1 - Combat Prototype

## Goal

Prove the core gameplay loop.

---

The player must be able to:

```
Move

Attack

Use Skills

Defeat Enemies

Collect Loot
```

---

## Required Systems

```
SYS-001 Character Framework

SYS-002 Combat System

SYS-008 Skill System

SYS-021 Enemy System
```

---

## Content

Playable:

```
Arthur
```

Enemies:

```
Saxon Soldier

Saxon Archer
```

---

## Success Criteria

The game is fun after 10 minutes.

---

# 6. Phase 2 - Rogue Like Foundation

## Goal

Create repeatable runs.

---

Required:

```
Procedural Zones

Death System

Meta Progression

Loot Generation
```

---

Systems:

```
SYS-003

SYS-004

SYS-005

SYS-016
```

---

## Deliverables

Player can:

Start run

Explore

Fight

Die

Upgrade

Restart

---

# 7. Phase 3 - Vertical Slice

## Goal

Create a small complete version of the game.

---

Contents:

```
One Region

One Boss

Three Characters

50 Items

20 Enemies
```

---

# 8. Vertical Slice Region

Recommended:

## The Dark Forest Of Broceliande

Contains:

```
Forest Zones

Ruins

Fae Encounters

Ancient Shrine

Boss Arena
```

---

# 9. Vertical Slice Characters

Playable:

```
Arthur

Lancelot

Gawain
```

---

# 10. Vertical Slice Boss

Boss:

```
The Corrupted Knight
```

Purpose:

Demonstrate:

- Boss mechanics
- Loot rewards
- Story events

---

# 11. Phase 4 - Alpha

## Goal

Complete the full gameplay framework.

---

Systems Complete:

```
Combat

Loot

Characters

Events

Factions

Crafting

Progression
```

---

# 12. Alpha Content

Target:

```
5 Regions

10 Characters

250 Items

50 Enemies

20 Bosses
```

---

# 13. Phase 5 - Beta

## Goal

Content expansion and polish.

---

Focus:

```
Balance

Performance

User Experience

Bug Fixing
```

---

# 14. Beta Content Targets

```
10+ Regions

Full Round Table

500+ Items

100+ Enemies

Multiple Endings
```

---

# 15. Phase 6 - Release

## Goal

Deliver a complete Arthurian legend.

---

Required:

```
Stable Build

Optimised Performance

Complete Story

Full Progression
```

---

# 16. Feature Priority System

Every feature receives:

```
Priority

Risk

Value

Dependencies
```

---

Priority Levels:

```
P0 Critical

P1 Important

P2 Nice To Have

P3 Future
```

---

# 17. P0 Features

Required:

```
Combat

Movement

Loot

Death Loop

Progression

Save System
```

---

# 18. P1 Features

Important:

```
Characters

Events

Bosses

Factions

Crafting
```

---

# 19. P2 Features

Expansion:

```
More NPCs

More Cosmetics

Additional Events

More Regions
```

---

# 20. P3 Features

Future:

```
Multiplayer

Modding

PvP

Live Events
```

---

# 21. AI Agent Assignment

Each phase assigns agents.

---

Prototype:

```
Architecture Agent

Gameplay Agent

Testing Agent
```

---

Vertical Slice:

```
All Core Agents
```

---

Alpha:

```
Content Agents
```

---

Beta:

```
Polish Agents
```

---

# 22. Development Sprint Structure

Each sprint:

```
Planning

Implementation

Testing

Review

Documentation
```

---

# 23. Sprint Deliverables

Every sprint produces:

```
Working Feature

Tests

Documentation

Commit
```

---

# 24. Risk Management

Major risks:

```
Feature Creep

Architecture Debt

AI Generated Inconsistency

Performance Issues
```

---

# 25. Risk Mitigation

Solutions:

```
Systems First

Strict Documentation

Automated Testing

Regular Refactoring
```

---

# 26. Build Milestones

Milestone examples:

```
M001 Movement Complete

M002 Combat Complete

M003 First Enemy Complete

M004 First Boss Complete

M005 First Complete Run
```

---

# 27. Playtesting Milestones

Testing occurs at:

```
Prototype

Vertical Slice

Alpha

Beta
```

---

# 28. Completion Criteria

Game is complete when:

✓ Core loop is enjoyable

✓ All major systems function

✓ Characters feel unique

✓ World feels alive

✓ Story reaches conclusion

✓ Performance targets achieved

---

# 29. Post Release

Potential:

```
New Legends

New Knights

New Regions

New Stories
```

---

# Definition Of Done

Production Roadmap complete when:

✓ Development order is defined

✓ Milestones exist

✓ AI agents know priorities

✓ Risks are managed

✓ Game can progress from prototype to release
