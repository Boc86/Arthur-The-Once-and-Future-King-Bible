---
title: AI Agent Development Workflow and MCP Operations
document_id: SYS-025
version: 0.1
status: Draft
owner: AI Development Architecture
engine: Unity 6 LTS
dependencies:
  - SYS-013 AI Development And MCP Asset Pipeline
  - SYS-023 Art Direction And Asset Production System
  - SYS-024 Unity Project Architecture And Code Standards
  - All Gameplay Systems
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-025 AI Agent Development Workflow & MCP Operations

Version 0.1

---

# 1. Purpose

This document defines how AI agents participate in the development of Arthur: The Once and Future King.

The goal is to create a virtual development studio where specialised AI agents collaborate to build, test, and maintain the game.

---

# 2. Core Philosophy

The core principle:

> AI agents are not code generators. They are specialised members of the development team.

Each agent has:

- A role
- Responsibilities
- Limitations
- Validation requirements

---

# 3. AI Studio Structure

The development team consists of:

```
Creative Director Agent

↓

Lead Systems Architect Agent

↓

Gameplay Agents

↓

Art Agents

↓

Testing Agents

↓

Documentation Agents
```

---

# 4. Agent Roles

---

# 4.1 Director Agent

Purpose:

Maintain the vision of the game.

Responsibilities:

- Review major decisions
- Ensure lore consistency
- Prevent feature creep
- Prioritise tasks

---

# 4.2 Systems Architect Agent

Purpose:

Maintain technical integrity.

Responsibilities:

- Review architecture
- Define interfaces
- Prevent duplication
- Manage dependencies

---

# 4.3 Gameplay Programming Agent

Responsibilities:

Creates:

- Combat systems
- Skills
- Enemies
- Characters
- Progression

Must follow:

SYS-024.

---

# 4.4 World Generation Agent

Responsibilities:

Creates:

- Procedural zones
- Dungeon layouts
- Encounters
- Events

---

# 4.5 Narrative Agent

Responsibilities:

Creates:

- Dialogue
- Quests
- Lore
- Character stories

Must validate against:

Arthurian canon.

---

# 4.6 Art Generation Agent

Responsibilities:

Creates:

- Models
- Textures
- Materials
- UI assets

Must follow:

SYS-023.

---

# 4.7 Animation Agent

Responsibilities:

Creates:

- Character animations
- Combat animations
- Cinematics

---

# 4.8 Audio Agent

Responsibilities:

Creates:

- Music
- Sound effects
- Voice assets

---

# 4.9 Testing Agent

Responsibilities:

Validates:

- Features
- Bugs
- Performance
- Balance

---

# 4.10 Documentation Agent

Responsibilities:

Maintains:

- Bible documents
- Technical documentation
- Change logs

---

# 5. MCP Architecture

AI agents communicate with development tools through MCP servers.

---

# 6. MCP Server Categories

Required:

```
Unity MCP

GitHub MCP

File System MCP

Asset Generation MCP

Testing MCP

Documentation MCP
```

---

# 7. Unity MCP Responsibilities

Allows agents to:

- Create scenes
- Modify GameObjects
- Import assets
- Run tests
- Capture screenshots
- Validate builds

---

# 8. GitHub MCP Responsibilities

Allows agents to:

- Read repositories
- Create branches
- Commit changes
- Review changes
- Maintain issues

---

# 9. Asset MCP Responsibilities

Allows agents to:

Create:

```
3D Models

Textures

Icons

Concept Art

Animations
```

---

# 10. Testing MCP Responsibilities

Allows agents to:

- Execute tests
- Analyse failures
- Generate reports

---

# 11. Agent Communication Protocol

Every task follows:

```
Request

↓

Analysis

↓

Plan

↓

Implementation

↓

Validation

↓

Documentation

↓

Commit
```

---

# 12. Task Definition Format

Every task must contain:

```
Task ID

Description

Required Systems

Expected Outcome

Files Affected

Validation Requirements
```

---

# 13. Example Task

```
TASK:
Create Arthur's King's Strike ability.

SYSTEMS:
SYS-002
SYS-008
SYS-022

OUTPUT:
Playable ability.

VALIDATION:
Combat test.
```

---

# 14. Agent Handoffs

Agents communicate using:

```
Completed Work Report
```

Containing:

```
Changes Made

Files Changed

Tests Passed

Known Issues

Next Steps
```

---

# 15. Development Workflow

Daily loop:

```
Select Task

↓

Assign Agent

↓

Agent Implementation

↓

Automated Testing

↓

Review

↓

Merge
```

---

# 16. Feature Development Process

Every feature requires:

```
Design

↓

Architecture Review

↓

Implementation

↓

Testing

↓

Documentation
```

---

# 17. Code Generation Rules

AI agents must:

- Read existing code first
- Reuse systems
- Follow naming standards
- Add tests
- Update documentation

---

# 18. Asset Generation Rules

AI art agents must:

Record:

```
Prompt

Model Used

Settings

Version

Final Asset
```

---

# 19. Lore Validation

Narrative agents must check:

```
Arthurian Consistency

Character Personality

Timeline Accuracy

World Rules
```

---

# 20. Autonomous Development Loop

Long-term goal:

```
Task Queue

↓

AI Agent Selection

↓

Implementation

↓

Testing

↓

Human Approval

↓

Integration
```

---

# 21. Agent Memory System

Agents maintain knowledge of:

```
Game Bible

Architecture

Previous Decisions

Known Problems
```

---

# 22. Knowledge Sources

Primary:

```
/Bible

/Documentation

/Code Comments

/Git History
```

---

# 23. Agent Safety Rules

Agents must NOT:

- Delete systems without approval
- Rewrite architecture casually
- Modify unrelated files
- Ignore tests
- Break saves

---

# 24. Quality Gates

Before merging:

Required:

```
Build Success

Tests Passing

Documentation Updated

Performance Checked
```

---

# 25. Bug Fix Workflow

Process:

```
Issue Created

↓

Diagnosis

↓

Fix

↓

Regression Test

↓

Documentation
```

---

# 26. Balance Testing Workflow

Balance agent analyses:

```
Damage

Difficulty

Loot

Progression

Build Diversity
```

---

# 27. Art Review Workflow

Art agent checks:

```
Style Match

Performance

Consistency

Lore Accuracy
```

---

# 28. Release Workflow

Before release:

```
Full Build

Automated Tests

Performance Testing

Save Migration Testing

Final Review
```

---

# 29. AI Development Metrics

Track:

```
Tasks Completed

Bugs Created

Bugs Fixed

Build Success Rate

Asset Approval Rate
```

---

# 30. Future Expansion

Possible additions:

- Fully autonomous development cycles
- AI play testers
- AI balance simulation
- AI community managers
- AI live support

---

# Definition Of Done

AI Development System complete when:

✓ Agents have defined roles

✓ MCP workflow exists

✓ Tasks are structured

✓ Code quality is enforced

✓ Assets are tracked

✓ AI can safely contribute
