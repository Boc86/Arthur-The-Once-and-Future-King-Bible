---
title: Character Progression Implementation
document_id: IMP-007
version: 0.1
status: Draft
owner: Gameplay Architecture
engine: Unity 6 LTS
dependencies:
  - IMP-004 Combat Framework Implementation
  - IMP-006 Loot System Implementation
  - SYS-008 Skill And Ability System
  - SYS-022 Character Class And Knight Roster System
  - SYS-034 Character Progression Leveling And Meta Advancement System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-007 Character Progression Implementation

Version 0.1

---

# 1. Purpose

This document defines the character progression architecture.

The system controls:

```
Experience

Levels

Attributes

Skills

Abilities

Knight Identity
```

---

# 2. Progression Philosophy

Progression should create:

```
Power Growth

Player Choice

Build Diversity

Character Identity
```

---

# 3. Progression Architecture

The progression flow:

```
Combat

↓

Experience

↓

Level Up

↓

Attribute Points

↓

Skill Points

↓

Build Development
```

---

# 4. Folder Structure

Create:

```
Assets/Game/Characters/Progression/
```

Structure:

```
Progression/

├── Experience

├── Levels

├── Attributes

├── Skills

├── Abilities

└── Data
```

---

# 5. Required Scripts

Create:

```
ExperienceComponent.cs

LevelComponent.cs

AttributeSystem.cs

SkillTreeComponent.cs

AbilityLoadout.cs

ProgressionService.cs
```

---

# 6. Experience System

Create:

```
ExperienceComponent.cs
```

---

Purpose:

Track character progression.

---

Values:

```
Current XP

Required XP

Total XP
```

---

Methods:

```
AddExperience()

CheckLevelUp()

ResetXP()
```

---

# 7. XP Sources

Initial:

```
Enemy Kills

Boss Defeats

Quest Completion

Discovery Events
```

---

# 8. Level System

Create:

```
LevelComponent.cs
```

---

Initial maximum:

```
Level 50
```

---

Values:

```
Current Level

Experience Required

Rewards
```

---

# 9. Level Up Event

Create:

```
LevelUpEvent
```

---

When triggered:

```
Increase Level

Grant Attribute Points

Grant Skill Points

Update UI
```

---

# 10. Attribute System

Create:

```
AttributeSystem.cs
```

---

Base attributes:

```
Strength

Dexterity

Vitality

Intelligence

Faith
```

---

# 11. Attribute Purpose

Strength:

```
Physical Damage

Heavy Weapons
```

---

Dexterity:

```
Speed

Critical Chance

Precision
```

---

Vitality:

```
Health

Defence
```

---

Intelligence:

```
Magic Damage

Cooldown Reduction
```

---

Faith:

```
Holy Abilities

Healing

Blessings
```

---

# 12. Attribute Data

Create:

```
AttributeDefinitionSO.cs
```

---

Contains:

```
Name

Description

Stat Effects
```

---

# 13. Skill Point System

Create:

```
SkillTreeComponent.cs
```

---

Purpose:

Manage unlocked abilities.

---

Values:

```
Available Points

Unlocked Skills

Upgrade Levels
```

---

# 14. Ability Framework Integration

Connect with:

```
Ability System
```

---

Abilities require:

```
Level Requirement

Attribute Requirement

Skill Unlock
```

---

# 15. Ability Slots

Initial:

```
Primary Attack

Skill 1

Skill 2

Skill 3

Skill 4

Ultimate
```

---

# 16. Knight Identity System

Each knight has:

```
Unique Skills

Unique Passives

Unique Ultimate
```

---

Example:

Arthur:

```
Royal Leadership

Excalibur Strike

King's Judgement
```

---

# 17. Character Definition

Create:

```
CharacterDefinitionSO.cs
```

---

Contains:

```
Character Name

Starting Attributes

Abilities

Growth Values
```

---

# 18. Arthur Definition

Create:

```
ArthurDefinition.asset
```

---

Initial identity:

```
Balanced Warrior
```

---

Strengths:

```
Sword Combat

Leadership

Holy Damage
```

---

# 19. Passive Skills

Create:

```
PassiveAbilityDefinitionSO.cs
```

---

Examples:

Arthur:

```
Born To Rule

Knight's Resolve

Bearer Of Excalibur
```

---

# 20. Respec System

Future support:

```
Reset Skills

Change Build

Experiment
```

---

# 21. Equipment Integration

Progression must interact with:

```
Loot

Equipment

Combat Stats
```

---

Example:

Level:

```
+Strength
```

Sword:

```
+Attack Power
```

Result:

```
Higher Damage
```

---

# 22. Save Integration

Progression data must save:

```
Level

XP

Attributes

Skills

Abilities
```

---

# 23. Test Character

Use:

```
Arthur
```

---

Initial:

```
Level 1

Basic Sword

Basic Attack
```

---

# 24. Testing Scene

Use:

```
03_TestArena
```

---

Setup:

```
Arthur

Training Enemy

XP Reward
```

---

# 25. Testing Requirements

## XP Test

Expected:

```
Enemy defeat grants XP
```

---

## Level Test

Expected:

```
Level increases correctly
```

---

## Attribute Test

Expected:

```
Stats increase
```

---

## Skill Test

Expected:

```
Ability unlock works
```

---

# 26. Performance Requirements

Progression system must:

```
Avoid constant recalculation

Cache values

Use events
```

---

# 27. AI Agent Rules

Before coding:

```
Read IMP-004

Read IMP-006

Read SYS-034
```

---

During coding:

```
Keep progression data-driven

Avoid hardcoded characters

Use Scriptable Objects
```

---

After coding:

```
Compile

Test progression

Document changes
```

---

# 28. Future Compatibility

System must support:

```
Eight Knights

Multiple Builds

Difficulty Scaling

Endgame Progression

New Characters
```

---

# 29. Acceptance Criteria

IMP-007 complete when:

✓ XP is earned

✓ Levels increase

✓ Attributes exist

✓ Skills unlock

✓ Arthur has progression

✓ Save compatibility exists

✓ System supports multiple knights

---

# Definition Of Done

The Character Progression System is complete when Arthur can grow from an unknown warrior into the legendary Once and Future King.
