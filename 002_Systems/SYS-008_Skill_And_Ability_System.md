---
title: Skill and Ability System
document_id: SYS-008
version: 0.1
status: Draft
owner: Gameplay Systems
engine: Unity 6 LTS
dependencies:
  - SYS-001 Character Framework
  - SYS-002 Combat System
  - SYS-003 Loot System
  - SYS-005 Camelot Meta Progression
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-008 Skill & Ability System

Version 0.1

---

# 1. Purpose

The Skill and Ability System defines how playable characters fight, evolve, and develop unique playstyles.

The system provides the foundation for:

- Character abilities
- Build creation
- Skill progression
- Ability modification
- Combat identity

---

# 2. Skill Philosophy

The core principle:

> A Knight is defined by how they fight.

Two players using the same character should be able to create different experiences.

---

# 3. Design Pillars Supported

✓ Every Knight Is A Unique Fantasy

✓ Combat Is Simple, Deep And Rewarding

✓ Loot Creates Possibilities

✓ Data Before Code

---

# 4. Player Ability Structure

Every playable character has:

```
Basic Attack

+

4 Active Skills

+

Ultimate Ability

+

Passive Traits
```

---

# 5. Ability Categories

Skills are divided into:

```
Offensive

Defensive

Utility

Control

Movement

Support

Ultimate
```

---

# 6. Ability Architecture

All abilities use:

```
AbilityDefinition
```

Contains:

```
Ability ID

Name

Description

Animation

VFX

Damage

Cooldown

Resource Cost

Effects

Scaling Rules

Upgrade Paths
```

---

# 7. Ability Runtime

Runtime object:

```
AbilityInstance
```

Contains:

```
Current Rank

Cooldown State

Modifiers

Unlocked Upgrades
```

---

# 8. Basic Attack System

Basic attacks are always available.

They define character feel.

---

Examples:

## Arthur

Sword combination attacks.

Balanced damage.

---

## Lancelot

Rapid precision strikes.

---

## Gawain

Heavy sweeping attacks.

---

## Merlin

Basic arcane projectiles.

---

# 9. Active Skill Slots

The player has:

```
Q

W

E

R
```

Each slot contains one active ability.

---

# 10. Skill Design Rules

Every skill must have:

## Purpose

Why does this skill exist?

---

## Identity

Why does this character use it?

---

## Decision

When should the player use it?

---

# 11. Skill Examples

---

# Arthur

## Skill 1

# King's Challenge

Type:

Defensive

Effect:

Arthur taunts enemies and gains armour.

---

## Skill 2

# Royal Cleave

Type:

Offensive

Effect:

Wide sword strike.

---

## Skill 3

# Banner Of Camelot

Type:

Support

Effect:

Creates an area that empowers allies.

---

## Skill 4

# Excalibur's Judgement

Type:

Holy

Effect:

Powerful single-target strike.

---

# Ultimate

# Call Of The Round Table

Arthur summons spectral knights.

---

# 12. Merlin Example

## Skill 1

# Arcane Flame

Fire projectile.

---

## Skill 2

# Time Distortion

Slows enemies.

---

## Skill 3

# Avalon Gate

Teleport ability.

---

## Skill 4

# Starfall

Large area magic attack.

---

## Ultimate

# The End Of Magic

Massive battlefield spell.

---

# 13. Skill Progression

Skills improve through:

```
Character Level

↓

Skill Rank

↓

Enhancement Choice
```

---

# 14. Skill Ranks

Initial system:

Rank 1-10

Each rank improves:

- Damage
- Cooldown
- Effect strength

---

# 15. Skill Enhancement System

At certain ranks players choose modifications.

Example:

Royal Cleave:

Choice A:

More damage.

---

Choice B:

Creates shockwave.

---

Choice C:

Applies armour break.

---

# 16. Ability Modifiers

Modifiers change behaviour.

Created using:

```
AbilityModifierDefinition
```

---

Examples:

## Increased Area

Makes abilities larger.

---

## Reduced Cooldown

Allows faster use.

---

## Element Conversion

Changes damage type.

---

## Additional Projectiles

Creates multiple attacks.

---

# 17. Legendary Skill Modifiers

Rare loot can alter abilities.

Examples:

---

Excalibur Fragment:

Royal Cleave becomes holy.

---

Merlin's Tome:

Arcane Flame splits into three projectiles.

---

Dragon Armour:

King's Challenge creates fire retaliation.

---

# 18. Passive Skills

Passive abilities provide long-term build choices.

Examples:

Arthur:

## Born To Rule

Increases leadership effects.

---

Lancelot:

## Perfect Duelist

Increases critical damage against single targets.

---

Merlin:

## Ancient Knowledge

Improves spell efficiency.

---

# 19. Character Mastery System

At higher levels characters unlock mastery paths.

---

Example:

Arthur:

## The King

Leadership and defence.

---

## The Warrior

Pure combat.

---

## The Legend

Holy power and Excalibur focus.

---

# 20. Skill Synergy System

Abilities interact.

Examples:

Fire:

Applies Burn.

↓

Wind ability:

Spreads flames.

---

Freeze:

Stops enemies.

↓

Heavy attack:

Shatters frozen targets.

---

# 21. Status Effect Integration

Skills can apply:

```
Burn

Bleed

Freeze

Stun

Poison

Bless

Curse
```

---

# 22. Resource Integration

Skills consume character resources.

Examples:

Arthur:

Authority.

---

Merlin:

Arcane Energy.

---

Lancelot:

Momentum.

---

# 23. Ultimate System Integration

Ultimates require:

```
Charge

↓

Ready State

↓

Activation

↓

Cinematic Feedback
```

---

# 24. Ability Visual Requirements

Every skill requires:

- Animation
- VFX
- Sound
- Camera feedback
- Impact response

---

# 25. Technical Architecture

Scriptable Objects:

```
AbilityDefinition

AbilityModifierDefinition

PassiveDefinition

MasteryDefinition
```

---

Runtime:

```
AbilityManager

SkillController

CooldownManager

ResourceManager

ModifierResolver
```

---

# 26. Events

Ability events:

```
AbilityUsed

AbilityHit

AbilityEnhanced

UltimateCharged

UltimateActivated
```

---

# 27. AI Implementation Rules

AI agents must:

- Use shared ability architecture
- Avoid hardcoded skills
- Balance through data
- Create reusable modifiers

---

# 28. Testing Requirements

Test:

## Ability Execution

Does the skill activate?

---

## Damage

Does scaling work?

---

## Modifiers

Do upgrades apply?

---

## Synergy

Do combinations work?

---

# 29. Future Expansion

Possible additions:

- Skill trees
- Combination abilities
- Knight pair attacks
- Legendary transformations
- Team abilities

---

# Definition Of Done

Skill System complete when:

✓ Characters have abilities

✓ Skills scale

✓ Upgrades work

✓ Modifiers work

✓ Ultimates function

✓ Builds are diverse

✓ Loot interacts with skills

✓ AI agents can expand safely
