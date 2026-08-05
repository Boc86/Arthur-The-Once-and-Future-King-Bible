---
title: Project Charter
document_id: PROJ-001
version: 0.1
status: Draft
owner: Creative Director
engine: Unity 6 LTS
dependencies:
  - None
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King
## Project Charter

Version 0.1

---

# 1. Project Identity

## Official Title

**Arthur: The Once and Future King**

Working title. Final title may change during production.

---

## Genre

Arthur: The Once and Future King is a:

- Isometric 3D Action RPG
- Roguelite
- Loot-driven progression game
- Character collection RPG
- Procedurally generated adventure game

---

## Engine

The game will be developed exclusively using:

**Unity 6 LTS**

Primary technologies:

- C#
- Universal Render Pipeline (URP)
- Unity Input System
- Cinemachine
- Unity AI Navigation
- Addressables
- Scriptable Objects
- Timeline
- Shader Graph
- Visual Effect Graph

---

# 2. Project Purpose

Arthur: The Once and Future King aims to create a definitive Arthurian action RPG experience.

The game is not a direct retelling of Arthurian mythology.

Instead, it presents a new interpretation:

> A legend that has been shattered and must be rebuilt.

The player does not simply defeat enemies and collect equipment.

The player restores a broken history.

Every battle, every Knight recruited, every relic recovered, and every decision contributes towards rebuilding Camelot and restoring Arthur's rightful place as King of England.

---

# 3. Core Fantasy

The player fantasy is:

> "I am Arthur Pendragon, the once and future king, fighting through fractured versions of Britain to restore the greatest legend the world has ever known."

The player should feel:

- Powerful
- Responsible
- Legendary
- Hopeful
- Tested
- Progressively more like a king

---

# 4. The Central Narrative Concept

The Arthurian legend has been broken.

At the end of Arthur's original life, Mordred's betrayal should have ended the story.

Instead, something went wrong.

Avalon fractured.

Time collapsed.

History split into countless possibilities.

Britain now exists as thousands of corrupted versions of itself.

Camelot has become a memory.

The Knights of the Round Table are scattered across broken timelines.

Only Guinevere remembers the true legend.

She repeatedly restores Arthur to life, sending him back into fractured histories.

Each death reveals another fragment of the truth.

Each victory repairs another piece of the legend.

---

# 5. Design Philosophy

The game is built around one central statement:

> Legends are living things.

A legend survives because people believe in it.

The player's actions determine what kind of legend survives.

---

# 6. Development Philosophy

This project is designed as an AI-assisted development project.

Human designers provide:

- Vision
- Direction
- Approval
- Creative decisions

AI agents provide:

- Implementation
- Asset generation
- Testing assistance
- Documentation assistance
- Content generation

However:

The Game Bible is the authority.

AI agents implement approved designs.

AI agents do not independently redesign systems.

---

# 7. Production Rules

## Rule 1

Systems must exist before content.

Example:

Correct:

```
Enemy Framework

↓

Enemy Components

↓

Enemy Types

↓

Specific Enemy
```

Incorrect:

```
Create Black Knight

↓

Create custom systems for Black Knight
```

---

## Rule 2

Everything possible should be data-driven.

Gameplay data should exist separately from code.

Examples:

- Weapons
- Armour
- Skills
- Enemies
- NPCs
- Quests
- Dialogue
- Procedural generation rules

---

## Rule 3

Every system must support expansion.

The first implementation should not block future content.

Example:

The first Knight should use the same architecture as the thirteenth Knight.

---

## Rule 4

Every mechanic must reinforce the fantasy.

Features should answer:

"Does this help the player feel like they are restoring Arthur's legend?"

If not, reconsider the feature.

---

# 8. Project Success Criteria

The project succeeds when:

## Gameplay

- Combat feels responsive and satisfying.
- Each Knight feels unique.
- Builds feel meaningfully different.
- Loot constantly creates interesting choices.

---

## World

- Procedural generation creates memorable adventures.
- Britain feels alive.
- Camelot visibly evolves.
- The player sees the impact of their actions.

---

## Narrative

- Arthurian mythology feels respected.
- The story emerges naturally from gameplay.
- The player creates their own version of Arthur's legend.

---

## Technology

- The Unity project remains maintainable.
- Systems remain modular.
- AI agents can safely contribute.
- New content can be added without rewriting existing systems.

---

# 9. Definition of Done

A feature is considered complete only when:

## Documentation

- Design document exists.
- Dependencies are documented.
- Implementation requirements are clear.

## Development

- Code is implemented.
- Tests exist where practical.
- Performance requirements are met.

## Integration

- Save system works.
- UI support exists.
- Audio/VFX hooks exist.
- AI/content pipelines are supported.

## Review

- Feature supports project pillars.
- Feature does not introduce unnecessary complexity.

---

# 10. Final Statement

Arthur: The Once and Future King is a game about restoring a legend.

The player begins as a fallen king.

They end as the legend history promised.

Every death.

Every victory.

Every Knight recruited.

Every piece of Camelot rebuilt.

Moves Arthur closer towards becoming:

**The Once and Future King.**
