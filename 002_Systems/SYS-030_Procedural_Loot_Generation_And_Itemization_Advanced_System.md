---
title: Procedural Loot Generation and Itemization Advanced System
document_id: SYS-030
version: 0.1
status: Draft
owner: Loot And Economy Design
engine: Unity 6 LTS
dependencies:
  - SYS-003 Loot System
  - SYS-009 Inventory And Equipment System
  - SYS-011 Crafting And Economy System
  - SYS-017 Game Balance And Difficulty System
  - SYS-022 Character Class And Knight Roster System
  - SYS-023 Art Direction And Asset Production System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-030 Procedural Loot Generation & Itemization Advanced System

Version 0.1

---

# 1. Purpose

This document expands the loot system into a complete Diablo-style itemisation framework.

The goal is to create a loot ecosystem where every drop can create excitement.

The system controls:

- Weapons
- Armour
- Accessories
- Affixes
- Rarity
- Legendary items
- Unique Arthurian relics
- Stat balancing
- Visual generation

---

# 2. Core Philosophy

The core principle:

> Every weapon has a story. Every item is a potential legend.

Loot should create:

"I can't believe I found this."

moments.

---

# 3. Design Pillars Supported

✓ Rich Loot System

✓ Character Build Diversity

✓ Long Term Progression

✓ Every Run Creates A Story

✓ Restore The Legend

---

# 4. Loot System Goals

Loot must provide:

```
Power Growth

Build Customisation

Visual Identity

Collection Goals

Replay Motivation
```

---

# 5. Item Categories

Equipment slots:

```
Main Weapon

Off Hand

Helmet

Chest

Gloves

Boots

Ring

Amulet

Relic
```

---

# 6. Weapon Categories

Initial weapons:

```
Sword

Greatsword

Axe

Spear

Bow

Staff

Dagger

Shield
```

---

# 7. Armour Categories

```
Heavy Armour

Medium Armour

Light Armour

Mystic Armour
```

---

# 8. Item Generation Pipeline

Items are generated:

```
Base Item

↓

Item Level

↓

Rarity

↓

Stat Budget

↓

Affixes

↓

Visual Appearance

↓

Lore Generation
```

---

# 9. Base Item System

Every item begins with:

```
Base Definition
```

Example:

```
Knight Sword

Damage: 50

Speed: Medium

Class: Sword
```

---

# 10. Item Level

Item level determines:

```
Stat Range

Available Affixes

Maximum Power
```

---

Example:

Level 10 Sword:

```
Damage 40-60
```

Level 50 Sword:

```
Damage 300-450
```

---

# 11. Rarity System

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

# 12. Common Items

Properties:

```
Base Stats Only
```

Purpose:

Early progression.

---

# 13. Uncommon Items

Properties:

```
1 Affix
```

---

# 14. Rare Items

Properties:

```
2-4 Affixes
```

---

# 15. Epic Items

Properties:

```
Powerful Affixes

Unique Bonuses
```

---

# 16. Legendary Items

Properties:

```
Unique Model

Unique Effect

Unique Lore
```

---

# 17. Mythic Items

Extremely rare.

Properties:

```
Changing Build Mechanics

Arthurian Significance
```

---

# 18. Affix System

Affixes are generated from pools.

Types:

```
Offensive

Defensive

Utility

Elemental

Class Specific

Legendary
```

---

# 19. Offensive Affixes

Examples:

```
+Damage

+Critical Chance

+Attack Speed

+Skill Damage
```

---

# 20. Defensive Affixes

Examples:

```
+Health

+Armour

+Resistance

+Healing
```

---

# 21. Utility Affixes

Examples:

```
+Movement Speed

+Cooldown Reduction

+Resource Generation
```

---

# 22. Elemental Affixes

Examples:

```
Fire Damage

Ice Damage

Lightning Damage

Holy Damage

Shadow Damage
```

---

# 23. Arthurian Affixes

Unique to the setting.

Examples:

```
Avalon's Blessing

Knight's Oath

Dragon Blood

Fae Whisper

Merlin's Wisdom
```

---

# 24. Stat Budget System

Every item receives a power budget.

Formula:

```
Item Power

=

Base Power

+

Affix Budget

+

Legendary Budget
```

---

# 25. Affix Limits

Each item has:

```
Maximum Power

Maximum Number Of Affixes

Allowed Affix Tier
```

---

# 26. Preventing Broken Items

The system prevents:

```
Infinite Damage

Infinite Defence

Permanent Invulnerability
```

---

Rules:

```
Caps

Diminishing Returns

Mutually Exclusive Affixes
```

---

# 27. Prefix And Suffix System

Classic RPG structure.

Example:

```
Flaming Sword Of The Knight
```

Prefix:

```
Flaming
```

Suffix:

```
Of The Knight
```

---

# 28. Visual Item Generation

Appearance is generated from:

```
Base Model

Material

Decoration

Glow

Effects
```

---

# 29. Example Generated Weapon

Base:

```
Knight Sword
```

+

Prefix:

```
Avalonian
```

+

Suffix:

```
Of The Phoenix
```

Result:

```
Avalonian Sword Of The Phoenix
```

Appearance:

- Silver blade
- Blue runes
- Fire effect

---

# 30. Legendary Item System

Legendary items are handcrafted definitions.

Examples:

---

# Excalibur

Type:

Mythic Sword

Effect:

```
Holy damage increases with Authority
```

---

# Arondight

Lancelot's Blade.

Effect:

```
Critical attacks create additional strikes
```

---

# Rhongomyniad

Legendary Spear.

Effect:

```
Pierces enemy defences
```

---

# 31. Set Items

Optional expansion.

Examples:

```
Armour Of The Round Table
```

Bonuses:

2 pieces:

```
Defence Bonus
```

4 pieces:

```
Knight Aura
```

6 pieces:

```
Legendary Ability
```

---

# 32. Loot Drop Sources

Items come from:

```
Enemies

Bosses

Chests

Events

Crafting

Quests
```

---

# 33. Boss Loot Rules

Bosses drop:

```
Guaranteed Reward

+

Random Loot

+

Chance For Legendary
```

---

# 34. Character Specific Loot

Characters influence drops.

Example:

Playing Lancelot:

Higher chance:

```
Swords

Critical Items

Duelist Gear
```

---

# 35. Smart Loot

Optional system.

Loot considers:

```
Current Character

Missing Slots

Build Direction
```

---

# 36. Crafting Integration

Players can:

```
Upgrade

Reroll

Combine

Enchant
```

---

# 37. Loot Economy

Items have:

```
Sell Value

Salvage Value

Crafting Value
```

---

# 38. Inventory Integration

Items display:

```
Stats

Comparison

Lore

Appearance

Effects
```

---

# 39. Technical Architecture

Data:

```
ItemDefinition

AffixDefinition

LootTableDefinition

LegendaryDefinition
```

---

Runtime:

```
LootGenerator

AffixGenerator

StatCalculator

ItemManager

DropManager
```

---

# 40. AI Item Generation Rules

AI agents may create:

```
New Items

Affixes

Legendaries

Lore
```

But must define:

```
Power Level

Stat Budget

Build Purpose

Balance Impact
```

---

# 41. Testing Requirements

Test:

## Balance

Are items fair?

---

## Variety

Are builds different?

---

## Progression

Does loot feel rewarding?

---

## Economy

Are items valuable?

---

# 42. Future Expansion

Possible additions:

```
Ancient Items

Corrupted Items

Rune System

Enchanting

Transmutation

Legendary Crafting
```

---

# Definition Of Done

Loot System complete when:

✓ Items generate procedurally

✓ Stats remain balanced

✓ Equipment looks unique

✓ Legendary items feel special

✓ Builds are diverse

✓ AI can safely create new loot
