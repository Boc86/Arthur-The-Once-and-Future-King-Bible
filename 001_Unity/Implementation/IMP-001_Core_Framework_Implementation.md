---
title: Core Framework Implementation
document_id: IMP-001
version: 0.1
status: Draft
owner: Technical Architecture
engine: Unity 6 LTS
dependencies:
  - UNITY-001 Unity Project Architecture
  - UNITY-002 Unity Project Setup And Configuration
  - SYS-038 Unity Technical Implementation Architecture System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-001 Core Framework Implementation

Version 0.1

---

# 1. Purpose

This document defines the first executable code implementation for the Unity project.

The Core Framework provides the foundation every future game system depends on.

This implementation creates:

```
Application Startup

Global Services

Event Communication

Scene Management

Configuration

Logging
```

---

# 2. Implementation Goal

After completion the project must:

```
Launch

↓

Initialise Core Systems

↓

Load Configuration

↓

Enter Main Menu
```

---

# 3. Implementation Order

The AI agent must implement in this order:

```
1. Folder Structure

2. Interfaces

3. Core Utilities

4. Services

5. Bootstrap System

6. Scene Loading

7. Testing
```

---

# 4. Namespace Structure

All files created by this document use:

```
Arthur.Core
```

and:

```
Arthur.Services
```

---

# 5. Folder Creation

Create:

```
Assets/Game/Core/
```

Structure:

```
Core/

├── Bootstrap

├── Events

├── Logging

├── Configuration

├── Utilities

└── Interfaces
```

---

Create:

```
Assets/Game/Services/
```

Structure:

```
Services/

├── Save

├── Audio

├── Scene

├── Input

└── Assets
```

---

# 6. Service Interface

Create:

```
IService.cs
```

Location:

```
Core/Interfaces/
```

Purpose:

Defines all global services.

---

Responsibilities:

Every service must support:

```
Initialize()

Shutdown()
```

---

# 7. Service Locator

Create:

```
ServiceLocator.cs
```

Location:

```
Core/
```

Namespace:

```
Arthur.Core
```

---

Purpose:

Provides controlled access to global services.

---

Required functionality:

```
Register Service

Get Service

Remove Service

Check Availability
```

---

Example:

```
SaveService save =
ServiceLocator.Get<SaveService>();
```

---

# 8. Event System

Create:

```
GameEvent.cs
```

and:

```
EventBus.cs
```

Location:

```
Core/Events/
```

---

Purpose:

Allow systems to communicate without dependencies.

---

Required functionality:

```
Subscribe

Unsubscribe

Publish
```

---

# 9. Event Rules

Events represent:

```
Something Happened
```

Examples:

```
PlayerDiedEvent

EnemyKilledEvent

LootCollectedEvent

LevelCompletedEvent
```

---

Events must not contain:

```
Gameplay Logic
```

---

# 10. Logger System

Create:

```
ArthurLogger.cs
```

Location:

```
Core/Logging/
```

---

Purpose:

Provide consistent debugging.

---

Categories:

```
Core

Combat

World

AI

Loot

Save

UI
```

---

Required methods:

```
Log()

Warning()

Error()
```

---

# 11. Game Configuration

Create:

```
GameConfigSO.cs
```

Location:

```
Core/Configuration/
```

---

Type:

```
ScriptableObject
```

---

Purpose:

Store global settings.

---

Initial values:

```
Game Version

Default Scene

Debug Mode

Target FPS
```

---

# 12. Game Manager

Create:

```
GameManager.cs
```

Location:

```
Core/
```

---

Purpose:

Controls application state.

---

Responsibilities:

```
Game State

Initialisation

Shutdown
```

---

Game states:

```
Booting

MainMenu

Playing

Paused

Loading
```

---

# 13. Bootstrap System

Create:

```
GameBootstrap.cs
```

Location:

```
Core/Bootstrap/
```

---

Attach to:

```
BootstrapManager
```

GameObject.

---

Responsibilities:

On startup:

```
Load Configuration

Create Services

Initialise Systems

Load Main Menu
```

---

# 14. Startup Sequence

Execution order:

```
Unity Awake()

↓

GameBootstrap.Initialize()

↓

Create Services

↓

Register Services

↓

Load Configuration

↓

Load Main Menu
```

---

# 15. Scene Service

Create:

```
SceneService.cs
```

Location:

```
Services/Scene/
```

---

Purpose:

Handle all scene transitions.

---

Required functions:

```
LoadScene()

LoadSceneAsync()

ReloadScene()
```

---

# 16. Scene Loading Rules

Scenes must never be loaded directly using:

```
SceneManager.LoadScene()
```

outside the Scene Service.

---

All loading goes through:

```
SceneService
```

---

# 17. Initial Services

Create placeholders:

```
SceneService

AudioService

InputService

SaveService
```

---

Each implements:

```
IService
```

---

# 18. Bootstrap Scene Setup

Open:

```
00_Bootstrap
```

---

Create:

```
BootstrapManager
```

---

Attach:

```
GameBootstrap.cs
```

---

Create:

```
GameConfig
```

asset.

---

# 19. Main Menu Connection

After successful startup:

Load:

```
01_MainMenu
```

---

# 20. Error Handling

If startup fails:

System must:

```
Log Error

Prevent Crash

Display Debug Information
```

---

# 21. Testing Requirements

The AI agent must test:

---

## Test 1

Launch Unity.

Expected:

```
No compile errors
```

---

## Test 2

Run Bootstrap Scene.

Expected:

```
Services initialise
```

---

## Test 3

Load Main Menu.

Expected:

```
Scene transition succeeds
```

---

## Test 4

Break configuration intentionally.

Expected:

```
Error is logged
```

---

# 22. Code Quality Requirements

All scripts require:

```
XML Documentation

Clear Naming

No Hardcoded Values

Single Responsibility
```

---

# 23. AI Agent Rules

The implementation agent must:

Before coding:

```
Read UNITY-001

Read UNITY-002

Read SYS-038
```

---

During coding:

```
Follow namespaces

Create only required files

Do not modify unrelated systems
```

---

After coding:

```
Run Unity tests

Document changes

Commit
```

---

# 24. Git Commit

Required commit:

```
Core:
Implemented Unity foundation framework
```

---

# 25. Acceptance Criteria

IMP-001 is complete when:

✓ Project launches

✓ Bootstrap scene works

✓ Services initialise

✓ Events work

✓ Configuration loads

✓ Scene transitions work

✓ Logging works

✓ AI agents have a stable foundation

---

# Definition Of Done

The Core Framework is complete when the Unity project has a functioning nervous system capable of supporting all future gameplay systems.
