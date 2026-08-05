---
title: Project Structure And Documentation Organisation
document_id: PRJ-001
version: 0.1
status: Draft
owner: Project Architecture
engine: Unity 6 LTS
dependencies:
  - SYS-038 Unity Technical Implementation Architecture System
  - SYS-039 AI Agent Game Development Execution Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# PRJ-001 Project Structure And Documentation Organisation

Version 0.1

---

# 1. Purpose

This document defines the organisation of the Arthur: The Once and Future King project repository.

The purpose is to provide a clear structure for:

- Human developers
- AI development agents
- Asset generation systems
- Documentation systems
- Testing workflows

---

# 2. Core Principle

The repository is organised around the following separation:

```
What The Game Is

↓

How The Game Works

↓

How The Game Is Built

↓

How The Game Is Tested
```

---

# 3. Repository Overview

Root structure:

```
Arthur-The-Once-and-Future-King-Bible/

000_Project

001_Unity

002_Systems

003_Content

004_World

005_Characters

006_Enemies

007_Bosses

008_Loot

009_ProceduralGeneration

010_ArtBible

011_AudioBible

012_UIUX

013_AI_Agents

014_Testing

015_Production

Assets

Diagrams

Templates
```

---

# 4. Folder Responsibilities

---

# 000_Project

## Purpose

Contains high-level project definition.

Defines:

```
Vision

Goals

Scope

Planning

Standards
```

---

Contains:

```
Game Overview

Project Structure

Feature List

Risk Management

Development Philosophy
```

---

# 5. 001_Unity

## Purpose

Contains all Unity implementation documentation.

Defines:

```
Technical Architecture

Code Structure

Unity Configuration

Implementation Plans
```

---

Contains:

```
Architecture

Implementation

Technical Documentation

Project Setup
```

---

# 6. 002_Systems

## Purpose

Contains game system design documentation.

Defines:

```
Gameplay Mechanics

Rules

Interactions

Player Experience
```

---

Examples:

```
Combat

Loot

Progression

World Generation

AI
```

---

# 7. 003_Content

## Purpose

Contains narrative and gameplay content.

Defines:

```
Stories

Quests

Dialogue

Events
```

---

Contains:

```
Main Story

Side Quests

NPC Dialogue

Cinematics
```

---

# 8. 004_World

## Purpose

Defines the game world.

Contains:

```
Regions

Locations

Biomes

Maps

Lore Locations
```

---

# 9. 005_Characters

## Purpose

Defines all playable and important characters.

Contains:

```
Arthur

Knights

Merlin

Morgana

Guinevere

NPCs
```

---

Each character requires:

```
Biography

Gameplay Identity

Abilities

Visual Identity

Audio Identity
```

---

# 10. 006_Enemies

## Purpose

Defines standard enemies.

Contains:

```
Enemy Types

Factions

Behaviour

Abilities

Rewards
```

---

# 11. 007_Bosses

## Purpose

Defines major encounters.

Each boss requires:

```
Lore

Arena

Mechanics

Phases

Rewards
```

---

# 12. 008_Loot

## Purpose

Defines the itemisation system.

Contains:

```
Weapons

Armour

Affixes

Rarities

Legendary Items
```

---

# 13. 009_ProceduralGeneration

## Purpose

Defines procedural content creation.

Contains:

```
World Generation

Dungeon Generation

Encounter Generation

Loot Generation
```

---

# 14. 010_ArtBible

## Purpose

Defines visual identity.

Contains:

```
Characters

Environment

Weapons

Materials

Lighting
```

---

# 15. 011_AudioBible

## Purpose

Defines audio identity.

Contains:

```
Music

Sound Effects

Voice

Ambience
```

---

# 16. 012_UIUX

## Purpose

Defines player interaction design.

Contains:

```
HUD

Menus

Inventory

Accessibility

Controls
```

---

# 17. 013_AI_Agents

## Purpose

Defines AI development workflows.

Contains:

```
Agent Roles

MCP Workflows

Prompt Templates

Coding Standards

Asset Pipelines
```

---

# 18. AI Agent Rules

Every AI agent must:

Before working:

```
Read Relevant Documentation

Understand Existing Systems

Create A Plan
```

---

During work:

```
Follow Architecture

Avoid Duplication

Document Changes
```

---

After work:

```
Test

Report Results

Commit Changes
```

---

# 19. 014_Testing

## Purpose

Defines quality assurance.

Contains:

```
Test Plans

Bug Reports

Performance Testing

Balance Testing
```

---

# 20. 015_Production

## Purpose

Defines development management.

Contains:

```
Roadmaps

Milestones

Tasks

Releases
```

---

# 21. Assets

## Purpose

Contains generated project assets.

Examples:

```
Concept Art

Reference Images

Generated Models

Textures
```

---

# 22. Diagrams

## Purpose

Contains visual documentation.

Examples:

```
Architecture Diagrams

Flowcharts

System Maps
```

---

# 23. Templates

## Purpose

Contains reusable documentation templates.

Examples:

```
System Template

Character Template

Enemy Template

Quest Template
```

---

# 24. Document Naming Convention

All documents follow:

```
PREFIX-ID_Title.md
```

---

Examples:

System:

```
SYS-001_Combat_System.md
```

Implementation:

```
IMP-001_Project_Setup.md
```

Project:

```
PRJ-001_Project_Structure.md
```

---

# 25. Version Control Rules

Every significant change requires:

```
Commit

Description

Documentation Update
```

---

# 26. AI Documentation Rule

AI agents must update documentation when:

```
Systems Change

Architecture Changes

New Features Added
```

---

# 27. Source Of Truth

Priority order:

```
1. Project Bible

2. System Documents

3. Implementation Documents

4. Code

5. Assets
```

---

# 28. Conflict Resolution

When conflicts occur:

```
Bible overrides code

Systems override implementation

Architecture overrides shortcuts
```

---

# 29. Future Expansion

This structure supports:

```
Multiple Developers

Multiple AI Agents

Large Content Updates

Long-Term Development
```

---

# Definition Of Done

Project Structure complete when:

✓ Every folder has a clear purpose

✓ AI agents know where information belongs

✓ Documentation remains organised

✓ Development can scale safely

✓ The repository acts as the game's source of truth
