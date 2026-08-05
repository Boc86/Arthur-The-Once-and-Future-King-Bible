---
title: Unity Project Architecture and Code Standards
document_id: SYS-024
version: 0.1
status: Draft
owner: Technical Architecture
engine: Unity 6 LTS
dependencies:
  - SYS-013 AI Development And MCP Asset Pipeline
  - SYS-023 Art Direction And Asset Production System
  - SYS-016 Save Load And Run State System
  - SYS-022 Character Class And Knight Roster System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-024 Unity Project Architecture & Code Standards

Version 0.1

---

# 1. Purpose

This document defines the technical architecture standards for the Unity project.

The purpose is to ensure:

- AI agents can safely modify code
- Systems remain modular
- Features can expand without rewrites
- Code remains maintainable
- Multiple agents can work simultaneously

---

# 2. Core Philosophy

The core principle:

> Build systems that can grow for years, not prototypes that survive weeks.

The project must favour:

- Modularity
- Data driven design
- Separation of concerns
- Testability
- Clear ownership

---

# 3. Architecture Goals

The game architecture must support:

```
Combat Expansion

New Characters

New Enemies

New Regions

New Items

New Quests

New Events

New Platforms
```

---

# 4. Unity Version

Target:

```
Unity 6 LTS
```

---

# 5. Rendering Pipeline

Target:

```
Universal Render Pipeline (URP)
```

Reason:

- Good performance
- Desktop support
- Flexible lighting
- AI asset compatibility

---

# 6. Project Structure

Root:

```
Assets/

├── Arthur

│
├── Core

│
├── Gameplay

│
├── Characters

│
├── Combat

│
├── World

│
├── UI

│
├── Audio

│
├── Art

│
├── Tools

│
├── Tests

│
└── ThirdParty
```

---

# 7. Core Folder

Contains shared systems:

```
Core/

├── Events

├── Data

├── Utilities

├── Save

├── Configuration

└── Services
```

---

# 8. Gameplay Folder

Contains:

```
Player

Enemies

Quests

Loot

Progression

Encounters
```

---

# 9. Assembly Definitions

Every major system receives its own assembly.

Example:

```
Arthur.Core

Arthur.Combat

Arthur.Characters

Arthur.World

Arthur.UI
```

---

Benefits:

- Faster compilation
- Dependency control
- Safer AI modifications

---

# 10. Dependency Rules

Dependencies flow downward.

Example:

Allowed:

```
Combat

↓

Core
```

Not allowed:

```
Core

↓

Combat
```

---

# 11. Script Naming Convention

Classes use:

```
PascalCase
```

Examples:

```
CombatManager

LootGenerator

CharacterController
```

---

# 12. Interface Naming

Interfaces begin:

```
I
```

Examples:

```
IDamageable

ILootSource

ISaveable
```

---

# 13. Variable Naming

Private fields:

```
camelCase
```

Example:

```
private int health;
```

---

Public properties:

```
PascalCase
```

Example:

```
public int Health { get; }
```

---

# 14. Class Responsibility

Every class should have:

```
One Purpose
```

Avoid:

God classes.

---

Bad:

```
GameManager handles everything
```

---

Good:

```
CombatManager

SaveManager

QuestManager
```

---

# 15. Manager Pattern

Managers should control systems.

Examples:

```
CombatManager

LootManager

WorldManager

DialogueManager
```

---

Managers should NOT:

- Store unrelated data
- Control UI
- Handle rendering

---

# 16. Data Driven Architecture

Game data uses:

```
ScriptableObjects
```

---

Examples:

```
CharacterDefinition

WeaponDefinition

EnemyDefinition

QuestDefinition
```

---

# 17. ScriptableObject Rules

ScriptableObjects contain:

- Configuration
- Values
- References

They do NOT contain:

- Runtime state
- Temporary variables

---

# 18. Runtime Data

Runtime state uses:

```
Plain C# Classes
```

Examples:

```
CharacterState

RunState

InventoryState
```

---

# 19. Event Driven Architecture

Systems communicate through events.

Example:

```
EnemyKilledEvent

ItemCollectedEvent

QuestCompletedEvent
```

---

Avoid:

Direct references between systems.

---

# 20. Event System

Core events:

```
GameEvent

CombatEvent

WorldEvent

ProgressionEvent
```

---

# 21. Dependency Injection

Preferred:

```
Constructor Injection

Service Locator

Interfaces
```

---

Avoid:

Heavy use of:

```
FindObjectOfType()
```

---

# 22. MonoBehaviour Rules

MonoBehaviours should handle:

- Unity lifecycle
- Scene objects
- Components

They should not contain:

- Business logic
- Complex calculations

---

# 23. Gameplay Logic Rules

Gameplay logic belongs in:

```
Plain C# classes
```

Example:

Damage calculation:

```
DamageCalculator
```

not:

```
PlayerController
```

---

# 24. Combat Architecture Example

```
PlayerController

↓

CombatController

↓

AbilitySystem

↓

DamageSystem

↓

EventSystem
```

---

# 25. AI Agent Coding Rules

AI agents must:

Before changing code:

```
Read existing architecture

Understand dependencies

Follow conventions
```

---

# 26. AI Code Generation Requirements

Every generated system must include:

```
Purpose

Dependencies

Public API

Testing Notes
```

---

# 27. Code Documentation

Public classes require:

```
XML Documentation
```

---

Example:

```csharp
/// <summary>
/// Handles player combat actions.
/// </summary>
```

---

# 28. Error Handling

Systems must:

- Fail safely
- Provide useful errors
- Avoid silent failures

---

# 29. Logging

Use:

```
ArthurLogger
```

instead of:

```
Debug.Log()
```

---

# 30. Configuration System

Global settings stored in:

```
GameConfiguration
```

Examples:

```
Difficulty

Graphics

Audio

Balance Values
```

---

# 31. Save Integration

Systems requiring persistence implement:

```
ISaveable
```

---

Example:

```
InventorySystem : ISaveable
```

---

# 32. Testing Framework

Required:

```
Unity Test Framework
```

---

Tests:

```
Unit Tests

Integration Tests

Play Mode Tests
```

---

# 33. Automated Testing

AI agents should create tests for:

```
New Features

Bug Fixes

Balance Changes
```

---

# 34. Build Pipeline

Required builds:

```
Development

Testing

Release
```

---

# 35. Version Control Rules

Git structure:

```
main

development

feature branches
```

---

# 36. Commit Standards

Format:

```
TYPE: Description
```

Examples:

```
FEATURE: Add Arthur abilities

FIX: Repair loot generation

SYSTEM: Update save architecture
```

---

# 37. AI Agent Workflow

Every AI coding task:

```
Analyse

Plan

Implement

Test

Document

Commit
```

---

# 38. Code Review Rules

Changes must check:

- Architecture
- Performance
- Security
- Maintainability

---

# 39. Performance Standards

Target:

```
60 FPS

Stable memory

Low garbage collection
```

---

# 40. AI Implementation Restrictions

AI agents must NOT:

- Rewrite unrelated systems
- Create duplicate managers
- Ignore existing patterns
- Hardcode gameplay values
- Break save compatibility

---

# 41. Future Expansion

Architecture should support:

- Multiplayer
- Console ports
- Modding
- Dedicated servers
- Live updates

---

# Definition Of Done

Architecture complete when:

✓ Unity project structure exists

✓ Systems are modular

✓ Code standards documented

✓ AI agents follow workflow

✓ Testing exists

✓ Project can scale safely
