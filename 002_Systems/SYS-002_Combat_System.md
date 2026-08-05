---
title: Combat System
document_id: SYS-002
version: 0.1
status: Draft
owner: Gameplay Systems
engine: Unity 6 LTS
dependencies:
  - PROJ-003 Design Pillars
  - PROJ-004 Core Gameplay Loop
  - SYS-001 Character Framework
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-002 Combat System

Version 0.1

---

# 1. Purpose

The Combat System defines the core moment-to-moment gameplay experience.

Combat is the primary interaction between:

- Player
- Enemies
- World
- Loot
- Progression

The system must deliver:

- Immediate responsiveness
- Powerful feedback
- Meaningful choices
- Build diversity
- Character identity

---

# 2. Combat Philosophy

Combat follows the principle:

> Easy to understand. Difficult to master.

The player should be able to understand combat within minutes.

Depth comes from:

- Positioning
- Timing
- Skill combinations
- Equipment choices
- Character mastery

---

# 3. Design Pillars Supported

✓ Combat Is Simple, Deep And Rewarding

✓ Every Knight Is A Unique Fantasy

✓ Loot Creates Possibilities

✓ Every Run Creates A Story

✓ Data Before Code

---

# 4. Combat Overview

The combat loop:

```
Identify Threat

↓

Position

↓

Attack

↓

React

↓

Use Skills

↓

Defeat Enemy

↓

Collect Rewards
```

---

# 5. Player Combat Controls

The baseline control scheme:

```
Left Click / RT

Basic Attack


Right Click / LT

Dodge / Secondary Action


Q

Skill 1


W

Skill 2


E

Skill 3


R

Skill 4


Space

Ultimate
```

---

# 6. Combat Requirements

Combat must provide:

## Impact

Attacks require:

- Strong animation
- Sound feedback
- Visual effects
- Hit reactions

---

## Clarity

The player must understand:

- Enemy attacks
- Damage received
- Damage dealt
- Status effects

---

## Flow

Combat should avoid:

- Long downtime
- Excessive menus
- Unresponsive actions

---

# 7. Attack System

All attacks use:

```
AttackDefinition
```

Containing:

```
Attack Name

Damage Type

Animation

Range

Area

Speed

Effects

Scaling
```

---

# 8. Basic Attack System

Every character has a basic attack.

Basic attacks define character feel.

Examples:

---

Arthur:

Sword combinations.

Balanced melee chains.

---

Lancelot:

Fast precision strikes.

---

Gawain:

Heavy empowered blows.

---

Merlin:

Basic spell casting.

---

# 9. Attack Pipeline

The attack flow:

```
Input

↓

Attack Request

↓

Animation Trigger

↓

Hit Detection

↓

Damage Calculation

↓

Effects Applied

↓

Feedback
```

---

# 10. Damage System

Damage is calculated:

```
Final Damage =

Base Damage

+

Attribute Scaling

+

Equipment Bonuses

+

Skill Modifiers

-

Enemy Mitigation
```

---

# 11. Damage Types

Initial damage types:

## Physical

Weapons and martial attacks.

---

## Fire

Burning damage.

---

## Frost

Slow and freeze effects.

---

## Lightning

Fast burst damage.

---

## Holy

Anti-undead and corruption damage.

---

## Arcane

Magical damage.

---

# 12. Critical Hits

Critical attacks provide:

- Increased damage
- Visual feedback
- Build opportunities

Stats:

```
Critical Chance

Critical Damage
```

---

# 13. Status Effects

Status effects are data-driven.

Created using:

```
StatusEffectDefinition
```

---

Initial effects:

## Burning

Damage over time.

---

## Bleeding

Physical damage over time.

---

## Frozen

Movement disabled.

---

## Stunned

Temporary incapacitation.

---

## Poisoned

Damage over time.

---

## Blessed

Positive holy effect.

---

## Cursed

Negative magical effect.

---

# 14. Skill System

Every character has four active skills.

Skills must reinforce identity.

---

Example:

Arthur:

Skill:

"Royal Challenge"

Forces enemies to attack Arthur.

---

Lancelot:

Skill:

"Thousand Cuts"

Rapid movement attack.

---

Merlin:

Skill:

"Arcane Storm"

Area magic damage.

---

# 15. Skill Architecture

Skills use:

```
SkillDefinition
```

Contains:

```
Skill Name

Description

Cooldown

Resource Cost

Animation

Damage

Effects

Modifiers
```

---

# 16. Cooldown Philosophy

Cooldowns create decisions.

Avoid:

- Spam-only gameplay
- Endless waiting

Cooldowns should encourage:

- Timing
- Planning
- Combos

---

# 17. Ultimate System

Ultimate abilities represent legendary moments.

Requirements:

- Unique animation
- High impact
- Strong identity
- Long charge time

---

# 18. Ultimate Charge

Possible methods:

## Combat

Gain charge by:

- Damage dealt
- Enemies defeated

---

## Character Specific

Examples:

Arthur:

Leadership actions.

---

Merlin:

Spell casting.

---

# 19. Resource Systems

Characters may use unique resources.

Examples:

Arthur:

Authority

---

Merlin:

Arcane Energy

---

Lancelot:

Momentum

---

Resources must reinforce fantasy.

---

# 20. Combo System

Combos are created through:

- Skills
- Status effects
- Equipment

Example:

Apply Frost

↓

Enemy Slowed

↓

Heavy attack shatters target

---

# 21. Enemy Interaction

Combat must support:

- Interrupts
- Stagger
- Weak points
- Resistances
- Armour breaking

---

# 22. Hit Feedback

Every hit should communicate:

## Visual

- Flash
- Particles
- Numbers

---

## Audio

- Weapon impact
- Enemy reaction

---

## Animation

- Hit reaction
- Knockback
- Stagger

---

# 23. Camera Behaviour

The camera supports:

- Isometric perspective
- Combat readability
- Boss scale
- Cinematic moments

---

Combat camera features:

- Screen shake
- Ability zoom
- Ultimate effects

---

# 24. Enemy Combat Requirements

Enemies require:

```
Attack Patterns

Movement Logic

Abilities

Weaknesses

Rewards
```

---

# 25. Boss Combat Philosophy

Bosses should be memorable encounters.

Bosses require:

- Multiple phases
- Unique mechanics
- Lore significance

---

Examples:

The Black Knight:

Armour corruption phases.

---

Morgana:

Magic battlefield manipulation.

---

Mordred:

Arthur's dark reflection.

---

# 26. Equipment Interaction

Equipment can modify combat:

Examples:

"Excalibur"

Adds holy damage.

---

"Dragon Armour"

Provides fire resistance.

---

"Merlin's Staff"

Changes spell behaviour.

---

# 27. Technical Architecture

Required Scriptable Objects:

```
AttackDefinition

SkillDefinition

DamageTypeDefinition

StatusEffectDefinition
```

---

Runtime Components:

```
CombatController

AttackHandler

DamageCalculator

StatusEffectManager

HitDetectionSystem
```

---

# 28. Events

Combat events:

```
AttackStarted

AttackHit

DamageApplied

EnemyKilled

SkillUsed

UltimateActivated
```

---

# 29. AI Implementation Rules

AI agents must:

- Keep combat data-driven
- Avoid character-specific hacks
- Use existing damage systems
- Create reusable effects
- Add tests

---

# 30. Testing Requirements

## Unit Tests

- Damage calculations
- Critical hits
- Status effects

---

## Integration Tests

- Skills
- Equipment modifiers
- Enemy interactions

---

## Play Tests

Measure:

- Responsiveness
- Balance
- Fun factor

---

# 31. Future Expansion

Possible additions:

- Cooperative combat
- Mounted combat
- Siege battles
- Companion commands
- Kingdom armies

---

# Definition Of Done

Combat System complete when:

✓ Basic attacks work

✓ Skills work

✓ Ultimates work

✓ Damage works

✓ Status effects work

✓ Enemy interaction works

✓ Feedback systems work

✓ Multiple Knights can use it

✓ AI agents can extend it safely
