---
title: Combat Framework Implementation
document_id: IMP-004
version: 0.1
status: Draft
owner: Gameplay Architecture
engine: Unity 6 LTS
dependencies:
  - IMP-002 Player Controller Implementation
  - IMP-003 Isometric Camera System
  - SYS-002 Combat System
  - SYS-008 Skill And Ability System
  - SYS-021 Enemy Boss And Combat Encounter Design System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-004 Combat Framework Implementation

Version 0.1

---

# 1. Purpose

This document defines the foundation combat architecture for Arthur: The Once and Future King.

The combat system must support:

```
Melee Combat

Abilities

Damage

Health

Status Effects

Enemies

Bosses

Future Knight Classes
```

---

# 2. Combat Philosophy

Combat follows:

```
Fast Action RPG Combat

Readable Attacks

Meaningful Positioning

Ability Choice

Weapon Identity
```

---

# 3. Combat Architecture

Combat is divided into:

```
Input

↓

Combat Controller

↓

Attack / Ability Systems

↓

Damage System

↓

Health System

↓

Combat Events
```

---

# 4. Folder Structure

Create:

```
Assets/Game/Combat/
```

Structure:

```
Combat/

├── Controllers

├── Damage

├── Health

├── Attacks

├── Abilities

├── Effects

├── Events

└── Data
```

---

# 5. Required Scripts

Create:

```
CombatController.cs

AttackController.cs

DamageSystem.cs

HealthComponent.cs

TargetingSystem.cs

CombatEventBus.cs

CombatStats.cs
```

---

# 6. Health Component

Create:

```
HealthComponent.cs
```

Location:

```
Combat/Health/
```

---

Purpose:

Universal health system.

Used by:

```
Player

Enemies

Bosses

NPCs
```

---

Required values:

```
Maximum Health

Current Health

Regeneration
```

---

Methods:

```
TakeDamage()

Heal()

Die()
```

---

# 7. Damage System

Create:

```
DamageSystem.cs
```

---

Purpose:

Central damage calculation.

---

Damage flow:

```
Attack

↓

Damage Request

↓

Damage Calculation

↓

Health Change

↓

Combat Event
```

---

# 8. Damage Data

Create:

```
DamageData.cs
```

Contains:

```
Amount

Damage Type

Source

Target

Critical State
```

---

# 9. Damage Types

Initial:

```
Physical

Fire

Ice

Lightning

Holy

Dark
```

---

# 10. Combat Stats

Create:

```
CombatStats.cs
```

---

Stats:

```
Attack Power

Weapon Damage

Critical Chance

Critical Damage

Attack Speed

Armour

Resistance
```

---

# 11. Combat Controller

Create:

```
CombatController.cs
```

---

Purpose:

Coordinates player combat.

---

Responsibilities:

```
Receive Attack Input

Select Attack

Trigger Animation

Create Damage Event
```

---

Does not:

```
Calculate Damage

Manage Health
```

---

# 12. Basic Attack System

Create:

```
AttackController.cs
```

---

Initial attack:

```
Sword Slash
```

---

Attack sequence:

```
Input

↓

Attack Start

↓

Animation Trigger

↓

Hit Detection

↓

Damage Applied

↓

Recovery
```

---

# 13. Attack Data

Create:

```
AttackDefinitionSO.cs
```

Location:

```
Combat/Data/
```

---

Contains:

```
Attack Name

Damage Multiplier

Animation

Range

Cooldown
```

---

# 14. Hit Detection

Initial implementation:

```
Sphere Cast
```

---

Future:

```
Weapon Hitboxes

Animation Events
```

---

# 15. Targeting System

Create:

```
TargetingSystem.cs
```

---

Purpose:

Handle:

```
Enemy Selection

Attack Direction

Ability Targeting
```

---

Supports:

```
Mouse Direction

Nearest Enemy

Manual Target
```

---

# 16. Combat Events

Create:

```
CombatEventBus.cs
```

---

Events:

```
DamageDealtEvent

EnemyKilledEvent

PlayerDamagedEvent

CriticalHitEvent
```

---

# 17. Animation Integration

Combat must communicate:

```
Attack Started

Attack Impact

Attack Finished
```

---

Animation events trigger:

```
Damage Window
```

---

# 18. Player Combat Setup

Arthur prefab receives:

```
CombatController

AttackController

TargetingSystem

CombatStats
```

---

# 19. Enemy Combat Compatibility

Enemy prefabs require:

```
HealthComponent

CombatStats

DamageReceiver
```

---

# 20. Combat State Machine

States:

```
Idle

Attacking

Blocking

Dodging

Stunned

Dead
```

---

Rules:

Cannot:

```
Attack While Dead

Move During Certain Attacks

Use Skills During Stun
```

---

# 21. Cooldown Framework

Create:

```
CooldownSystem.cs
```

---

Used by:

```
Abilities

Attacks

Items
```

---

# 22. Ability Framework Preparation

Combat must support:

```
Ability Slots

Cooldowns

Resource Costs

Effects
```

---

Initial slots:

```
Ability 1

Ability 2

Ability 3

Ability 4

Ultimate
```

---

# 23. Combat Feedback

Future systems consume events:

```
VFX

Audio

UI Damage Numbers

Camera Shake
```

---

# 24. Test Enemy

Create:

```
Training Dummy
```

---

Components:

```
HealthComponent

DamageReceiver
```

---

# 25. Test Scene

Use:

```
03_TestArena
```

---

Setup:

```
Arthur

Training Dummy

Camera

Lighting
```

---

# 26. Testing Requirements

## Damage Test

Expected:

```
Enemy health decreases
```

---

## Death Test

Expected:

```
Enemy death event fires
```

---

## Attack Test

Expected:

```
Attack animation triggers
```

---

## Critical Test

Expected:

```
Critical damage applies correctly
```

---

# 27. Performance Requirements

Combat must:

```
Avoid unnecessary allocations

Pool temporary objects

Avoid excessive physics checks
```

---

# 28. AI Agent Rules

Before coding:

```
Read SYS-002

Read SYS-008

Read IMP-002
```

---

During coding:

```
Keep damage calculation centralised

Use events

Avoid dependencies between systems
```

---

After coding:

```
Compile

Test attacks

Test damage

Document changes
```

---

# 29. Future Compatibility

Combat must support:

```
Eight Knights

Different Weapons

Magic

Boss Mechanics

Status Effects

Difficulty Scaling
```

---

# 30. Acceptance Criteria

IMP-004 complete when:

✓ Arthur can attack

✓ Damage works

✓ Health works

✓ Enemies can die

✓ Combat events fire

✓ Targeting exists

✓ Abilities can be added

---

# Definition Of Done

The Combat Framework is complete when the game has a working action RPG combat foundation capable of supporting Arthur's legendary battles.
