---
title: Technical Stack
document_id: PROJ-005
version: 0.1
status: Draft
owner: Technical Director
engine: Unity 6 LTS
dependencies:
  - PROJ-001 Project Charter
  - PROJ-003 Design Pillars
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King
# Technical Stack

Version 0.1

---

# 1. Purpose

This document defines the technical foundation of Arthur: The Once and Future King.

The goal is to establish a scalable Unity 6 LTS architecture capable of supporting:

- A large ARPG codebase
- Procedural generation
- Hundreds of gameplay systems
- Thousands of generated assets
- AI-assisted development
- Long-term maintainability

The architecture prioritises:

- Modularity
- Performance
- Data-driven design
- Testability
- AI-agent compatibility

---

# 2. Engine Requirements

## Game Engine

Required:

**Unity 6 LTS**

The project will not target previous Unity versions.

---

## Programming Language

Primary:

C#

Standards:

- Modern C# syntax
- Clear naming conventions
- SOLID principles where practical
- Avoid unnecessary inheritance
- Prefer composition

---

# 3. Rendering Pipeline

## Required Pipeline

Universal Render Pipeline (URP)

---

## Reasoning

URP provides:

- Strong performance
- Cross-platform support
- Modern lighting
- Shader Graph compatibility
- Good tooling support

---

## Visual Target

The visual style target:

- Diablo IV atmosphere
- Path of Exile 2 density
- Dark medieval fantasy
- High-quality stylised realism

---

# 4. Unity Packages

Required packages:

---

## Input

Unity Input System

Purpose:

- Keyboard
- Controller
- Future console support

---

## Camera

Cinemachine

Purpose:

- Isometric camera
- Camera transitions
- Boss encounters
- Cinematic moments

---

## Navigation

Unity AI Navigation

Purpose:

- Enemy movement
- Pathfinding
- Dynamic navigation

---

## Addressables

Purpose:

- Asset streaming
- Large content library
- Procedural loading
- Memory management

---

## Timeline

Purpose:

- Cinematics
- Story moments
- Boss introductions

---

## Visual Effect Graph

Purpose:

- Combat effects
- Magic
- Environmental effects

---

## Shader Graph

Purpose:

- Materials
- Custom visual effects
- Environmental shaders

---

# 5. Project Architecture Philosophy

The project follows:

```
Data

↓

Systems

↓

Gameplay Logic

↓

Presentation

↓

Visuals / Audio
```

Gameplay should never depend directly on presentation.

---

Example:

Incorrect:

```
Sword Animation

↓

Damage Calculation
```

Correct:

```
Attack Event

↓

Damage System

↓

Animation Response
```

---

# 6. Folder Structure

The Unity project should follow:

```
Assets/

├── Art/
├── Audio/
├── Characters/
├── Combat/
├── Enemies/
├── Environment/
├── Items/
├── Materials/
├── Prefabs/
├── Scenes/
├── Scripts/
├── ScriptableObjects/
├── UI/
├── VFX/
├── Tests/
└── Tools/
```

---

# 7. Code Architecture

The project uses a modular system architecture.

Major systems:

```
GameManager

↓

Systems Layer

↓

Components

↓

Data Layer

↓

Presentation
```

---

# 8. Event Driven Architecture

Systems communicate through events.

Example:

Enemy Death:

```
Enemy Dies

↓

Death Event

↓

Loot System

↓

Experience System

↓

Quest System

↓

Audio System

↓

VFX System
```

---

Systems should avoid direct references where possible.

---

# 9. Scriptable Object Philosophy

Scriptable Objects are the primary data container.

Used for:

- Weapons
- Armour
- Skills
- Enemies
- Characters
- Quests
- Dialogue
- Loot tables
- Procedural rules

---

Example:

```
WeaponDefinition

↓

WeaponBehaviour

↓

Player Equipment

↓

Combat System
```

---

# 10. Data Driven Design

Content creators and AI agents should modify data rather than code.

Example:

Adding a new sword should require:

Creating:

```
Sword.asset
```

Not:

Creating:

```
Sword.cs
```

---

# 11. Save System Requirements

The save system must support:

- Player progression
- Camelot restoration
- Character unlocks
- Inventory
- Equipment
- World state
- Lore discovery
- Settings

---

Save philosophy:

The player state is data.

The world state is data.

Both must be serialisable.

---

# 12. Asset Management

All large assets should use:

Unity Addressables.

Required for:

- Characters
- Weapons
- Armour
- Environments
- Audio
- VFX

---

Benefits:

- Memory control
- Faster iteration
- Procedural loading
- Future DLC support

---

# 13. Performance Targets

Initial targets:

## PC

Minimum:

60 FPS

Target:

120 FPS

---

## Loading

Gameplay transitions:

Less than 5 seconds.

---

## Memory

Avoid unnecessary asset duplication.

---

# 14. Testing Requirements

Every major system requires tests.

Required testing:

## Unit Tests

For:

- Calculations
- Stats
- Loot generation
- Progression

---

## Integration Tests

For:

- Combat flow
- Save/load
- Procedural generation

---

## Play Tests

For:

- Feel
- Balance
- Player experience

---

# 15. AI Development Requirements

AI generated code must:

- Follow existing architecture
- Include comments where necessary
- Include tests
- Avoid duplicate systems
- Avoid unnecessary complexity

---

AI agents must inspect:

- Existing systems
- Documentation
- Dependencies

before creating new code.

---

# 16. Naming Standards

## Classes

PascalCase

Example:

```
LootGenerator
CombatManager
ArthurCharacter
```

---

## Methods

PascalCase

Example:

```
GenerateLoot()
ApplyDamage()
RestoreCamelot()
```

---

## Variables

camelCase

Example:

```
currentHealth
weaponDamage
playerLevel
```

---

## Scriptable Objects

Suffix:

Definition

Example:

```
WeaponDefinition
SkillDefinition
EnemyDefinition
```

---

# 17. Version Control Rules

Git is the source of truth.

Branches:

```
main

develop

feature/system-name

bugfix/problem-name
```

---

Rules:

Never commit directly to main.

Every feature requires:

- Documentation update
- Code review
- Testing

---

# 18. Architecture Goals

The final architecture should allow:

Adding a new Knight:

without rewriting combat.

Adding a new weapon:

without rewriting inventory.

Adding a new biome:

without rewriting procedural generation.

Adding a new enemy:

without rewriting AI.

Adding a new timeline:

without rewriting the world.

---

# Final Principle

The technology exists to serve the legend.

The architecture should be invisible to the player.

They should only experience:

A living world.

A growing kingdom.

A legendary journey.

The return of Arthur Pendragon.
