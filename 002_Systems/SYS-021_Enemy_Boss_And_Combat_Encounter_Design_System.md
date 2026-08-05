---
title: Enemy Boss and Combat Encounter Design System
document_id: SYS-021
version: 0.1
status: Draft
owner: Combat Design
engine: Unity 6 LTS
dependencies:
  - SYS-002 Combat System
  - SYS-004 Procedural World Generation
  - SYS-006 Enemy And AI Framework
  - SYS-017 Game Balance And Difficulty System
  - SYS-020 Procedural Event And Encounter System
  - SYS-013 AI Development And MCP Asset Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-021 Enemy, Boss & Combat Encounter Design System

Version 0.1

---

# 1. Purpose

The Enemy, Boss and Combat Encounter Design System defines how enemies are created, combined, balanced, and presented throughout Arthurian Britain.

The system ensures:

- Combat remains varied
- Enemies have clear identities
- Encounters create memorable moments
- Bosses feel legendary
- Procedural generation remains controlled

---

# 2. Core Philosophy

The core principle:

> A worthy king is measured by the enemies who stand against him.

Enemies should not exist only as health bars.

Every enemy represents:

- A faction
- A belief
- A threat
- A story

---

# 3. Design Pillars Supported

✓ Combat Is Simple, Deep And Rewarding

✓ Every Run Creates A Story

✓ The World Must Remember

✓ Quality Over Quantity

✓ Restore The Legend

---

# 4. Enemy Design Goals

Every enemy must have:

```
Identity

Purpose

Counterplay

Weakness

Reward
```

---

# 5. Enemy Architecture

Enemies are created from:

```
Enemy Definition

+

AI Behaviour

+

Combat Abilities

+

Visual Identity

+

Loot Profile
```

---

# 6. Enemy Data Structure

Scriptable Object:

```
EnemyDefinition
```

Contains:

```
Enemy ID

Name

Faction

Stats

Abilities

Behaviour

Rewards

Visual Assets
```

---

# 7. Enemy Families

Initial enemy factions:

```
Saxon Armies

Morgana's Cult

Fae Creatures

Undead Knights

Ancient Monsters

Corrupted Beasts
```

---

# 8. Enemy Roles

Every encounter uses roles.

Examples:

```
Damage Dealer

Tank

Support

Controller

Ranged

Assassin

Elite
```

---

# 9. Saxon Enemy Family

Theme:

Human warfare.

Strength:

Discipline and numbers.

---

## Saxon Foot Soldier

Role:

Basic melee enemy.

Abilities:

- Shield strike
- Formation attack

---

## Saxon Archer

Role:

Ranged pressure.

Abilities:

- Volley
- Fire arrows

---

## Saxon Captain

Role:

Elite commander.

Abilities:

- Rally allies
- Defensive stance

---

# 10. Morgana Cult Enemy Family

Theme:

Dark magic and corruption.

Strength:

Unpredictability.

---

## Cultist

Role:

Spell caster.

Abilities:

- Dark projectile
- Summoning

---

## Shadow Knight

Role:

Elite melee enemy.

Abilities:

- Teleport strike
- Curse attacks

---

## Witch Acolyte

Role:

Support.

Abilities:

- Healing
- Buffs

---

# 11. Fae Enemy Family

Theme:

Ancient magic.

Strength:

Trickery.

---

## Fae Guardian

Role:

Defender.

Abilities:

- Root attack
- Magic shield

---

## Wild Hunt Stalker

Role:

Assassin.

Abilities:

- Stealth
- Ambush

---

# 12. Undead Enemy Family

Theme:

The dead refusing destiny.

Strength:

Persistence.

---

## Fallen Knight

Role:

Armoured enemy.

Abilities:

- Heavy attacks
- Resurrection

---

## Spectral Warrior

Role:

Mobile attacker.

Abilities:

- Phase movement
- Ghost strikes

---

# 13. Ancient Monsters

Rare encounters.

Examples:

```
Dragons

Giants

Wyverns

Ancient Beasts
```

---

Purpose:

Create legendary moments.

---

# 14. Enemy Ability Design

Every ability requires:

```
Telegraph

Damage

Counterplay

Cooldown

Effect
```

---

# 15. Enemy Telegraph Rules

Players must understand:

Danger before impact.

---

Examples:

Large attacks:

- Ground indicators
- Animation wind-up
- Audio cues

---

# 16. Elite Enemy System

Elite enemies receive modifiers.

Example:

```
Flame Blessed

Frozen

Vampiric

Armoured

Swift

Cursed
```

---

# 17. Elite Modifier Rules

Modifiers must:

- Change behaviour
- Create challenge
- Remain readable

---

Avoid:

Random unfair combinations.

---

# 18. Enemy AI Behaviour Templates

Initial templates:

```
Aggressive

Defensive

Support

Ambush

Ranged

Boss
```

---

# 19. Combat Behaviour

Enemies should:

- React to player actions
- Coordinate
- Create pressure
- Have weaknesses

---

# 20. Encounter Generation

Procedural encounters use:

```
Region

Difficulty

Faction

Run State

Player Power
```

---

# 21. Encounter Composition

Example:

Basic encounter:

```
3 Melee

+

1 Ranged
```

---

Elite encounter:

```
Elite Leader

+

Support Units

+

Guards
```

---

# 22. Difficulty Scaling

Increase:

```
Enemy Variety

Ability Complexity

Coordination

Elite Frequency
```

---

Avoid only increasing:

```
Health

Damage
```

---

# 23. Boss Philosophy

Bosses are:

- Characters
- Stories
- Challenges

---

Every boss requires:

```
Identity

Arena

Phases

Mechanics

Rewards
```

---

# 24. Boss Structure

Standard boss:

```
Introduction

Phase One

Transition

Phase Two

Final Moment

Reward
```

---

# 25. Morgana Boss Example

Theme:

Magic versus destiny.

---

Phase One:

Dark magic attacks.

---

Phase Two:

Reality distortion.

---

Phase Three:

Avalon corruption.

---

# 26. Mordred Boss Example

Theme:

The broken future king.

---

Phase One:

Knight combat.

---

Phase Two:

Dark inheritance.

---

Phase Three:

Destiny confrontation.

---

# 27. Boss Reward Design

Bosses reward:

```
Unique Items

Lore

Crafting Materials

Character Progress

Unlocks
```

---

# 28. Legendary Boss Events

Rare bosses appear through:

```
World Events

Faction Choices

Hidden Areas

Story Progression
```

---

# 29. Procedural Boss Variants

Bosses may have variants.

Example:

Morgana:

```
Shadow Morgana

Fae Morgana

Corrupted Morgana
```

---

# 30. Technical Architecture

Data:

```
EnemyDefinition

BossDefinition

AbilityDefinition

ModifierDefinition

EncounterDefinition
```

---

Runtime:

```
EnemySpawner

EncounterManager

BossManager

AIController

DifficultyScaler
```

---

# 31. AI Asset Pipeline

Every enemy requires:

```
Concept

Model

Rig

Animations

Materials

VFX

Audio

Prefab
```

---

# 32. AI Implementation Rules

AI agents must:

- Preserve faction identity
- Create readable enemies
- Avoid repetitive encounters
- Balance abilities
- Document mechanics

---

# 33. Testing Requirements

Test:

## Combat

Are enemies engaging?

---

## Balance

Are encounters fair?

---

## Variety

Do runs feel different?

---

## Bosses

Are fights memorable?

---

# 34. Future Expansion

Possible additions:

- Multiplayer bosses
- Raid encounters
- Faction wars
- Legendary hunts
- Seasonal enemies

---

# Definition Of Done

Enemy System complete when:

✓ Enemy families exist

✓ AI behaviours work

✓ Encounters generate correctly

✓ Elite modifiers work

✓ Boss fights are memorable

✓ Loot integration works

✓ AI agents can safely expand enemies
