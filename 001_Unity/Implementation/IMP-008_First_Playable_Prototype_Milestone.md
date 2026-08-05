---
title: First Playable Prototype Milestone
document_id: IMP-008
version: 0.1
status: Draft
owner: Production Architecture
engine: Unity 6 LTS
dependencies:
  - IMP-001 Core Framework Implementation
  - IMP-002 Player Controller Implementation
  - IMP-003 Isometric Camera System
  - IMP-004 Combat Framework Implementation
  - IMP-005 Enemy AI Framework Implementation
  - IMP-006 Loot System Implementation
  - IMP-007 Character Progression Implementation
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-008 First Playable Prototype Milestone

Version 0.1

---

# 1. Purpose

This document defines the first complete playable milestone.

The objective is to create the first version of the game where the core gameplay loop exists.

---

# 2. Milestone Goal

The player must be able to:

```
Launch Game

↓

Control Arthur

↓

Explore Arena

↓

Fight Enemies

↓

Defeat Enemies

↓

Collect Loot

↓

Gain Experience

↓

Become Stronger
```

---

# 3. Prototype Scope

Included:

```
Player

Camera

Combat

Enemies

Loot

Progression

Basic UI
```

---

Excluded:

```
Full Story

Camelot World

Quests

Procedural Generation

Bosses

Multiplayer
```

---

# 4. Prototype Scene

Primary scene:

```
03_TestArena
```

---

Purpose:

Development sandbox.

---

# 5. Scene Requirements

The scene contains:

```
Arthur Spawn

Enemy Spawn Points

Training Area

Loot Area

Camera

Lighting

UI Canvas
```

---

# 6. Player Requirements

Arthur must have:

```
Movement

Rotation

Camera Following

Basic Attack

Health

Stats

Experience
```

---

# 7. Camera Requirements

Camera must provide:

```
Isometric View

Smooth Follow

Zoom

Collision Handling
```

---

# 8. Combat Requirements

Player can:

```
Attack

Damage Enemy

Receive Damage

Die
```

---

Combat must support:

```
Damage Numbers

Hit Feedback

Combat Events
```

---

# 9. Enemy Requirements

Prototype enemy:

```
Training Bandit
```

---

Capabilities:

```
Idle

Detect Player

Chase Player

Attack

Die
```

---

# 10. Loot Requirements

Enemy drops:

```
Gold

Weapon

Armour
```

---

Loot must:

```
Spawn

Display

Pickup

Add To Inventory
```

---

# 11. Progression Requirements

Player receives:

```
XP

Levels

Attribute Points
```

---

First milestone:

```
Level 1-5
```

---

# 12. User Interface Requirements

Create:

```
Health Bar

Experience Bar

Ability Slots

Inventory Indicator
```

---

# 13. UI Folder Structure

Create:

```
Assets/Game/UI/
```

Structure:

```
UI/

├── HUD

├── Menus

├── Inventory

└── Components
```

---

# 14. Audio Requirements

Minimum:

```
Sword Swing

Hit Sound

Enemy Death

Loot Pickup
```

---

# 15. Visual Requirements

Placeholder assets are acceptable.

Required:

```
Readable Gameplay

Clear Feedback

Consistent Scale
```

---

# 16. Development Build

Create:

```
Prototype Build 0.1
```

---

Platforms:

```
Windows

Linux
```

---

# 17. Automated Validation

Before milestone approval:

AI agent verifies:

```
Project Opens

No Compile Errors

Scene Loads

Player Moves

Combat Works

Enemy Dies

Loot Drops

XP Applies
```

---

# 18. Bug Tracking

Create:

```
Prototype Issues List
```

Categories:

```
Gameplay

Performance

UI

Technical

Balance
```

---

# 19. Performance Target

Minimum:

```
60 FPS
```

Target hardware:

```
Mid-range Gaming PC
```

---

# 20. Save Test

Verify:

```
Player Data Saves

Inventory Saves

Progression Saves
```

---

# 21. Git Milestone

Create tag:

```
prototype-v0.1
```

---

Commit:

```
Milestone:
First playable prototype complete
```

---

# 22. Review Checklist

The team reviews:

## Gameplay

```
Does movement feel good?

Does combat feel responsive?

Are enemies readable?
```

---

## Progression

```
Does growth feel rewarding?

Does loot matter?
```

---

## Technical

```
Are systems modular?

Can new content be added?
```

---

# 23. Definition Of Complete

This milestone is complete when:

✓ Arthur can be controlled

✓ Camera works

✓ Combat works

✓ Enemies function

✓ Loot drops

✓ Progression works

✓ Prototype build runs

---

# Definition Of Done

The first playable prototype proves the core gameplay foundation of Arthur: The Once and Future King is viable.

Future development now expands:

```
Prototype

↓

World

↓

Story

↓

Characters

↓

Bosses

↓

Complete Game
```
