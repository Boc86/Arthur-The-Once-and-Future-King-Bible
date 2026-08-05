---
title: UI UX and Player Experience System
document_id: SYS-015
version: 0.1
status: Draft
owner: UX Direction
engine: Unity 6 LTS
dependencies:
  - SYS-001 Character Framework
  - SYS-002 Combat System
  - SYS-003 Loot System
  - SYS-005 Camelot Meta Progression
  - SYS-007 Quest And Narrative System
  - SYS-009 Inventory And Equipment System
  - SYS-013 AI Development And MCP Asset Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-015 UI/UX & Player Experience System

Version 0.1

---

# 1. Purpose

The UI/UX System defines how the player interacts with the world.

The goal is to create an interface that feels:

- Medieval
- Magical
- Powerful
- Clear
- Responsive

The player should always understand:

- Where they are
- What they can do
- How strong they are
- What choices they have

---

# 2. Core Philosophy

The core principle:

> The interface should reveal the legend, not interrupt it.

The UI should feel like:

A magical manuscript belonging to Camelot.

---

# 3. Design Pillars Supported

✓ Restore The Legend

✓ Combat Is Simple, Deep And Rewarding

✓ Quality Over Quantity

✓ Immersive World

✓ Accessibility

---

# 4. UI Visual Direction

The UI combines:

- Medieval manuscripts
- Arthurian symbols
- Magical interfaces
- Dark fantasy presentation

---

# 5. UI Design Language

Visual elements:

```
Parchment

Gold

Stone

Steel

Ancient Symbols

Magical Runes
```

---

# 6. Player Interface Overview

The player HUD contains:

```
Health

Resource

Skill Bar

Ultimate

Mini Map

Quest Tracker

Status Effects

Loot Notifications
```

---

# 7. Main HUD

The main HUD is designed for combat clarity.

Required:

```
Character Status

↓

Combat Information

↓

Abilities

↓

World Information
```

---

# 8. Health System Display

Health display includes:

- Current health
- Maximum health
- Shield/barrier effects
- Healing effects

---

Visual style:

Arthurian crest shaped health bar.

---

# 9. Resource Display

Each character has a unique resource.

Examples:

---

Arthur:

Authority.

---

Merlin:

Arcane Energy.

---

Lancelot:

Momentum.

---

The UI changes depending on the character.

---

# 10. Skill Bar

The skill bar displays:

```
Basic Attack

Q

W

E

R

Ultimate
```

---

Each ability shows:

- Icon
- Cooldown
- Resource cost
- Upgrade indicators

---

# 11. Ability Feedback

The UI communicates:

Ready:

Bright icon.

---

Cooldown:

Darkened icon.

---

Unavailable:

Disabled state.

---

Ultimate Ready:

Special animation.

---

# 12. Loot Interface

Loot must feel exciting.

Loot display:

```
Item Name

Rarity

Stats

Affixes

Comparison

Lore
```

---

# 13. Loot Rarity Presentation

Colours:

Common:

Simple.

---

Rare:

Enhanced.

---

Epic:

Powerful presentation.

---

Legendary:

Unique animation.

---

# 14. Item Comparison

When viewing loot:

Display:

```
Current Item

↓

New Item

↓

Changes
```

---

Show:

- Damage difference
- Defence difference
- Skill effects
- Build impact

---

# 15. Inventory Interface

Inventory should support:

- Fast decisions
- Filtering
- Comparison
- Organisation

---

Required features:

```
Sort

Filter

Equip

Salvage

Favourite

Lock
```

---

# 16. Character Screen

Shows:

```
Character Model

Equipment

Stats

Skills

Mastery

Lore
```

---

# 17. Character Model Viewer

Requirements:

- Rotate character
- Preview equipment
- View effects

---

# 18. Skill Interface

Displays:

```
Abilities

Ranks

Upgrades

Synergies

Mastery Paths
```

---

# 19. Camelot Management Interface

The player's kingdom screen.

Displays:

```
Round Table

Buildings

Resources

Knights

Research
```

---

# 20. Quest Interface

Quest tracker displays:

```
Current Objective

Location

Rewards

Story Context
```

---

# 21. Codex Interface

The Codex contains:

```
Characters

Enemies

Locations

Items

History

Lore
```

---

# 22. World Map

The map displays:

```
Regions

Discovered Areas

Objectives

Events

Camelot Location
```

---

# 23. Procedural Run Information

During a run display:

```
Current Region

Difficulty

Corruption Level

Objectives

Rewards
```

---

# 24. Death Screen

Death is a narrative moment.

The screen shows:

```
Cause Of Death

Run Summary

Rewards Earned

Meta Progression

Revival
```

---

# 25. Guinevere Revival Screen

Unique system.

When Arthur dies:

Guinevere appears.

The screen becomes:

```
Memory

↓

Reflection

↓

Revival
```

---

# 26. Dialogue Interface

Dialogue supports:

```
Character Portrait

Text

Choices

Relationship Indicators
```

---

# 27. Accessibility Features

Required:

- Text scaling
- Subtitle options
- Colour blind modes
- Controller support
- Remappable controls
- UI scaling

---

# 28. Controller Support

The game must support:

- Keyboard and mouse
- Xbox controllers
- PlayStation controllers
- Steam Deck style controls

---

# 29. UI Architecture

Unity implementation:

```
Canvas

↓

UI Controllers

↓

Data Binding

↓

Systems
```

---

# 30. UI Systems

Required:

```
HUDManager

InventoryUI

CharacterUI

SkillUI

QuestUI

MapUI

DialogueUI

CodexUI
```

---

# 31. Data Driven UI

UI uses:

```
UIElementDefinition

TooltipDefinition

IconDefinition
```

---

# 32. AI Asset Requirements

AI-generated UI assets require:

```
Icon

Background

Frame

Animation

Resolution

Usage
```

---

# 33. UI Naming Convention

Format:

```
UI_CATEGORY_DESCRIPTION_VERSION
```

Examples:

```
UI_ICON_EXCALIBUR_V001

UI_FRAME_LEGENDARY_V001

UI_PANEL_CAMELot_V001
```

---

# 34. Performance Requirements

UI must:

- Avoid unnecessary updates
- Use pooling
- Minimise canvas rebuilds
- Support controller navigation

---

# 35. AI Implementation Rules

AI agents must:

- Maintain consistent UI style
- Avoid clutter
- Prioritise gameplay readability
- Test all interfaces

---

# 36. Testing Requirements

Test:

## Readability

Can players understand information?

---

## Navigation

Can all menus be accessed?

---

## Controller

Does input work?

---

## Performance

Does UI affect FPS?

---

# 37. Future Expansion

Possible additions:

- Custom UI themes
- Player-made banners
- Voice controlled menus
- Dynamic UI based on reputation
- Animated magical Codex

---

# Definition Of Done

UI/UX System complete when:

✓ HUD works

✓ Inventory works

✓ Character screens work

✓ Skills display correctly

✓ Quest tracking works

✓ Map works

✓ Controller support works

✓ Accessibility options exist

✓ AI agents can extend safely
