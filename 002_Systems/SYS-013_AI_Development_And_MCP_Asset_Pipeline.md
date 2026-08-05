---
title: AI Development and MCP Asset Pipeline
document_id: SYS-013
version: 0.1
status: Draft
owner: Technical Direction
engine: Unity 6 LTS
dependencies:
  - PROJ-005 AI Development Strategy
  - SYS-012 Character Animation And Visual Identity System
  - All Gameplay Systems
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-013 AI Development & MCP Asset Pipeline

Version 0.1

---

# 1. Purpose

This document defines how AI agents will participate in the creation of Arthur: The Once and Future King.

The project is designed from the beginning to support an AI-assisted development workflow.

AI agents are not used as replacements for design.

They are treated as specialised development partners.

---

# 2. Core Philosophy

The core principle:

> Humans define the legend. AI helps build the kingdom.

AI agents are responsible for:

- Implementation
- Asset generation
- Testing
- Documentation
- Iteration
- Optimisation

Humans remain responsible for:

- Creative direction
- Approval
- Quality standards
- Final decisions

---

# 3. AI Development Model

The project follows:

```
Design

↓

Specification

↓

AI Implementation

↓

Automated Testing

↓

Human Review

↓

Integration

↓

Documentation Update
```

---

# 4. AI Agent Roles

The project uses specialised agents.

---

# 4.1 Lead Architect Agent

Purpose:

Maintain system integrity.

Responsibilities:

- Review architecture
- Prevent duplicate systems
- Enforce design patterns
- Manage dependencies

---

# 4.2 Gameplay Engineer Agent

Responsibilities:

Creates:

- Combat systems
- Skills
- Character systems
- Progression

---

# 4.3 Unity Engineer Agent

Responsibilities:

Handles:

- Unity project structure
- Scene setup
- Prefabs
- Addressables
- Build systems

---

# 4.4 Art Director Agent

Responsibilities:

Maintains:

- Style consistency
- Asset standards
- Visual identity

---

# 4.5 Asset Generation Agent

Creates:

- Characters
- Weapons
- Armour
- Environment pieces
- VFX assets

---

# 4.6 QA Agent

Responsibilities:

- Automated testing
- Bug detection
- Performance checks

---

# 4.7 Documentation Agent

Maintains:

- Game bible
- Technical documentation
- Change logs

---

# 5. MCP Integration Philosophy

Model Context Protocol servers provide controlled access to project tools.

AI agents should never directly modify unknown systems.

All changes flow through approved MCP tools.

---

# 6. MCP Server Categories

The project may use:

```
Unity MCP

GitHub MCP

File System MCP

Asset Generation MCP

Blender MCP

Testing MCP

Documentation MCP
```

---

# 7. Unity MCP Responsibilities

Unity MCP provides:

- Scene creation
- Game object management
- Component editing
- Script execution
- Build testing

---

# 8. GitHub MCP Responsibilities

GitHub integration manages:

- Repository access
- Branches
- Pull requests
- Code review
- Issue tracking

---

# 9. Blender / 3D MCP Responsibilities

Used for:

- Procedural modelling
- Mesh generation
- Rigging assistance
- Asset optimisation

---

# 10. Asset Generation Pipeline

Every asset follows:

```
Design Requirement

↓

Asset Specification

↓

AI Generation

↓

Validation

↓

Unity Import

↓

Prefab Creation

↓

Documentation
```

---

# 11. Asset Specification Format

Every generated asset requires:

```
Asset ID

Name

Purpose

Category

Reference Images

Style Requirements

Technical Requirements

Dependencies
```

---

# 12. Asset Categories

Initial categories:

```
Characters

Weapons

Armour

Environment

Props

Enemies

VFX

UI

Audio
```

---

# 13. Asset Quality Gates

Every asset must pass:

## Visual Review

Does it match the style?

---

## Technical Review

Does it work in Unity?

---

## Performance Review

Does it meet budgets?

---

## Documentation Review

Is it properly recorded?

---

# 14. AI Code Generation Rules

AI-generated code must:

- Follow Unity conventions
- Use existing architecture
- Avoid unnecessary complexity
- Include comments
- Include tests

---

# 15. Code Architecture Rules

Preferred patterns:

```
Component Based Design

Scriptable Objects

Event Driven Systems

Data Driven Configuration
```

---

Avoid:

```
Large Monolithic Classes

Hardcoded Values

Duplicate Systems
```

---

# 16. Feature Development Workflow

Every feature follows:

```
Create Design Document

↓

Create Task

↓

AI Implementation

↓

Testing

↓

Code Review

↓

Merge
```

---

# 17. Git Workflow

Repository structure:

```
main

↓

development

↓

feature branches
```

---

Branches:

Example:

```
feature/combat-damage-system

feature/arthur-character

feature/procedural-dungeons
```

---

# 18. Commit Standards

Commits should describe changes.

Example:

Good:

```
Add elemental damage calculation system
```

Bad:

```
Update stuff
```

---

# 19. Pull Request Requirements

Every PR requires:

```
Description

Systems Changed

Testing Completed

Screenshots

Known Issues
```

---

# 20. Automated Testing Pipeline

Every change should run:

```
Compile Check

↓

Unit Tests

↓

Play Mode Tests

↓

Build Test

↓

Performance Check
```

---

# 21. Unity Project Structure

Required:

```
Assets/

├── Art

├── Audio

├── Materials

├── Prefabs

├── Scenes

├── Scripts

├── ScriptableObjects

├── Tests

└── Resources
```

---

# 22. Script Organisation

```
Scripts/

├── Core

├── Characters

├── Combat

├── AI

├── Items

├── World

├── UI

└── Systems
```

---

# 23. Data Organisation

```
ScriptableObjects/

├── Characters

├── Skills

├── Items

├── Enemies

├── Quests

├── Worlds
```

---

# 24. AI Development Safety Rules

AI agents must:

- Never delete systems without approval
- Never rewrite architecture unnecessarily
- Never bypass validation
- Never create undocumented assets

---

# 25. Human Approval Points

Human approval required for:

## New Systems

Example:

Adding multiplayer.

---

## Major Architecture Changes

Example:

Changing rendering pipeline.

---

## Art Direction Changes

Example:

Changing visual style.

---

## Story Changes

Example:

Changing Arthur's ending.

---

# 26. AI Memory System

Agents should maintain:

```
Project Context

System Dependencies

Known Decisions

Technical Constraints

Art Guidelines
```

---

# 27. Documentation Synchronisation

Every implementation change updates:

```
CHANGELOG.md

ROADMAP.md

Relevant SYS Document

Technical Notes
```

---

# 28. Build Automation

Required automated builds:

```
Development Build

Testing Build

Release Build
```

---

# 29. Performance Monitoring

Track:

```
FPS

Memory

CPU Usage

GPU Usage

Loading Times
```

---

# 30. Future Expansion

Possible additions:

- Autonomous testing agents
- AI play testers
- Procedural quest writers
- AI balance simulation
- Automated trailer generation

---

# Definition Of Done

AI Development Pipeline complete when:

✓ AI agents can access project safely

✓ Assets follow standards

✓ Code follows architecture

✓ Tests run automatically

✓ Git workflow functions

✓ Documentation stays updated

✓ Human approvals exist
