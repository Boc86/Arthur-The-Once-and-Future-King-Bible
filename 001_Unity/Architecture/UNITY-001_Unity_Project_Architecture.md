---
title: Unity Project Architecture
document_id: UNITY-001
version: 0.1
status: Draft
owner: Technical Architecture
engine: Unity 6 LTS
dependencies:
  - SYS-024 Unity Project Architecture And Code Standards
  - SYS-038 Unity Technical Implementation Architecture System
  - PRJ-001 Project Structure And Documentation Organisation
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# UNITY-001 Unity Project Architecture

Version 0.1

---

# 1. Purpose

This document defines the Unity technical architecture for Arthur: The Once and Future King.

The goal is to create a scalable foundation capable of supporting:

- Diablo-style gameplay
- Procedural generation
- Large numbers of enemies
- AI-assisted development
- Long-term expansion

---

# 2. Architecture Philosophy

The project follows:

```
Data Driven Design

+

Component Based Architecture

+

Event Driven Communication

+

Modular Systems
```

---

# 3. Unity Architecture Layers

The project is divided into:

```
Foundation Layer

↓

Service Layer

↓

Gameplay Layer

↓

Content Layer

↓

Presentation Layer
```

---

# 4. Foundation Layer

Purpose:

Provide universal functionality.

Contains:

```
Events

Logging

Utilities

Configuration

Extensions
```

---

Namespace:

```
Arthur.Core
```

---

# 5. Service Layer

Purpose:

Manage global systems.

Contains:

```
Save Service

Audio Service

Input Service

Scene Service

Asset Service
```

---

Namespace:

```
Arthur.Services
```

---

# 6. Gameplay Layer

Purpose:

Contains game mechanics.

Contains:

```
Combat

Characters

Abilities

Loot

Enemies
```

---

Namespace:

```
Arthur.Gameplay
```

---

# 7. Content Layer

Purpose:

Contains game data.

Uses:

```
Scriptable Objects
```

Contains:

```
Weapons

Characters

Abilities

Quests

Enemies
```

---

Namespace:

```
Arthur.Content
```

---

# 8. Presentation Layer

Purpose:

Handles player-facing systems.

Contains:

```
UI

Animation

VFX

Audio
```

---

Namespace:

```
Arthur.Presentation
```

---

# 9. Unity Folder Structure

Final Unity Assets structure:

```
Assets/

Game/

├── Core
├── Services
├── Gameplay
├── Characters
├── Combat
├── Abilities
├── Loot
├── Enemies
├── World
├── Generation
├── Narrative
├── UI
├── Audio
├── Animation
└── Data


Scenes/

Prefabs/

Materials/

Art/

Tests/

Editor/
```

---

# 10. Assembly Definitions

Required assemblies:

```
Arthur.Core

Arthur.Services

Arthur.Gameplay

Arthur.Content

Arthur.World

Arthur.UI

Arthur.Editor

Arthur.Tests
```

---

# 11. Assembly Dependencies

Allowed:

```
Services
 ↓
Core
```

```
Gameplay
 ↓
Services
 ↓
Core
```

```
Content
 ↓
Core
```

---

Forbidden:

```
Core
 ↓
Gameplay
```

---

# 12. Namespace Rules

All scripts must use:

```
Arthur.[System]
```

---

Examples:

Combat:

```
Arthur.Gameplay.Combat
```

Loot:

```
Arthur.Gameplay.Loot
```

AI:

```
Arthur.Gameplay.AI
```

---

# 13. MonoBehaviour Rules

MonoBehaviours should:

```
Control Unity Objects

Receive Events

Coordinate Components
```

---

MonoBehaviours should not contain:

```
Complex Calculations

Database Logic

Large Algorithms
```

---

# 14. Service Rules

Services handle:

```
Persistent Systems

Cross-System Communication

External Dependencies
```

---

Examples:

```
SaveService

AudioService

WorldService
```

---

# 15. Scriptable Object Rules

Scriptable Objects define:

```
Static Data

Configuration

Templates
```

---

Examples:

```
WeaponDefinition

EnemyDefinition

AbilityDefinition
```

---

# 16. Runtime Data Rules

Runtime changes must use:

```
Runtime Instances
```

Never modify:

```
Scriptable Object Assets
```

during gameplay.

---

# 17. Event Architecture

Systems communicate using events.

Example:

Enemy defeated:

```
EnemyDeathEvent
```

Subscribers:

```
Loot System

XP System

Quest System

Audio System
```

---

# 18. Event Rules

Events should:

```
Describe Something Happened
```

Events should not:

```
Execute Gameplay Logic
```

---

# 19. Manager Rules

Avoid:

```
Huge Managers
```

---

Bad:

```
GameManager
 - Combat
 - Loot
 - UI
 - Save
 - Audio
```

---

Good:

```
GameManager

CombatService

LootService

SaveService
```

---

# 20. Scene Architecture

Scenes:

```
Bootstrap

Main Menu

Camelot

Dungeon

Boss Arena
```

---

# 21. Bootstrap Scene

Responsible for:

```
Service Creation

Configuration Loading

Save Initialisation
```

---

# 22. Prefab Architecture

Prefabs are divided into:

```
Characters

Enemies

Weapons

Items

Environment

Effects
```

---

# 23. Character Prefab Standard

Every character requires:

```
Root Object

Character Controller

Combat Component

Animation Controller

Health Component

Equipment Component
```

---

# 24. Enemy Prefab Standard

Every enemy requires:

```
Enemy Controller

AI Controller

Health Component

Combat Component

Loot Component
```

---

# 25. Data Architecture

All gameplay data should be externalised.

Example:

Weapon:

```
WeaponDefinitionSO

↓

Runtime Weapon Instance

↓

Inventory
```

---

# 26. Addressables

Large assets use:

```
Unity Addressables
```

Required for:

```
Characters

Enemies

Environment

Audio
```

---

# 27. Async Loading

Loading must support:

```
World Generation

Asset Loading

Scene Transitions
```

---

# 28. Performance Requirements

Architecture must support:

```
Hundreds of Enemies

Large Particle Effects

Procedural Levels

Dynamic Loot
```

---

# 29. AI Agent Development Rules

Before creating code:

Agent must:

```
Locate Existing System

Follow Namespace Rules

Check Dependencies
```

---

After creating code:

Agent must:

```
Compile

Test

Document
```

---

# 30. Code Quality Rules

Required:

```
Clear Naming

Small Classes

Comments For Complex Logic

No Magic Numbers
```

---

# 31. Testing Requirements

Every major system requires:

```
Unit Tests

Integration Tests

Gameplay Validation
```

---

# 32. Future Expansion Support

Architecture supports:

```
Additional Knights

New Regions

Expansion Packs

Modding

Multiplayer Foundations
```

---

# Definition Of Done

Unity Architecture complete when:

✓ Folder structure is defined

✓ Dependencies are controlled

✓ AI agents can safely add code

✓ Systems remain modular

✓ Unity project can scale to full production
