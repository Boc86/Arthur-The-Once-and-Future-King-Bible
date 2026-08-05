---
title: Game Balance and Difficulty System
document_id: SYS-017
version: 0.1
status: Draft
owner: Gameplay Balance
engine: Unity 6 LTS
dependencies:
  - SYS-002 Combat System
  - SYS-003 Loot System
  - SYS-005 Camelot Meta Progression
  - SYS-006 Enemy And AI Framework
  - SYS-008 Skill And Ability System
  - SYS-009 Inventory And Equipment System
  - SYS-016 Save Load And Run State System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-017 Game Balance & Difficulty System

Version 0.1

---

# 1. Purpose

The Game Balance and Difficulty System defines how challenge, progression, and player power are controlled.

The system ensures:

- Combat remains rewarding
- Builds feel powerful
- Enemies remain threatening
- Loot remains meaningful
- Rogue-like progression remains fair

---

# 2. Core Philosophy

The core principle:

> The player should feel stronger because they became wiser, not because numbers became meaningless.

Balance should create:

- Tension
- Discovery
- Mastery
- Reward

---

# 3. Design Pillars Supported

✓ Combat Is Simple, Deep And Rewarding

✓ Every Run Creates A Story

✓ Loot Creates Possibilities

✓ Quality Over Quantity

✓ Restore The Legend

---

# 4. Balance Architecture

The balance system controls:

```
Player Power

↓

Enemy Power

↓

Encounter Difficulty

↓

Reward Value
```

---

# 5. Player Power Model

Player power is calculated from:

```
Character Level

+

Equipment Score

+

Skill Power

+

Meta Progression

+

Player Mastery
```

---

# 6. Power Budget System

Every system has controlled power limits.

Examples:

Equipment:

Maximum stat budget.

---

Skills:

Maximum scaling.

---

Meta upgrades:

Controlled permanent bonuses.

---

Purpose:

Prevent exponential growth.

---

# 7. Character Progression Curve

Characters progress through:

```
Early Game

↓

Mid Game

↓

Late Game

↓

End Game
```

---

# 8. Early Game

Goal:

Teach systems.

Player gains:

- Basic skills
- Starter equipment
- First knights

---

Difficulty:

Accessible.

---

# 9. Mid Game

Goal:

Create builds.

Player gains:

- More skills
- Better loot
- Build choices

---

Difficulty:

Requires understanding.

---

# 10. Late Game

Goal:

Mastery.

Player faces:

- Elite enemies
- Complex modifiers
- Legendary encounters

---

# 11. End Game

Goal:

Challenge completed builds.

Contains:

- High corruption zones
- Endless progression
- Boss variants

---

# 12. Enemy Scaling

Enemies scale through:

```
Region Level

↓

Run Difficulty

↓

Corruption

↓

Player Power
```

---

# 13. Enemy Stat Scaling

Enemy stats include:

```
Health

Damage

Armour

Resistance

Speed

Abilities
```

---

# 14. Scaling Rules

Avoid:

Large health inflation.

---

Prefer:

- Better mechanics
- New abilities
- Stronger behaviours
- Tactical challenges

---

# 15. Difficulty Tiers

Initial difficulties:

```
Story

Standard

Veteran

Legend

Nightmare
```

---

# 16. Difficulty Effects

Difficulty changes:

```
Enemy Behaviour

Loot Quality

Elite Frequency

Boss Mechanics

Corruption
```

---

# 17. Rogue-like Balance

Each run contains:

Temporary power.

Examples:

```
Run Bonuses

Temporary Skills

Event Rewards

Temporary Items
```

---

Permanent power:

```
Camelot Upgrades

Knight Unlocks

Collections
```

---

# 18. Death Balance

Death must feel:

Meaningful.

Not punishing.

---

The player loses:

Temporary progress.

---

The player keeps:

Permanent growth.

---

# 19. Loot Balance

Loot power is controlled by:

```
Item Level

Rarity

Affix Budget

Unique Effects
```

---

# 20. Affix Budget System

Every item has:

```
Maximum Allowed Power

Number Of Affixes

Maximum Roll Values
```

---

Example:

Rare Sword:

```
3 Affixes

Damage Budget: 100

Critical Budget: 30
```

---

# 21. Legendary Balance

Legendary items are powerful because they change gameplay.

Not because they have unlimited stats.

---

A legendary should provide:

```
Unique Effect

+

Controlled Stats
```

---

# 22. Damage Calculation Philosophy

Damage uses:

```
Base Damage

×

Skill Scaling

×

Character Stats

×

Modifiers

-

Enemy Defence
```

---

# 23. Avoiding Damage Inflation

Rules:

Do not allow:

- Infinite multipliers
- Unlimited stacking
- Broken combinations

---

# 24. Defensive Balance

Defence includes:

```
Armour

Resistance

Health

Avoidance

Healing
```

---

# 25. Status Effect Balance

Status effects require:

```
Duration Limit

Resistance

Cooldown

Diminishing Returns
```

---

# 26. Crowd Control Rules

Strong crowd control must have limits.

Examples:

Stun:

Limited duration.

---

Freeze:

Resistance scaling.

---

Fear:

Boss immunity phases.

---

# 27. Boss Balance

Bosses should challenge:

- Positioning
- Timing
- Understanding

Not:

- Player patience

---

# 28. Boss Scaling

Bosses scale through:

```
Additional Mechanics

Phase Changes

Arena Effects

Enemy Summons
```

---

# 29. Build Balance

Every character should support:

Minimum:

3 viable builds.

---

Example:

Arthur:

```
King

Warrior

Holy Champion
```

---

# 30. Balance Metrics

Track:

```
Average Run Time

Death Rate

Damage Taken

Damage Dealt

Skill Usage

Item Usage

Win Rate
```

---

# 31. AI Balance Testing

AI agents simulate:

```
Build Testing

Difficulty Testing

Loot Testing

Boss Testing
```

---

# 32. Automated Balance Reports

Generated reports include:

```
Overpowered Skills

Unused Items

Difficulty Spikes

Weak Characters
```

---

# 33. Technical Architecture

Scriptable Objects:

```
BalanceDefinition

DifficultyDefinition

ScalingDefinition

AffixBudgetDefinition
```

---

Runtime:

```
BalanceManager

DifficultyManager

ScalingManager

TelemetryManager
```

---

# 34. Balance Data Rules

All values must be data driven.

Avoid:

Hardcoded balance values.

---

# 35. AI Implementation Rules

AI agents must:

- Use approved balance values
- Document changes
- Provide reasoning
- Avoid power creep
- Test changes

---

# 36. Testing Requirements

Test:

## Progression

Does player growth feel rewarding?

---

## Difficulty

Are enemies challenging?

---

## Loot

Are rewards meaningful?

---

## Builds

Are multiple strategies viable?

---

# 37. Future Expansion

Possible additions:

- Seasonal challenges
- Leaderboards
- Community balance events
- AI generated encounter testing
- Endless dungeon modes

---

# Definition Of Done

Balance System complete when:

✓ Progression feels rewarding

✓ Difficulty scales correctly

✓ Loot remains valuable

✓ Builds remain viable

✓ Bosses remain challenging

✓ AI testing works

✓ Power creep is controlled
