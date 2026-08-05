#!/bin/bash

set -e

echo "=========================================="
echo "Arthurian Agent Readiness Documentation"
echo "=========================================="

create_file() {

FILE="$1"

if [ -f "$FILE" ]; then
    echo "Exists: $FILE"
    return
fi

mkdir -p "$(dirname "$FILE")"

cat > "$FILE"

echo "Created: $FILE"

}


mkdir -p \
013_AI_Agents/Templates \
013_AI_Agents/Workflows \
001_Unity \
002_Systems \
015_Production/Milestones \
Diagrams


############################################
# AGENT BOOTSTRAP
############################################

cat > 013_AI_Agents/AGENT_BOOTSTRAP.md <<'EOF'
# Arthur: The Once and Future King

# AI Agent Bootstrap Guide

## Purpose

This document is the entry point for all AI development agents.

Before changing anything, agents must read this file.

---

# Project Identity

This is a Unity 6 LTS action RPG based on Arthurian mythology.

The goal:

Create a modular, expandable RPG architecture.

---

# Required Reading Order

Agents must read:

1. README.md
2. ROADMAP.md
3. GDD
4. Relevant system documentation
5. Relevant implementation documentation
6. Coding standards

---

# Development Rules

Agents must:

- Understand existing architecture before coding
- Reuse existing systems
- Avoid duplicate implementations
- Keep systems modular
- Update documentation after changes

---

# Never Do

Do not:

- Create unnecessary managers
- Hardcode gameplay values
- Mix unrelated systems
- Modify architecture without documentation

---

# Development Cycle

Every task follows:

Planning

↓

Implementation

↓

Testing

↓

Documentation

↓

Commit

---

# Completion Requirement

A feature is complete only when:

- Code works
- Tests pass
- Documentation updated
- Changes committed
EOF


############################################
# CODING STANDARDS
############################################

cat > 001_Unity/Coding_Standards.md <<'EOF'
# Unity Coding Standards

## Namespace

All code uses:

Arthurian

Examples:

Arthurian.Combat

Arthurian.Characters

Arthurian.AI

Arthurian.UI

---

# Naming

Classes:

PlayerController

EnemyBrain

LootGenerator


Variables:

camelCase


Constants:

UPPER_CASE

---

# Architecture

Prefer:

- Composition
- Interfaces
- Events
- Scriptable Objects

Avoid:

- Giant classes
- Static gameplay state
- Hidden dependencies

---

# MonoBehaviour Rules

MonoBehaviours should:

- Control objects
- Receive events
- Coordinate systems

They should not contain:

- Large calculations
- Data definitions
- Game balancing values

---

# Documentation

Public classes require comments.

Complex systems require documentation updates.
EOF


############################################
# PREFAB STANDARDS
############################################

cat > 001_Unity/Prefab_Standards.md <<'EOF'
# Prefab Standards

## Purpose

Ensure consistent Unity assets.

---

# Player Prefab

Required:

- Transform
- Character Controller
- Player Controller
- Health Component
- Audio Source

---

# Enemy Prefab

Required:

- Transform
- Enemy Controller
- AI Brain
- Health Component
- Collider

---

# Naming

Examples:

Player_Arthur

Enemy_Bandit

Boss_Mordred

Weapon_Excalibur
EOF


############################################
# SCENE STANDARDS
############################################

cat > 001_Unity/Scene_Standards.md <<'EOF'
# Scene Standards

## Required Scenes

00_Boot

01_MainMenu

02_Camelot

03_TestArena

04_Dungeons

---

# Scene Rules

Scenes contain:

- Environment
- Lighting
- Spawn points
- Systems

Scenes do not contain:

- Game rules
- Save logic
- Permanent data
EOF


############################################
# SYSTEM DEPENDENCY MAP
############################################

cat > Diagrams/System_Dependency_Map.md <<'EOF'
# System Dependency Map


Core Systems

|

+-- Event System

|

+-- Character System

|

+-- Combat System

|

+-- Enemy AI

|

+-- Loot System

|

+-- Progression System

|

+-- Quest System

|

+-- UI System

|

+-- Save System


Rules:

Lower systems may depend on higher systems.

Higher systems must not depend on lower systems.
EOF


############################################
# BALANCE DOCUMENT
############################################

cat > 002_Systems/Game_Balance_Constants.md <<'EOF'
# Game Balance Constants

## Purpose

Central balancing reference.

---

# Player

Starting Health:

100

Starting Level:

1

---

# Level Scaling

XP requirements increase every level.

---

# Damage

Damage calculation must use formulas.

Never hardcode damage values inside abilities.

---

# Enemies

Enemies scale through:

- Level
- Region
- Difficulty
- Elite modifiers
EOF


############################################
# VERTICAL SLICE
############################################

cat > 015_Production/Milestones/Vertical_Slice.md <<'EOF'
# Vertical Slice Specification

## Goal

Create a complete small playable section.

---

# Required Features

Player:

- Arthur controller
- Combat
- Abilities

World:

- One playable region
- Exploration

Enemies:

- Three enemy types
- One boss

Loot:

- Weapons
- Armour
- Rewards

Systems:

- XP
- Level progression
- Save/load

UI:

- HUD
- Inventory
EOF


############################################
# TASK TEMPLATE
############################################

cat > 013_AI_Agents/Templates/Task_Template.md <<'EOF'
# AI Development Task

## Task

Describe requested feature.

---

## Files

Files expected to change:

---

## Dependencies

Systems required:

---

## Implementation Plan

Steps:

1.

2.

3.

---

## Testing

Required tests:

---

## Documentation

Documents updated:
EOF


############################################
# CODE REVIEW CHECKLIST
############################################

cat > 013_AI_Agents/Code_Review_Checklist.md <<'EOF'
# AI Code Review Checklist

Before accepting code:

## Architecture

[ ] Uses existing systems

[ ] No duplicate functionality

[ ] Correct namespace

---

## Quality

[ ] Compiles

[ ] Errors handled

[ ] Readable

---

## Unity

[ ] Prefabs updated

[ ] Inspector references safe

[ ] No unnecessary Update loops

---

## Documentation

[ ] Docs updated

[ ] Change recorded
EOF


############################################
# AGENT WORKFLOW
############################################

cat > 013_AI_Agents/Workflows/Development_Workflow.md <<'EOF'
# AI Development Workflow


Receive Task

↓

Read Documentation

↓

Create Plan

↓

Implement

↓

Compile

↓

Test

↓

Update Documentation

↓

Commit Changes


---

Agents should prefer small incremental changes.
EOF


git add .

git commit -m "Add AI agent readiness documentation framework" || true

echo ""
echo "=========================================="
echo "Agent documentation complete"
echo "=========================================="
