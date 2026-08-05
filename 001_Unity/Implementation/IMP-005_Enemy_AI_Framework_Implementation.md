---
title: Enemy AI Framework Implementation
document_id: IMP-005
version: 0.1
status: Draft
owner: Gameplay Architecture
engine: Unity 6 LTS
dependencies:
  - IMP-004 Combat Framework Implementation
  - SYS-006 Enemy And AI Framework
  - SYS-021 Enemy Boss And Combat Encounter Design System
  - SYS-032 Enemy Faction AI And Behaviour System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-005 Enemy AI Framework Implementation

Version 0.1

---

# 1. Purpose

This document defines the foundation enemy AI architecture.

The system must support:

```
Basic Enemies

Elite Enemies

Bosses

Faction Behaviours

Procedural Encounters
```

---

# 2. AI Philosophy

Enemies should feel:

```
Readable

Dangerous

Reactive

Different From Each Other
```

---

# 3. AI Architecture

Enemy behaviour follows:

```
Perception

↓

Decision

↓

Action

↓

Combat

↓

Recovery
```

---

# 4. AI Components

Each enemy is composed of:

```
Enemy Controller

AI Brain

Perception

Movement

Combat

Health

Loot
```

---

# 5. Folder Structure

Create:

```
Assets/Game/Enemies/
```

Structure:

```
Enemies/

├── Controllers

├── AI

├── Behaviour

├── Combat

├── Data

├── Factions

└── Prefabs
```

---

# 6. Required Scripts

Create:

```
EnemyController.cs

EnemyBrain.cs

EnemyPerception.cs

EnemyMovement.cs

EnemyCombatController.cs

EnemyStateMachine.cs
```

---

# 7. Enemy Controller

Create:

```
EnemyController.cs
```

Purpose:

Coordinates enemy components.

---

References:

```
Brain

Movement

Combat

Health

Loot
```

---

Does not contain:

```
Decision Logic
```

---

# 8. Enemy Brain

Create:

```
EnemyBrain.cs
```

Purpose:

Controls decision making.

---

Responsibilities:

```
Evaluate Situation

Choose Behaviour

Change State
```

---

# 9. Enemy State Machine

Create:

```
EnemyStateMachine.cs
```

---

Initial states:

```
Idle

Patrol

Investigate

Chase

Attack

Recover

Flee

Dead
```

---

# 10. State Rules

Example:

Idle:

```
Search Environment
```

---

Chase:

```
Move Toward Player
```

---

Attack:

```
Execute Combat Ability
```

---

Dead:

```
Disable AI
```

---

# 11. Enemy Perception

Create:

```
EnemyPerception.cs
```

---

Purpose:

Detect world information.

---

Detection methods:

```
Distance

Line Of Sight

Sound Events
```

---

# 12. Detection Settings

Create:

```
EnemyAIDataSO
```

Location:

```
Game/Data/Enemies/
```

---

Values:

```
Detection Range

Attack Range

Movement Speed

Aggression

Reaction Time
```

---

# 13. Navigation System

Use:

```
Unity AI Navigation
```

---

Required:

```
NavMeshAgent
```

---

Enemy movement supports:

```
Chasing

Patrolling

Returning
```

---

# 14. Enemy Movement

Create:

```
EnemyMovement.cs
```

---

Responsibilities:

```
Move To Target

Stop Distance

Path Handling
```

---

# 15. Enemy Combat Controller

Create:

```
EnemyCombatController.cs
```

---

Responsibilities:

```
Choose Attack

Execute Attack

Apply Damage
```

---

# 16. Enemy Attack Data

Create:

```
EnemyAttackDefinitionSO.cs
```

---

Contains:

```
Attack Name

Damage

Range

Cooldown

Animation
```

---

# 17. Enemy Types

Initial prototype:

```
Bandit

Corrupted Soldier

Beast
```

---

# 18. Bandit Behaviour

Identity:

```
Human Raider
```

Behaviour:

```
Aggressive

Close Range

Simple Tactics
```

---

# 19. Corrupted Soldier Behaviour

Identity:

```
Undead Warrior
```

Behaviour:

```
Slow

Armoured

High Health
```

---

# 20. Beast Behaviour

Identity:

```
Wild Creature
```

Behaviour:

```
Fast

Charges

Retreats
```

---

# 21. Faction Foundation

Create:

```
FactionDefinitionSO.cs
```

---

Initial factions:

```
Mordred Forces

Wild Creatures

Corrupted Knights

Bandits
```

---

# 22. Enemy Communication

Use events:

```
EnemySpottedEvent

EnemyAlertedEvent

EnemyKilledEvent
```

---

# 23. Spawn Compatibility

AI must support:

```
Procedural Spawning

Dungeon Generation

Boss Arenas
```

---

# 24. Enemy Prefab Standard

Every enemy prefab requires:

```
EnemyController

EnemyBrain

EnemyPerception

EnemyMovement

EnemyCombatController

HealthComponent

NavMeshAgent
```

---

# 25. Test Enemy

Create:

```
Bandit_Test.prefab
```

---

Components:

```
Enemy Controller

AI Brain

Health

Combat
```

---

# 26. Test Scene

Use:

```
03_TestArena
```

---

Setup:

```
Arthur

Bandit

Navigation Surface
```

---

# 27. Testing Requirements

## Detection Test

Expected:

```
Enemy notices player
```

---

## Chase Test

Expected:

```
Enemy moves toward player
```

---

## Attack Test

Expected:

```
Enemy damages player
```

---

## Death Test

Expected:

```
Enemy disables correctly
```

---

# 28. Performance Requirements

AI must:

```
Avoid running expensive logic every frame

Use update intervals

Support many enemies
```

---

# 29. AI Agent Rules

Before coding:

```
Read IMP-004

Read SYS-006

Read SYS-032
```

---

During coding:

```
Use modular behaviours

Avoid hardcoded enemies

Use Scriptable Objects
```

---

After coding:

```
Compile

Test AI

Document Changes
```

---

# 30. Future Compatibility

System must support:

```
Elite Modifiers

Boss AI

Faction Wars

Procedural Encounters

Difficulty Scaling
```

---

# 31. Acceptance Criteria

IMP-005 complete when:

✓ Enemies spawn

✓ Enemies detect Arthur

✓ Enemies chase Arthur

✓ Enemies attack

✓ Enemies die

✓ AI states transition correctly

✓ System supports multiple enemy types

---

# Definition Of Done

The Enemy AI Framework is complete when Arthur has opponents capable of creating the foundation of the game's combat loop.
