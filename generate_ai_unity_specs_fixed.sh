#!/bin/bash

set -e

echo "Generating Arthurian Unity + AI specifications..."

create_doc() {
    mkdir -p "$(dirname "$1")"

    cat > "$1" <<'DOCUMENT'
DOCUMENT_CONTENT
DOCUMENT

    echo "Created: $1"
}


mkdir -p 001_Unity/Implementation
mkdir -p 013_AI_Agents


cat > 013_AI_Agents/AI_Master_Development_Rules.md <<'EOF'
# Arthur: The Once and Future King

# AI Development Rules

## Purpose

This document defines how AI agents contribute to development.

---

## Required Behaviour

Agents must:

- Read existing documentation first
- Follow current architecture
- Avoid duplicate systems
- Keep changes modular
- Document all modifications

---

## Unity Rules

Use:

- Scriptable Objects for data
- Events for communication
- Prefabs for reusable objects
- Interfaces where appropriate

Avoid:

- Hard coded values
- Large monolithic scripts
- System duplication

---

## Development Flow

Design

↓

Implement

↓

Compile

↓

Test

↓

Document
EOF


cat > 001_Unity/UNITY_ARCHITECTURE.md <<'EOF'
# Unity Architecture

## Engine

Unity 6 LTS

---

## Folder Layout

Assets/Game/

- Characters
- Combat
- Enemies
- World
- UI
- Audio
- Systems
- Data
- Prefabs
- Scenes

---

## Architecture Pattern

Systems communicate through:

- Events
- Services
- Interfaces

Gameplay data is stored using Scriptable Objects.
EOF


cat > 001_Unity/Implementation/IMP-002_Player_Controller_Implementation.md <<'EOF'
# IMP-002 Player Controller Implementation

## Purpose

Controls Arthur's movement and player state.

---

## Required Components

PlayerController

PlayerMovement

PlayerInputHandler

PlayerStateMachine

---

## Player States

Idle

Moving

Attacking

Dodging

Dead

---

## Requirements

Support:

- Keyboard
- Controller
- Future expansion

Movement must not contain:

- Combat logic
- Inventory logic
- Quest logic
EOF


cat > 001_Unity/Implementation/IMP-004_Combat_Framework_Implementation.md <<'EOF'
# IMP-004 Combat Framework Implementation

## Purpose

Provide the core combat foundation.

---

## Components

CombatController

DamageSystem

HealthComponent

AttackSystem

AbilitySystem

---

## Combat Flow

Input

↓

Attack

↓

Hit Detection

↓

Damage Calculation

↓

Health Update

↓

Combat Event

---

## Future Support

- Weapons
- Magic
- Status effects
- Boss mechanics
EOF


cat > 001_Unity/Implementation/IMP-005_Enemy_AI_Framework_Implementation.md <<'EOF'
# IMP-005 Enemy AI Framework Implementation

## Purpose

Provide scalable enemy behaviour.

---

## Architecture

Perception

↓

Decision

↓

Action

---

## Components

EnemyController

EnemyBrain

EnemyStateMachine

EnemyCombat

EnemyMovement

---

## States

Idle

Patrol

Alert

Chase

Attack

Recover

Dead
EOF


cat > 001_Unity/Implementation/IMP-011_Ability_System_Implementation.md <<'EOF'
# IMP-011 Ability System Implementation

## Purpose

Controls skills and abilities.

---

## Structure

Ability Definition

↓

Ability Instance

↓

Execution

↓

Effects

---

## Ability Types

- Active Skills
- Passive Skills
- Ultimate Abilities

---

## Arthur Examples

Excalibur Strike

Kings Command

Holy Blade
EOF


echo "Generation complete."

git add .
git commit -m "Add Unity architecture and AI specifications" || true

echo "Committed changes."
