---
title: Loot System Implementation
document_id: IMP-006
version: 0.1
status: Draft
owner: Gameplay Architecture
engine: Unity 6 LTS
dependencies:
  - IMP-004 Combat Framework Implementation
  - IMP-005 Enemy AI Framework Implementation
  - SYS-003 Loot System
  - SYS-008 Skill And Ability System
  - SYS-030 Procedural Loot Generation And Itemization Advanced System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-006 Loot System Implementation

Version 0.1

---

# 1. Purpose

This document defines the foundation loot and itemisation architecture.

The loot system provides:

```
Rewards

Character Progression

Build Customisation

Equipment Identity
```

---

# 2. Loot Philosophy

Loot should feel:

```
Exciting

Meaningful

Personal

Rare
```

---

# 3. Loot Architecture

The loot pipeline:

```
Enemy Death

↓

Loot Generation

↓

Item Creation

↓

Item Validation

↓

Player Pickup

↓

Inventory

↓

Equipment
```

---

# 4. Folder Structure

Create:

```
Assets/Game/Loot/
```

Structure:

```
Loot/

├── Generation

├── Items

├── Weapons

├── Armour

├── Affixes

├── Rarity

├── Inventory

└── Data
```

---

# 5. Required Scripts

Create:

```
LootService.cs

LootGenerator.cs

ItemInstance.cs

ItemDefinitionSO.cs

EquipmentComponent.cs

InventoryComponent.cs

AffixSystem.cs
```

---

# 6. Item Architecture

Items are divided into:

```
Definition

↓

Runtime Instance
```

---

Definition:

```
Scriptable Object
```

---

Runtime:

```
Player Owned Item
```

---

# 7. Item Definition

Create:

```
ItemDefinitionSO.cs
```

Location:

```
Loot/Data/
```

---

Contains:

```
Item Name

Description

Icon

Item Type

Base Stats

Required Level
```

---

# 8. Item Types

Initial:

```
Weapon

Helmet

Chest

Gloves

Boots

Ring

Amulet
```

---

# 9. Item Instance

Create:

```
ItemInstance.cs
```

---

Contains:

```
Unique ID

Definition Reference

Generated Stats

Affixes

Upgrade Data
```

---

# 10. Item Rarity

Create:

```
RarityDefinitionSO.cs
```

---

Initial tiers:

```
Common

Uncommon

Rare

Epic

Legendary

Mythic
```

---

# 11. Rarity Rules

Common:

```
No Affixes
```

---

Uncommon:

```
1 Affix
```

---

Rare:

```
2-3 Affixes
```

---

Epic:

```
3-4 Affixes
```

---

Legendary:

```
Unique Effect
```

---

# 12. Affix System

Create:

```
AffixSystem.cs
```

---

Purpose:

Generate random item modifiers.

---

Examples:

```
+Strength

+Health

+Critical Chance

+Attack Speed

+Fire Damage
```

---

# 13. Affix Definition

Create:

```
AffixDefinitionSO.cs
```

---

Contains:

```
Name

Stat Type

Minimum Value

Maximum Value

Rarity Restrictions
```

---

# 14. Weapon System

Create:

```
WeaponDefinitionSO.cs
```

---

Contains:

```
Weapon Type

Damage Range

Attack Speed

Animation Set
```

---

# 15. Initial Weapons

Create:

```
Long Sword

Great Sword

Dagger

Staff

Bow
```

---

# 16. Armour System

Create:

```
ArmourDefinitionSO.cs
```

---

Contains:

```
Defence

Weight

Bonus Stats
```

---

# 17. Loot Generator

Create:

```
LootGenerator.cs
```

---

Purpose:

Create random rewards.

---

Input:

```
Enemy Level

Drop Chance

Loot Table
```

---

Output:

```
Item Instance
```

---

# 18. Loot Tables

Create:

```
LootTableSO.cs
```

---

Contains:

```
Possible Items

Drop Weights

Rarity Chances
```

---

# 19. Enemy Loot Integration

Enemy death flow:

```
EnemyKilledEvent

↓

LootService

↓

LootGenerator

↓

Spawn Loot
```

---

# 20. Loot Service

Create:

```
LootService.cs
```

---

Responsibilities:

```
Generate Loot

Spawn Loot

Manage Drop Rules
```

---

# 21. World Loot Object

Create:

```
LootPickup.cs
```

---

Behaviour:

```
Detect Player

Show Item

Allow Pickup
```

---

# 22. Inventory Integration

Create:

```
InventoryComponent.cs
```

---

Initial capacity:

```
50 Slots
```

---

Functions:

```
Add Item

Remove Item

Check Space
```

---

# 23. Equipment System

Create:

```
EquipmentComponent.cs
```

---

Slots:

```
Weapon

Helmet

Chest

Gloves

Boots

Ring

Amulet
```

---

# 24. Character Stat Integration

Equipment modifies:

```
CombatStats
```

---

Example:

Sword:

```
+20 Attack Power
```

---

# 25. Legendary Item Foundation

Create support for:

```
Unique Effects
```

---

Example:

```
Excalibur

Effect:
Holy damage increases against corrupted enemies
```

---

# 26. Test Items

Create:

```
Iron Sword

Leather Armour

Knight Ring
```

---

# 27. Test Scene

Use:

```
03_TestArena
```

---

Setup:

```
Enemy

Loot Drop

Player Pickup
```

---

# 28. Testing Requirements

## Drop Test

Expected:

```
Enemy drops loot
```

---

## Pickup Test

Expected:

```
Player receives item
```

---

## Generation Test

Expected:

```
Stats generate correctly
```

---

## Equipment Test

Expected:

```
Stats apply to player
```

---

# 29. Performance Requirements

Loot system must:

```
Pool pickup objects

Avoid unnecessary generation

Support many drops
```

---

# 30. AI Agent Rules

Before coding:

```
Read SYS-003

Read SYS-030

Read IMP-004
```

---

During coding:

```
Use data-driven design

Avoid hardcoded items

Use Scriptable Objects
```

---

After coding:

```
Compile

Test drops

Document changes
```

---

# 31. Future Compatibility

System must support:

```
Procedural Dungeons

Boss Rewards

Crafting

Trading

Set Items

Legendary Weapons
```

---

# 32. Acceptance Criteria

IMP-006 complete when:

✓ Enemies drop loot

✓ Loot generates correctly

✓ Items have rarity

✓ Affixes work

✓ Inventory receives items

✓ Equipment modifies stats

✓ Legendary framework exists

---

# Definition Of Done

The Loot System is complete when defeating enemies creates a meaningful progression loop that encourages exploration and experimentation.
