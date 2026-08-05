---
title: Character Progression Leveling and Meta Advancement System
document_id: SYS-034
version: 0.1
status: Draft
owner: Progression Design
engine: Unity 6 LTS
dependencies:
  - SYS-005 Camelot Meta Progression
  - SYS-022 Character Class And Knight Roster System
  - SYS-027 Player Experience And Game Loop System
  - SYS-028 Camelot Hub And Kingdom Development System
  - SYS-030 Procedural Loot Generation And Itemization Advanced System
  - SYS-031 Combat Ability And Buildcraft System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-034 Character Progression, Leveling & Meta Advancement System

Version 0.1

---

# 1. Purpose

This document defines all progression systems in Arthur: The Once and Future King.

The progression system must support:

- Short term power growth
- Long term kingdom development
- Character mastery
- Meaningful deaths
- Endless replayability

---

# 2. Core Philosophy

The core principle:

> Every battle makes Arthur stronger. Every death makes the legend stronger.

---

# 3. Progression Layers

The game contains five progression layers:

```
Run Progression

Character Progression

Knight Mastery

Camelot Progression

Account Progression
```

---

# 4. Progression Overview

During a run:

```
Gain XP

↓

Level Up

↓

Choose Upgrades

↓

Find Equipment

↓

Defeat Bosses

↓

Complete Objectives
```

---

After death:

```
Return To Camelot

↓

Spend Resources

↓

Unlock Permanent Power

↓

Begin Again
```

---

# 5. Run Progression

Run progression exists only during a single attempt.

Lost after death.

---

Includes:

```
Temporary Levels

Temporary Skills

Temporary Bonuses

Run Equipment
```

---

# 6. Character Experience System

Experience is gained from:

```
Enemies

Events

Objectives

Bosses

Discoveries
```

---

# 7. Character Levels

Each knight has:

```
Level 1-100
```

---

Level progression grants:

```
Stat Growth

Skill Points

Passive Unlocks

Ability Slots
```

---

# 8. Level Up Experience

XP curve:

```
Required XP increases each level
```

Formula:

```
XP Required =
Base XP × Level Scaling
```

---

# 9. Level Up Choices

Every level provides:

```
Stat Choice

Ability Upgrade

Passive Upgrade
```

---

Example:

Level 10 Arthur:

Choice:

```
+10% Sword Damage

+

+5% Health

+

Improved Block
```

---

# 10. Attribute System

Primary attributes:

```
Strength

Dexterity

Intelligence

Vitality

Spirit
```

---

# 11. Strength

Controls:

```
Physical Damage

Heavy Weapons

Armour Effectiveness
```

---

# 12. Dexterity

Controls:

```
Attack Speed

Critical Chance

Movement
```

---

# 13. Intelligence

Controls:

```
Magic Damage

Cooldown Reduction

Spell Effects
```

---

# 14. Vitality

Controls:

```
Health

Defence

Healing
```

---

# 15. Spirit

Controls:

```
Resource Generation

Ultimate Power

Magical Resistance
```

---

# 16. Knight Progression

Each knight has:

```
Character Level

Mastery Level

Relationship Level
```

---

# 17. Knight Mastery

Mastery rewards dedication.

Unlocks:

```
New Passives

New Cosmetics

New Abilities

Lore
```

---

# 18. Arthur Mastery Example

Levels:

---

## Novice King

Unlock:

Basic leadership.

---

## Warrior King

Unlock:

Combat bonuses.

---

## Legendary King

Unlock:

Royal abilities.

---

# 19. Skill Progression

Skills improve through:

```
Character Level

Skill Points

Run Upgrades

Legendary Items
```

---

# 20. Skill Trees

Each character has:

```
Core Tree

Combat Tree

Specialisation Tree
```

---

# 21. Arthur Skill Tree

Branches:

```
Sword Master

Protector

King Of Britain
```

---

# 22. Lancelot Skill Tree

Branches:

```
Duelist

Champion

Exiled Knight
```

---

# 23. Merlin Skill Tree

Branches:

```
Elemental

Arcane

Ancient Magic
```

---

# 24. Meta Progression

Permanent progression occurs after death.

---

Permanent systems:

```
Camelot

Knights

Knowledge

Equipment

Abilities
```

---

# 25. Death Currency

Arthur collects:

## Renown

Represents:

```
Legend

Recognition

Historical Impact
```

---

# 26. Renown Usage

Spend on:

```
Kingdom Upgrades

Permanent Bonuses

Unlocks
```

---

# 27. Camelot Permanent Upgrades

Examples:

Training Grounds:

```
+ Starting Skill Options
```

---

Library:

```
+ Lore Knowledge
```

---

Armoury:

```
+ Better Equipment Drops
```

---

# 28. Account-Level Unlocks

Unlocked forever:

```
Characters

Difficulty Modes

Lore

Cosmetics

Challenge Modes
```

---

# 29. Prestige System

After reaching maximum level:

Players unlock:

```
Legend Levels
```

---

# 30. Legend Levels

Infinite progression.

Rewards:

```
Small Stat Bonuses

Cosmetics

Titles
```

---

# 31. Difficulty Progression

Difficulty tiers:

```
Peasant

Knight

Champion

Legend

Mythic
```

---

# 32. Difficulty Scaling

Higher difficulty increases:

```
Enemy Power

Elite Chance

Loot Quality

World Corruption
```

---

# 33. Build Persistence

Players can save:

```
Preferred Builds

Equipment Sets

Skill Loadouts
```

---

# 34. Character Identity Protection

Progression must not make characters identical.

Example:

Arthur:

Always:

```
Leadership

Sword Combat

Royal Abilities
```

---

Lancelot:

Always:

```
Speed

Precision

Dueling
```

---

# 35. Progression Balance Rules

Avoid:

```
Mandatory Grinding

Exponential Power

Dead Choices
```

---

# 36. Reward Frequency

Players should receive:

Small rewards:

```
Minutes
```

---

Medium rewards:

```
Runs
```

---

Large rewards:

```
Milestones
```

---

# 37. Technical Architecture

Data:

```
LevelDefinition

SkillTreeDefinition

UpgradeDefinition

MasteryDefinition
```

---

Runtime:

```
ProgressionManager

ExperienceManager

SkillTreeManager

MasteryManager

MetaProgressionManager
```

---

# 38. AI Progression Rules

AI agents creating progression must define:

```
Purpose

Power Increase

Player Choice

Balance Impact
```

---

# 39. Testing Requirements

Test:

## Growth

Does power increase feel good?

---

## Choice

Do decisions matter?

---

## Balance

Are upgrades fair?

---

## Longevity

Does progression remain interesting?

---

# 40. Future Expansion

Possible additions:

```
Knight Relationships

Royal Titles

Dynasty System

Generational Heroes

Alternative Arthurs
```

---

# Definition Of Done

Progression System complete when:

✓ Players grow every run

✓ Death feels rewarding

✓ Knights develop uniquely

✓ Camelot permanently improves

✓ Builds remain meaningful

✓ Long-term replay exists
