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
