---
title: AI Agent Game Development Execution Pipeline
document_id: SYS-039
version: 0.1
status: Draft
owner: Technical Production
engine: Unity 6 LTS
dependencies:
  - SYS-013 AI Development And MCP Asset Pipeline
  - SYS-024 Unity Project Architecture And Code Standards
  - SYS-025 AI Development Workflow And MCP Operations
  - SYS-038 Unity Technical Implementation Architecture System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-039 AI Agent Game Development Execution Pipeline

Version 0.1

---

# 1. Purpose

This document defines how AI agents participate in the development of Arthur: The Once and Future King.

The goal is to create a repeatable AI-assisted development pipeline capable of:

- Writing Unity code
- Creating game assets
- Testing systems
- Managing documentation
- Maintaining quality

---

# 2. Core Philosophy

The core principle:

> AI agents are members of the development team, not code generators.

Every agent must understand:

```
The Vision

The Architecture

The Constraints

The Player Experience
```

---

# 3. AI Development Structure

The AI team consists of specialised agents.

```
Lead Architect Agent

Gameplay Engineer Agent

World Generation Agent

Combat Agent

Narrative Agent

Art Agent

Audio Agent

QA Agent

Build Agent
```

---

# 4. Lead Architect Agent

Responsibilities:

```
Architecture Decisions

System Integration

Code Review

Technical Planning
```

---

Must approve:

```
Core System Changes

New Dependencies

Architecture Changes
```

---

# 5. Gameplay Engineer Agent

Responsibilities:

```
Player Controller

Combat

Abilities

Progression

Inventory
```

---

# 6. World Generation Agent

Responsibilities:

```
Procedural Worlds

Biome Generation

Dungeon Layouts

Encounters
```

---

# 7. Combat Agent

Responsibilities:

```
Damage Systems

Skills

Enemy Behaviour

Boss Mechanics
```

---

# 8. Narrative Agent

Responsibilities:

```
Quests

Dialogue

Lore

Characters
```

---

# 9. Art Agent

Responsibilities:

```
3D Models

Textures

Animations

UI Assets
```

---

# 10. Audio Agent

Responsibilities:

```
Music

Sound Effects

Voice Assets

Ambient Audio
```

---

# 11. QA Agent

Responsibilities:

```
Testing

Bug Discovery

Performance Checks

Balance Testing
```

---

# 12. Build Agent

Responsibilities:

```
Unity Builds

Platform Validation

Package Management
```

---

# 13. Agent Development Loop

Every task follows:

```
Understand

↓

Plan

↓

Implement

↓

Test

↓

Document

↓

Commit
```

---

# 14. Understanding Phase

Before writing code:

Agent must read:

```
Relevant Bible Documents

Existing Code

Architecture Rules
```

---

# 15. Planning Phase

Agent creates:

```
Implementation Plan

Files Changed

Dependencies

Testing Strategy
```

---

# 16. Implementation Phase

Agent:

```
Creates Code

Creates Assets

Updates Documentation
```

---

# 17. Testing Phase

Agent validates:

```
Compilation

Runtime Behaviour

Performance

Integration
```

---

# 18. Documentation Phase

Every feature requires:

```
Implementation Notes

Known Issues

Future Improvements
```

---

# 19. Git Workflow

All work happens through branches.

Example:

```
feature/combat-damage-pipeline
```

---

# 20. Commit Requirements

Every commit contains:

```
What Changed

Why It Changed

Testing Performed
```

---

# 21. Pull Request Workflow

Before merging:

Required:

```
Code Review

Test Results

Documentation Update
```

---

# 22. MCP Server Usage

AI agents may access:

```
Git MCP

Unity MCP

Asset MCP

Documentation MCP

Testing MCP
```

---

# 23. Unity MCP Responsibilities

Unity MCP provides:

```
Project Inspection

Scene Editing

Component Creation

Prefab Management

Testing
```

---

# 24. Asset MCP Responsibilities

Asset MCP provides:

```
Model Generation

Texture Generation

Material Creation

Animation Support
```

---

# 25. Documentation MCP Responsibilities

Maintains:

```
Bible

API Documentation

Implementation Notes
```

---

# 26. Asset Creation Pipeline

Every asset follows:

```
Concept

↓

Generation

↓

Validation

↓

Optimization

↓

Unity Import
```

---

# 27. 3D Asset Rules

Every model requires:

```
Purpose

Poly Budget

Texture Resolution

LOD Requirements
```

---

# 28. Character Asset Pipeline

Process:

```
Concept Art

↓

Character Model

↓

Rigging

↓

Animation

↓

Prefab Creation
```

---

# 29. Weapon Asset Pipeline

Process:

```
Design

↓

Model

↓

Materials

↓

Effects

↓

Loot Integration
```

---

# 30. Environment Asset Pipeline

Process:

```
Biome Definition

↓

Modular Pieces

↓

Materials

↓

Placement Rules
```

---

# 31. Code Generation Rules

AI generated code must:

```
Follow Existing Patterns

Use Existing Systems

Avoid Duplication

Include Comments
```

---

# 32. Forbidden AI Behaviour

Agents must not:

```
Rewrite Systems Without Approval

Create Duplicate Managers

Ignore Architecture

Remove Tests
```

---

# 33. Testing Automation

Automated checks:

```
Unity Compilation

Unit Tests

Play Mode Tests

Performance Tests
```

---

# 34. Bug Fix Pipeline

Process:

```
Bug Report

↓

Reproduce

↓

Identify Cause

↓

Fix

↓

Test

↓

Document
```

---

# 35. Balance Agent

Specialised agent monitors:

```
Damage

Enemy Difficulty

Loot Economy

Progression
```

---

# 36. Content Generation Rules

Procedural content must respect:

```
Lore

Art Direction

Gameplay Purpose

Performance Limits
```

---

# 37. Human Approval Gates

Human review required for:

```
Core Architecture

Major Story Changes

New Systems

Final Art Direction
```

---

# 38. Development Metrics

Track:

```
Features Completed

Bugs Found

Tests Passed

Assets Created

Build Success
```

---

# 39. Autonomous Development Limits

AI agents may:

```
Implement Features

Create Assets

Write Tests

Improve Systems
```

---

AI agents may not:

```
Change Vision

Alter Core Lore

Remove Player Choices
```

---

# 40. Future Expansion

Possible additions:

```
Fully Autonomous Feature Teams

AI Playtesters

AI Balance Simulation

Automated Release Pipeline
```

---

# Definition Of Done

AI Development Pipeline complete when:

✓ Agents understand their roles

✓ Development is repeatable

✓ Assets can be generated consistently

✓ Code quality is maintained

✓ Git history remains clean

✓ AI can scale production safely
