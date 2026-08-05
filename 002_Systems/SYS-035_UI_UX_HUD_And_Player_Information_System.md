---
title: UI UX HUD And Player Information System
document_id: SYS-035
version: 0.1
status: Draft
owner: User Experience Design
engine: Unity 6 LTS
dependencies:
  - SYS-015 UI UX And Player Experience System
  - SYS-018 Camera And Player Control System
  - SYS-027 Player Experience And Game Loop System
  - SYS-030 Procedural Loot Generation And Itemization Advanced System
  - SYS-034 Character Progression Leveling And Meta Advancement System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-035 UI, UX, HUD & Player Information System

Version 0.1

---

# 1. Purpose

This document defines the complete player interface experience.

The UI must communicate:

- Combat information
- Progression
- Loot
- Story
- World state
- Character identity

The interface should feel like:

```
A legendary medieval manuscript brought to life.
```

---

# 2. Core Philosophy

The core principle:

> The UI is not a menu. It is Arthur's Chronicle.

Every interface element should reinforce:

- The legend
- The kingdom
- The player's journey

---

# 3. UI Design Pillars

The UI must be:

```
Readable

Elegant

Fast

Immersive

Consistent
```

---

# 4. Visual Direction

Style:

```
Arthurian Fantasy

Medieval Manuscript

Royal Architecture

Ancient Magic
```

---

# 5. Colour Language

Primary:

```
Royal Gold

Deep Blue

Stone Grey

Ancient White
```

---

Corruption states:

```
Dark Purple

Black

Crimson
```

---

# 6. UI Architecture

The interface consists of:

```
HUD

Menus

Panels

Screens

World UI
```

---

# 7. HUD Overview

Always visible:

```
Health

Resource

Skills

Ultimate

Mini Map

Objectives

Status Effects
```

---

# 8. Combat HUD

Designed for instant readability.

---

Contains:

```
Player Health

Resource Bar

Skill Slots

Cooldowns

Ultimate Meter

Enemy Health
```

---

# 9. Player Health Display

Visual:

A royal crest.

---

States:

```
Healthy

Wounded

Critical

Near Death
```

---

# 10. Resource Display

Each knight has unique presentation.

---

Arthur:

Royal sigil.

---

Merlin:

Arcane rune.

---

Lancelot:

Honour emblem.

---

# 11. Skill Bar

Displays:

```
4 Active Skills

Ultimate

Dodge

Potion
```

---

Each skill shows:

```
Icon

Cooldown

Resource Cost

Upgrade State
```

---

# 12. Ultimate Display

Ultimate should feel powerful.

Features:

```
Large Icon

Charge Animation

Audio Feedback

Screen Effect
```

---

# 13. Enemy UI

Enemy information:

```
Health Bar

Name

Level

Modifiers
```

---

Elite enemies display:

```
Affixes

Threat Level

Rewards
```

---

# 14. Boss UI

Boss interface:

```
Large Health Bar

Phase Indicators

Mechanic Warnings

Lore Title
```

---

Example:

```
Morgana's Champion

The Knight Who Lost His Oath
```

---

# 15. Damage Display

Damage numbers:

```
Normal Damage

Critical Damage

Healing

Status Effects
```

---

Rules:

Avoid clutter.

Prioritise important events.

---

# 16. Mini Map System

The minimap displays:

```
Player

Objectives

Events

Elite Enemies

Discovered Areas
```

---

# 17. World Map

Full map includes:

```
Britain Overview

Regions

Camelot

Progress

Discoveries
```

---

# 18. Quest Tracker

Displays:

```
Main Quest

Knight Quests

Events

Objectives
```

---

# 19. Inventory Interface

Inspired by:

```
Diablo

Path of Exile

Dark Fantasy RPGs
```

---

Contains:

```
Equipment

Items

Stats

Sorting

Comparison
```

---

# 20. Equipment Screen

Displays:

```
Character Model

Armour

Weapons

Stats

Abilities
```

---

# 21. Loot Comparison

When hovering an item:

Show:

```
Current Item

New Item

Stat Changes

Effects
```

---

# 22. Item Presentation

Legendary items receive:

```
Unique Border

Special Animation

Lore Text

Unique Sound
```

---

# 23. Character Sheet

Displays:

```
Level

Attributes

Skills

Mastery

Equipment
```

---

# 24. Skill Interface

Shows:

```
Abilities

Upgrades

Modifiers

Build Paths
```

---

# 25. Knight Selection Screen

Displays:

```
Knight Portrait

Lore

Abilities

Playstyle

Mastery
```

---

# 26. Camelot Interface

The kingdom screen allows:

```
Building Upgrades

Knight Management

Resources

Research
```

---

# 27. Death Screen

Important narrative moment.

The death screen is not failure.

It displays:

```
How Arthur Fell

Memories Recovered

Rewards Earned

Kingdom Progress
```

---

# 28. Resurrection Screen

Guinevere's scene.

Displays:

```
Dialogue

New Knowledge

Permanent Upgrades
```

---

# 29. Dialogue Interface

Style:

```
Illuminated Manuscript
```

Contains:

```
Character Portrait

Dialogue

Choices

Relationship Effects
```

---

# 30. Accessibility Features

Required:

```
Text Scaling

Colour Blind Modes

Subtitle Options

Controller Remapping

Difficulty Options
```

---

# 31. Controller Support

Designed for:

```
Keyboard

Mouse

Gamepad
```

---

# 32. Input Navigation

All menus must support:

```
Mouse

Keyboard

Controller
```

---

# 33. Technical Architecture

UI Data:

```
UIWidgetDefinition

MenuDefinition

TooltipDefinition

NotificationDefinition
```

---

Runtime:

```
UIManager

HUDController

InventoryUI

SkillUI

DialogueUI

MapUI
```

---

# 34. UI Animation Rules

Animations must be:

```
Fast

Purposeful

Readable
```

---

Examples:

Loot pickup:

```
Item rises

Glow appears

Notification displays
```

---

# 35. Notification System

Displays:

```
New Item

Quest Complete

Unlock

Achievement
```

---

# 36. AI Asset Generation Rules

AI agents creating UI assets must define:

```
Purpose

Resolution

Style

Usage Location
```

---

# 37. Performance Requirements

UI must support:

```
Dynamic Updates

Multiple Effects

Controller Input

Low Overhead
```

---

# 38. Testing Requirements

Test:

## Readability

Can players understand information?

---

## Speed

Can players access systems quickly?

---

## Immersion

Does UI fit the world?

---

## Accessibility

Can all players use it?

---

# 39. Future Expansion

Possible additions:

```
Tome Of Legends

Kingdom Chronicle

Custom UI Themes

Seasonal Events
```

---

# Definition Of Done

UI System complete when:

✓ Combat information is clear

✓ Loot is exciting

✓ Menus are intuitive

✓ UI reinforces Arthurian identity

✓ Controller support works

✓ AI can generate compatible UI assets
