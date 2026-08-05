---
title: Enemy Faction AI and Behaviour System
document_id: SYS-032
version: 0.1
status: Draft
owner: Enemy Design And AI Systems
engine: Unity 6 LTS
dependencies:
  - SYS-006 Enemy And AI Framework
  - SYS-017 Game Balance And Difficulty System
  - SYS-019 World Factions And Reputation System
  - SYS-020 Procedural Event And Encounter System
  - SYS-021 Enemy Boss And Combat Encounter Design System
  - SYS-029 World Map Region And Biome System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-032 Enemy Faction AI & Behaviour System

Version 0.1

---

# 1. Purpose

This document defines the enemy ecosystem of Arthur: The Once and Future King.

The purpose is to create enemies that feel:

- Intelligent
- Thematically appropriate
- Different from each other
- Dangerous
- Memorable

Enemies should not simply be health bars.

They should represent the forces preventing Arthur from becoming king.

---

# 2. Core Philosophy

The core principle:

> Every enemy represents a conflict within Britain's broken world.

A Saxon soldier represents invasion.

A corrupted knight represents lost honour.

A Fae creature represents ancient magic.

A Morgana servant represents corruption.

---

# 3. Enemy Design Goals

Enemies must provide:

```
Challenge

Variety

Counterplay

Lore

Progression
```

---

# 4. Enemy Categories

Primary factions:

```
Saxon Invaders

Morgana's Corruption

Fae Courts

Ancient Beasts

Fallen Knights

Undead Legions
```

---

# 5. Enemy Architecture

Every enemy contains:

```
Identity

Combat Role

Behaviour

Abilities

Rewards

Lore
```

---

# 6. Enemy Data Structure

Scriptable Object:

```
EnemyDefinition
```

Contains:

```
Name

Faction

Health

Damage

Abilities

AI Profile

Loot Table

Lore
```

---

# 7. Enemy Combat Roles

Enemies are classified as:

```
Grunt

Elite

Ranged

Support

Tank

Assassin

Controller

Boss
```

---

# 8. Enemy AI Architecture

AI consists of:

```
Sensing

Decision Making

Movement

Combat

Recovery
```

---

# 9. AI Behaviour System

Uses:

```
Behaviour Trees

State Machines

Utility Decisions
```

---

# 10. AI States

Common states:

```
Idle

Patrol

Investigate

Attack

Defend

Retreat

Search

Dead
```

---

# 11. Enemy Awareness

Enemies detect:

```
Distance

Noise

Damage Taken

Allies Nearby

Player Actions
```

---

# 12. Group Behaviour

Enemies coordinate.

Examples:

```
Protect Leaders

Surround Player

Retreat And Reinforce

Ambush
```

---

# 13. Difficulty Scaling

Difficulty affects:

```
Health

Damage

AI Intelligence

Ability Frequency

Enemy Composition
```

---

# 14. Faction One

# Saxon Invaders

Theme:

Foreign armies attempting to conquer Britain.

---

Combat Identity:

```
Disciplined

Organised

Military
```

---

# 15. Saxon Enemy Types

## Saxon Footman

Role:

Basic melee.

Abilities:

```
Shield Block

Sword Strike
```

---

## Saxon Archer

Role:

Ranged pressure.

Abilities:

```
Volley

Retreat Shot
```

---

## Saxon Captain

Role:

Elite commander.

Abilities:

```
Battle Cry

Command Allies
```

---

# 16. Faction Two

# Morgana's Corruption

Theme:

Magic twisted into darkness.

---

Combat Identity:

```
Unpredictable

Magical

Cruel
```

---

# 17. Corrupted Enemy Types

## Shadow Knight

Role:

Dark mirror of Arthur's knights.

Abilities:

```
Dark Blade

Teleport Strike
```

---

## Corrupted Mage

Role:

Caster.

Abilities:

```
Curse

Shadow Projectile
```

---

## Void Beast

Role:

Monster.

Abilities:

```
Charge

Fear Roar
```

---

# 18. Faction Three

# The Fae Courts

Theme:

Ancient beings beyond human morality.

---

Combat Identity:

```
Magical

Trickster

Environmental
```

---

# 19. Fae Enemy Types

## Pixie Swarm

Role:

Distraction.

Abilities:

```
Blind

Confuse
```

---

## Fae Warrior

Role:

Fast melee.

Abilities:

```
Blink Attack

Magic Blade
```

---

## Fae Guardian

Role:

Tank.

Abilities:

```
Nature Shield

Root
```

---

# 20. Faction Four

# Ancient Beasts

Theme:

Creatures from old Britain.

---

Examples:

```
Dire Wolves

Giants

Dragons

Wyverns
```

---

# 21. Faction Five

# Fallen Knights

Theme:

Warriors who lost their way.

---

Gameplay purpose:

Personal conflict.

---

Examples:

```
Broken Oath Knight

Black Knight

Grieving Champion
```

---

# 22. Enemy Affix System

Elite enemies gain modifiers.

Examples:

```
Burning

Frozen

Armoured

Swift

Vampiric

Cursed
```

---

# 23. Elite Enemy Generation

Elite enemies combine:

```
Base Enemy

+

Combat Modifier

+

Visual Modifier

+

Reward Modifier
```

---

Example:

```
Frozen Saxon Captain
```

Features:

- Ice armour
- Freeze attacks
- Increased loot

---

# 24. Champion Enemies

Special enemies:

```
Named

Unique

Lore Connected
```

---

Example:

```
Sir Balor The Betrayed
```

---

# 25. Boss AI Philosophy

Bosses must have:

```
Phases

Patterns

Weaknesses

Rewards
```

---

# 26. Boss Phase System

Example:

Phase 1:

```
Normal Combat
```

Phase 2:

```
New Ability
```

Phase 3:

```
Desperate Attack
```

---

# 27. Boss Examples

## The Black Knight

Theme:

Arthur's unknown rival.

Mechanics:

```
Counter Attacks

Dark Armour

Honour Duel
```

---

## The Saxon Warlord

Mechanics:

```
Army Summons

Siege Weapons

Command Abilities
```

---

## Morgana's Champion

Mechanics:

```
Magic

Corruption

Illusions
```

---

# 28. Adaptive Encounter System

Encounters adjust based on:

```
Player Level

Build

Previous Performance

Difficulty
```

---

# 29. Enemy Relationships

Factions interact.

Examples:

Saxons:

Fight Fae.

---

Morgana:

Corrupts Knights.

---

Fae:

Distrust Humans.

---

# 30. Environmental Combat

Enemies use:

```
Cover

Terrain

Traps

Hazards
```

---

# 31. Enemy Loot Integration

Rewards based on:

```
Faction

Difficulty

Enemy Type

Location
```

---

# 32. Technical Architecture

Data:

```
EnemyDefinition

AIProfile

BehaviourTreeDefinition

EliteModifierDefinition
```

---

Runtime:

```
EnemyController

AIManager

BehaviourManager

FactionManager

EncounterManager
```

---

# 33. AI Agent Rules

AI agents creating enemies must define:

```
Purpose

Counterplay

Abilities

Lore

Rewards

Balance
```

---

# 34. Testing Requirements

Test:

## Variety

Do enemies feel different?

---

## Difficulty

Are they challenging but fair?

---

## AI

Do they behave naturally?

---

## Performance

Can many enemies exist simultaneously?

---

# 35. Future Expansion

Possible additions:

```
Enemy Evolution

Faction Wars

Dynamic Invasions

Nemesis System

Corrupted Player Versions
```

---

# Definition Of Done

Enemy AI System complete when:

✓ Factions feel unique

✓ Enemies have identities

✓ AI creates interesting fights

✓ Bosses are memorable

✓ Encounters remain fresh
