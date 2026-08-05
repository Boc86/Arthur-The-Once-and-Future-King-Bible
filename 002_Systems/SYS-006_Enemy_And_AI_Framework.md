---
title: Enemy and AI Framework
document_id: SYS-006
version: 0.1
status: Draft
owner: Gameplay Systems
engine: Unity 6 LTS
dependencies:
  - PROJ-003 Design Pillars
  - PROJ-004 Core Gameplay Loop
  - SYS-002 Combat System
  - SYS-004 Procedural World Generation
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-006 Enemy & AI Framework

Version 0.1

---

# 1. Purpose

The Enemy and AI Framework defines all hostile entities within Arthur: The Once and Future King.

The system creates:

- Standard enemies
- Elite enemies
- Champions
- Bosses
- Legendary creatures
- Corrupted versions of Arthurian characters

The goal is to create enemies that feel like part of the legend, not disposable targets.

---

# 2. Enemy Philosophy

The core principle:

> Every enemy should tell the player something about the world.

Enemies represent:

- The corruption of Britain
- Lost history
- Magical consequences
- Failed timelines
- Ancient conflicts

---

# 3. Design Pillars Supported

✓ Every Run Creates A Story

✓ Combat Is Simple, Deep And Rewarding

✓ The World Must Remember

✓ Restore The Legend

✓ Quality Over Quantity

---

# 4. Enemy Architecture

Enemies follow the same data-driven approach as characters.

Architecture:

```
Enemy Definition

↓

Enemy Instance

↓

AI Controller

↓

Combat Behaviour

↓

Rewards
```

---

# 5. Enemy Definition

All enemies use:

```
EnemyDefinition
```

Contains:

```
Enemy ID

Name

Faction

Model

Stats

Abilities

Behaviour Type

Loot Table

Lore Data
```

---

# 6. Enemy Components

Required components:

```
EnemyController

HealthComponent

StatsComponent

AIBehaviourController

CombatComponent

LootComponent

AnimationController
```

---

# 7. Enemy Categories

Initial categories:

```
Normal

Elite

Champion

Mini Boss

Boss

Legendary
```

---

# 8. Normal Enemies

Purpose:

Provide the primary combat experience.

Characteristics:

- Fast encounters
- Group combat
- Clear weaknesses

---

Examples:

## Saxon Warrior

Role:

Melee attacker.

---

## Corrupted Knight

Role:

Armoured frontline enemy.

---

## Fae Wisp

Role:

Ranged magical enemy.

---

# 9. Elite Enemies

Elite enemies are enhanced versions of normal enemies.

They receive:

- Increased stats
- Additional abilities
- Unique modifiers

---

Example:

Normal:

Corrupted Knight

↓

Elite:

The Black Guard

Abilities:

- Shadow strike
- Shield wall
- Fear aura

---

# 10. Champion System

Champions are named enemies.

They have:

- Unique identity
- Lore
- Special mechanics
- Increased rewards

---

Example:

"The Knight Who Forgot His Oath"

---

# 11. Boss Framework

Bosses represent major moments.

Bosses require:

```
BossDefinition
```

Contains:

```
Phases

Arena

Abilities

Dialogue

Rewards

Lore
```

---

# 12. Boss Design Rules

Bosses must have:

## Identity

The player remembers them.

---

## Mechanics

Not just increased health.

---

## Story

Why does this enemy exist?

---

# 13. Boss Examples

---

# The Black Knight

Theme:

A warrior corrupted by endless battle.

Phase 1:

Armoured combat.

Phase 2:

Dark magic corruption.

Phase 3:

The armour itself attacks.

---

# Morgana

Theme:

The dark reflection of magic.

Mechanics:

- Illusions
- Arena control
- Summoning

---

# Mordred

Theme:

Arthur's greatest failure.

Mechanics:

- Counter attacks
- Corrupted Excalibur
- Timeline manipulation

---

# 14. AI Behaviour System

AI behaviours are modular.

Created using:

```
AIBehaviourDefinition
```

---

# 15. Behaviour Types

Initial behaviours:

---

## Aggressive

Moves toward player.

Uses attacks frequently.

---

## Defensive

Protects position.

Uses blocking.

---

## Ranged

Maintains distance.

Uses projectiles.

---

## Support

Buffs allies.

---

## Assassin

Uses stealth and mobility.

---

## Boss

Custom behaviour trees.

---

# 16. Behaviour Tree Architecture

Enemy AI:

```
Sense

↓

Evaluate

↓

Choose Action

↓

Execute

↓

Recover

↓

Repeat
```

---

# 17. AI Awareness

Enemies detect:

```
Player Location

Distance

Health

Threat

Environment
```

---

# 18. Combat Decisions

Enemies decide:

- Attack
- Retreat
- Defend
- Chase
- Support
- Use Ability

---

# 19. Enemy Abilities

Enemies use the same ability framework as players.

Benefits:

- Reusable systems
- Consistent balancing
- Easier AI generation

---

# 20. Enemy Factions

Initial factions:

---

# Saxons

Theme:

Invaders of Britain.

Gameplay:

Military tactics.

---

# Corrupted Knights

Theme:

Failed legends.

Gameplay:

Elite melee combat.

---

# Fae

Theme:

Ancient magic.

Gameplay:

Trickery and spells.

---

# Undead

Theme:

Lost warriors.

Gameplay:

Slow relentless pressure.

---

# Morgana's Cult

Theme:

Dark magic followers.

Gameplay:

Spells and rituals.

---

# 21. Enemy Scaling

Enemies scale through:

```
Region Level

Timeline Corruption

Difficulty

Modifiers
```

---

# 22. Elite Modifiers

Examples:

## Enraged

More damage.

---

## Frozen

Creates frost effects.

---

## Vampiric

Heals from damage.

---

## Shadowbound

Creates clones.

---

## Blessed

Resistance bonuses.

---

# 23. Encounter Composition

Encounters should create tactical situations.

Example:

Bad:

```
20 Melee Enemies
```

---

Good:

```
Frontline Knights

+

Archers

+

Mage Support

+

Elite Commander
```

---

# 24. Enemy Rewards

Enemies provide:

- Experience
- Equipment
- Materials
- Lore
- Quest progress

---

# 25. Enemy Animation Requirements

Required:

## Movement

- Idle
- Walk
- Run

---

## Combat

- Attacks
- Abilities
- Hit reactions

---

## Death

- Death animation
- Effects

---

# 26. Technical Architecture

Scriptable Objects:

```
EnemyDefinition

AIBehaviourDefinition

AbilityDefinition

FactionDefinition

BossDefinition
```

---

Runtime:

```
EnemyManager

AIController

BehaviourTree

ThreatSystem

SpawnManager
```

---

# 27. Events

Enemy events:

```
EnemySpawned

EnemyDetectedPlayer

EnemyDamaged

EnemyStaggered

EnemyKilled

BossDefeated
```

---

# 28. AI Implementation Rules

AI agents must:

- Use existing behaviour systems
- Avoid unique AI scripts unless required
- Keep behaviours data-driven
- Test performance with large groups

---

# 29. Testing Requirements

Test:

## Individual AI

Does the enemy behave correctly?

---

## Groups

Do enemies cooperate?

---

## Performance

Can large groups run efficiently?

---

## Bosses

Do mechanics function?

---

# 30. Future Expansion

Possible additions:

- Mounted enemies
- Dragons
- Giants
- Army battles
- Siege encounters
- Living factions

---

# Definition Of Done

Enemy Framework complete when:

✓ Enemies load from data

✓ AI behaviours function

✓ Factions exist

✓ Elites work

✓ Bosses work

✓ Scaling works

✓ Loot integrates

✓ Performance targets achieved

✓ AI agents can extend safely
