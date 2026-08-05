---
title: UI HUD Framework Implementation
document_id: IMP-009
version: 0.1
status: Draft
owner: UI Architecture
engine: Unity 6 LTS
dependencies:
  - IMP-001 Core Framework Implementation
  - IMP-004 Combat Framework Implementation
  - IMP-006 Loot System Implementation
  - IMP-007 Character Progression Implementation
  - IMP-008 First Playable Prototype Milestone
  - SYS-012 UI UX And Accessibility System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-009 UI HUD Framework Implementation

Version 0.1

---

# 1. Purpose

This document defines the foundation user interface framework.

The UI system provides the player with:

```
Gameplay Information

Character Status

Combat Feedback

Interaction Information

Navigation
```

---

# 2. UI Philosophy

The interface should feel:

```
Medieval

Elegant

Readable

Minimal

Immersive
```

---

# 3. UI Architecture

The UI pipeline:

```
Gameplay Systems

↓

Events

↓

UI Controllers

↓

UI Elements

↓

Player Display
```

---

# 4. Folder Structure

Create:

```
Assets/Game/UI/
```

Structure:

```
UI/

├── Core

├── HUD

├── Inventory

├── Menus

├── Components

├── Widgets

└── Data
```

---

# 5. Required Scripts

Create:

```
UIManager.cs

HUDController.cs

HealthBarWidget.cs

ExperienceBarWidget.cs

AbilityBarWidget.cs

InteractionPromptWidget.cs

DamageNumberController.cs
```

---

# 6. UI Manager

Create:

```
UIManager.cs
```

Location:

```
UI/Core/
```

---

Purpose:

Controls global UI state.

---

Responsibilities:

```
Open UI

Close UI

Switch Screens

Manage Overlays
```

---

# 7. Canvas Architecture

Create:

```
GameCanvas
```

---

Structure:

```
GameCanvas

├── HUD

├── Menus

├── Notifications

└── Effects
```

---

# 8. HUD Controller

Create:

```
HUDController.cs
```

---

Purpose:

Controls gameplay interface.

---

References:

```
Health

Experience

Abilities

Interaction
```

---

# 9. Health Bar

Create:

```
HealthBarWidget.cs
```

---

Displays:

```
Current Health

Maximum Health

Damage Changes
```

---

Updates from:

```
HealthComponent Events
```

---

# 10. Health Display Rules

Player health:

```
Always Visible
```

---

Enemy health:

```
Visible When Targeted

Visible During Combat
```

---

# 11. Experience Bar

Create:

```
ExperienceBarWidget.cs
```

---

Displays:

```
Current XP

Level Progress

Level Up State
```

---

Updates from:

```
Experience Events
```

---

# 12. Ability Bar

Create:

```
AbilityBarWidget.cs
```

---

Slots:

```
Primary Attack

Ability 1

Ability 2

Ability 3

Ability 4

Ultimate
```

---

Displays:

```
Icon

Cooldown

Resource Cost
```

---

# 13. Ability Cooldown Display

Cooldowns must show:

```
Remaining Time

Disabled State

Ready State
```

---

# 14. Interaction Prompt

Create:

```
InteractionPromptWidget.cs
```

---

Displays:

Examples:

```
Open Chest

Speak To Merlin

Pick Up Sword
```

---

# 15. Damage Numbers

Create:

```
DamageNumberController.cs
```

---

Displays:

```
Damage Amount

Critical Damage

Healing
```

---

Requirements:

```
Pool Objects

Animate Smoothly

Avoid Performance Issues
```

---

# 16. Event Integration

UI receives:

```
HealthChangedEvent

DamageDealtEvent

LevelUpEvent

LootCollectedEvent

InteractionAvailableEvent
```

---

# 17. Inventory UI Foundation

Create:

```
InventoryPanel.cs
```

---

Initial support:

```
Display Items

Select Item

Equip Item
```

---

# 18. Inventory Layout

Create:

```
Inventory Window

Item Grid

Equipment Slots

Description Panel
```

---

# 19. Menu Framework

Create:

```
MenuController.cs
```

---

Supports:

```
Main Menu

Inventory

Character

Settings

Pause
```

---

# 20. UI Input Rules

UI must support:

```
Mouse

Keyboard

Controller
```

---

# 21. Accessibility Foundation

Support:

```
Font Scaling

Colour Options

Controller Navigation

Subtitle Support
```

---

# 22. Visual Style

Initial theme:

```
Arthurian Medieval Fantasy
```

---

Elements:

```
Stone Frames

Royal Blue

Gold Accents

Parchment Panels
```

---

# 23. UI Data

Create:

```
UIThemeDataSO.cs
```

---

Contains:

```
Fonts

Colours

Sprites

Spacing
```

---

# 24. Testing Requirements

## Health Test

Expected:

```
HUD updates when damaged
```

---

## XP Test

Expected:

```
Bar updates after XP gain
```

---

## Ability Test

Expected:

```
Cooldown displays correctly
```

---

## Interaction Test

Expected:

```
Prompt appears correctly
```

---

# 25. Performance Requirements

UI must:

```
Avoid unnecessary rebuilding

Pool dynamic elements

Update only when values change
```

---

# 26. AI Agent Rules

Before coding:

```
Read IMP-004

Read IMP-006

Read IMP-007

Read SYS-012
```

---

During coding:

```
Use event-driven updates

Separate UI from gameplay logic

Avoid direct system dependencies
```

---

After coding:

```
Compile

Test HUD

Document Changes
```

---

# 27. Future Compatibility

UI must support:

```
Character Selection

Quest Journal

Map

Crafting

Dialogue

Settings

Multiplayer
```

---

# 28. Acceptance Criteria

IMP-009 complete when:

✓ HUD exists

✓ Health displays

✓ XP displays

✓ Abilities display

✓ Damage numbers work

✓ Interaction prompts work

✓ UI architecture supports future systems

---

# Definition Of Done

The UI HUD Framework is complete when the player can understand their character, combat state and world interactions without breaking immersion.
