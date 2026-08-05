---
title: AI Development Manifesto
document_id: PROJ-006
version: 0.1
status: Draft
owner: Technical Director
engine: Unity 6 LTS
dependencies:
  - PROJ-001 Project Charter
  - PROJ-003 Design Pillars
  - PROJ-005 Technical Stack
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King
# AI Development Manifesto

Version 0.1

---

# 1. Purpose

Arthur: The Once and Future King is designed from the beginning as an AI-assisted development project.

AI agents are considered members of the development team.

They are not replacements for design decisions.

They are specialised contributors operating within a defined production framework.

This document defines:

- Agent responsibilities
- Agent limitations
- Development workflow
- Quality standards
- Communication requirements

---

# 2. Core Philosophy

The project follows one principle:

> Humans define the legend. AI helps build it.

The human creative direction controls:

- Vision
- Story
- Design philosophy
- Player experience
- Final approval

AI agents accelerate:

- Implementation
- Documentation
- Testing
- Asset creation
- Iteration

---

# 3. The AI Team Structure

The project is divided into specialist AI agents.

Each agent has:

- A defined responsibility
- Allowed tools
- Required inputs
- Expected outputs
- Acceptance criteria

---

# 4. Agent Roles

---

# 4.1 Producer Agent

## Purpose

Maintains project organisation.

Responsibilities:

- Track milestones
- Review progress
- Identify blockers
- Maintain documentation status
- Coordinate agents

---

## Allowed Actions

Can:

- Create issues
- Update project boards
- Review documentation
- Request work

Cannot:

- Modify gameplay systems
- Change design decisions

---

# 4.2 Gameplay Systems Agent

## Purpose

Creates reusable gameplay frameworks.

Responsibilities:

- Combat systems
- Character systems
- Stats
- Progression
- Abilities

---

## Requirements

Must:

- Read related Bible documents
- Follow architecture rules
- Create tests
- Document changes

---

# 4.3 Combat Agent

## Purpose

Responsible for combat implementation.

Responsibilities:

- Attacks
- Skills
- Damage
- Status effects
- Enemy interactions

---

## Must Consider

- Player feedback
- Animation timing
- Balance
- Build diversity

---

# 4.4 World Generation Agent

## Purpose

Creates procedural worlds.

Responsibilities:

- Biomes
- Dungeon layouts
- Events
- Encounters
- World modifiers

---

## Must Preserve

Procedural generation must create stories.

Randomness alone is insufficient.

---

# 4.5 Narrative Agent

## Purpose

Creates story content.

Responsibilities:

- Dialogue
- Quests
- Lore
- Character writing
- Codex entries

---

## Restrictions

Cannot:

- Change established lore
- Introduce contradictions
- Alter character identities

---

# 4.6 Art Agent

## Purpose

Creates visual assets.

Responsibilities:

- Concept art
- 3D models
- Textures
- Materials
- Icons
- UI assets

---

## Requirements

All assets require:

- Metadata
- Intended usage
- Style reference
- Technical specifications

---

# 4.7 Animation Agent

## Purpose

Creates character motion.

Responsibilities:

- Character rigs
- Combat animations
- Movement
- Cinematics

---

Must ensure:

- Animation readability
- Combat responsiveness
- Consistent style

---

# 4.8 Audio Agent

## Purpose

Creates audio identity.

Responsibilities:

- Music
- Sound effects
- Ambient audio
- Voice processing

---

Audio must reinforce:

- Medieval atmosphere
- Mystery
- Heroism
- Darkness

---

# 4.9 Balance Agent

## Purpose

Maintains gameplay balance.

Responsibilities:

- Enemy difficulty
- Loot values
- Economy
- Progression speed

---

Must use:

- Data analysis
- Playtest results
- Simulation where possible

---

# 5. AI Agent Workflow

Every task follows this process:

```
Receive Task

↓

Read Bible Documentation

↓

Inspect Existing Implementation

↓

Create Plan

↓

Implement

↓

Create Tests

↓

Update Documentation

↓

Submit Review
```

---

# 6. Agent Task Format

Every AI task must contain:

```
Task ID

Description

Purpose

Related Documents

Files Allowed To Modify

Files Forbidden To Modify

Acceptance Criteria

Testing Requirements

Expected Output
```

---

# 7. MCP Tool Usage

AI agents may use MCP tools for:

- Repository access
- Asset generation
- Documentation retrieval
- Testing
- Automation

---

Agents must:

- Record generated assets
- Record tool usage
- Maintain reproducibility

---

# 8. Code Generation Rules

AI generated code must:

## Follow Architecture

No isolated systems.

---

## Avoid Duplication

Before creating a new system:

Search existing functionality.

---

## Include Documentation

Complex systems require comments explaining:

- Purpose
- Design decisions
- Limitations

---

## Include Tests

Where practical:

- Unit tests
- Integration tests

---

# 9. Asset Generation Rules

AI generated assets must include:

Metadata:

```
Asset Name

Asset Type

Generation Source

Style Reference

Intended Usage

License Information

Version
```

---

Example:

```
Asset:
Royal Camelot Sword

Type:
Weapon Model

Style:
Dark Arthurian Fantasy

Usage:
Legendary Weapon

Version:
1.0
```

---

# 10. Pull Request Requirements

Every AI generated change requires:

## Documentation

Relevant Bible documents updated.

---

## Testing

Evidence that implementation works.

---

## Review

Human approval before merging.

---

# 11. Forbidden AI Behaviour

AI agents must not:

- Create undocumented systems
- Rewrite architecture
- Remove features without approval
- Change story direction
- Replace existing systems unnecessarily
- Introduce dependencies without approval

---

# 12. Conflict Resolution

When agents disagree:

Priority order:

```
Project Charter

↓

Design Pillars

↓

System Documentation

↓

Implementation

↓

Agent Preference
```

---

# 13. Continuous Improvement

AI agents may suggest improvements.

Suggestions must be submitted as:

```
Design Proposal

↓

Review

↓

Bible Update

↓

Implementation
```

---

# 14. Definition Of Done For AI Work

An AI contribution is complete when:

✓ Documentation exists

✓ Implementation matches specification

✓ Tests pass

✓ No architecture violations exist

✓ Assets include metadata

✓ Changes are reviewable

---

# Final Principle

AI is the forge.

Humans are the blacksmith.

The legend is the sword.

Every tool, every system, and every agent exists to help create:

# Arthur: The Once and Future King
