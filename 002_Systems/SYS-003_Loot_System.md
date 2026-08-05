---
title: Loot System
document_id: SYS-003
version: 0.1
status: Draft
owner: Gameplay Systems
engine: Unity 6 LTS
dependencies:
  - PROJ-003 Design Pillars
  - PROJ-004 Core Gameplay Loop
  - SYS-001 Character Framework
  - SYS-002 Combat System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-003 Loot System

Version 0.1

---

# 1. Purpose

The Loot System defines the generation, acquisition, evaluation, and progression of all equipment and rewards.

Loot is one of the primary reasons players continue exploring fractured versions of Britain.

The system must create:

- Excitement
- Discovery
- Build experimentation
- Character identity
- Long-term progression

---

# 2. Loot Philosophy

The core principle:

> Every legendary object has a story.

Loot is not just a number increase.

A sword is:

- A piece of history
- A combat choice
- A visual identity
- A gameplay decision

---

# 3. Design Pillars Supported

✓ Loot Creates Possibilities

✓ Every Run Creates A Story

✓ Every Knight Is A Unique Fantasy

✓ Restore The Legend

✓ Data Before Code

---

# 4. Loot Gameplay Loop

The loot cycle:

```
Defeat Enemy

↓

Generate Reward

↓

Evaluate Item

↓

Equip / Store / Salvage

↓

Improve Build

↓

Attempt Harder Content
```

---

# 5. Item Categories

Initial equipment categories:

```
Weapons

Armour

Accessories

Relics

Consumables

Quest Items
```

---

# 6. Equipment Slots

Playable characters use:

```
Main Weapon

Helmet

Chest Armour

Gloves

Leg Armour

Boots

Ring 1

Ring 2

Relic
```

---

# 7. Weapon Types

Initial weapon families:

## Swords

Balanced melee.

Examples:

- Longsword
- Greatsword
- Excalibur

---

## Axes

High damage.

Strength focused.

---

## Spears

Range and precision.

---

## Bows

Dexterity focused.

---

## Staffs

Magic focused.

---

## Shields

Defensive builds.

---

# 8. Armour Types

Armour provides both gameplay and visual identity.

Categories:

```
Light Armour

Medium Armour

Heavy Armour

Royal Armour

Mystic Armour
```

---

# 9. Item Architecture

All items are created through:

```
ItemDefinition
```

Contains:

```
Item ID

Name

Type

Base Stats

Visual Reference

Lore

Affix Rules

Rarity

Restrictions
```

---

# 10. Runtime Item

Generated items use:

```
ItemInstance
```

Contains:

```
Item Definition

Rolled Stats

Affixes

Upgrade Level

Seed

Appearance Data
```

---

# 11. Procedural Generation

Items are generated using:

```
Item Generator

↓

Base Item

↓

Rarity

↓

Affix Pool

↓

Stat Rolls

↓

Visual Generation

↓

Final Item
```

---

# 12. Item Generation Seed

Every item receives a unique seed.

Example:

```
EXC-5839201
```

The seed determines:

- Affixes
- Values
- Appearance
- Lore variation

---

# 13. Rarity System

Initial rarity tiers:

## Common

Basic equipment.

---

## Uncommon

One or two modifiers.

---

## Rare

Multiple modifiers.

---

## Epic

Powerful build-defining items.

---

## Legendary

Unique identity items.

---

## Mythic

Extremely rare story-level artefacts.

---

# 14. Affix System

Affixes modify items.

Created using:

```
AffixDefinition
```

---

# 15. Affix Types

## Offensive

Examples:

```
+Physical Damage

+Critical Chance

+Attack Speed
```

---

## Defensive

Examples:

```
+Armour

+Health

+Resistance
```

---

## Utility

Examples:

```
+Movement Speed

Cooldown Reduction

Resource Generation
```

---

## Legendary Affixes

Unique mechanics.

Examples:

```
Attacks create holy explosions.

Skills summon spectral knights.

Dodging leaves flames behind.
```

---

# 16. Stat Roll System

Every generated stat has:

Minimum value:

```
MinRoll
```

Maximum value:

```
MaxRoll
```

---

Example:

Critical Chance:

```
Rare Sword

3% - 8%
```

Generated:

```
6.4%
```

---

# 17. Balance Protection

The system must prevent broken combinations.

Every affix has:

```
Power Budget

Weight

Restrictions

Maximum Stack
```

---

Example:

Critical Chance:

Maximum:

30%

---

Movement Speed:

Maximum:

40%

---

# 18. Item Power Level

Items have:

```
Item Level
```

Determined by:

- Region
- Difficulty
- Boss
- Timeline

---

Higher item level provides:

- Higher base stats
- Better affix ranges
- Access to rare modifiers

---

# 19. Legendary Items

Legendary items are designed objects.

They have:

- Unique name
- Unique model
- Unique effect
- Lore entry
- Special visual effects

---

Examples:

---

## Excalibur

Type:

Legendary Sword

Effect:

Holy damage increases against corrupted enemies.

Lore:

"The blade remembers the hand that first held it."

---

## Merlin's Staff

Effect:

Changes spell behaviour.

---

## Mordred's Blade

Effect:

Power increases as health decreases.

---

# 20. Visual Identity System

Loot must look different.

The player should identify valuable items visually.

---

Requirements:

Different:

- Silhouettes
- Materials
- Colours
- Effects
- Particle systems

---

Example:

Common Sword:

Simple iron blade.

---

Legendary Sword:

Ancient glowing weapon with unique effects.

---

# 21. Equipment Appearance

Equipment modifies character appearance.

Required:

```
Armour Mesh

Material

Weapon Model

Effects
```

---

# 22. Loot Tables

Loot generation uses:

```
LootTableDefinition
```

Contains:

```
Item Pools

Drop Rates

Region Rules

Enemy Rules

Boss Rewards
```

---

# 23. Enemy Loot Rules

Examples:

Bandits:

- Basic weapons
- Gold
- Leather armour

---

Fae:

- Magic items
- Rare materials

---

Undead Knights:

- Ancient armour
- Cursed weapons

---

# 24. Boss Rewards

Bosses provide:

- Guaranteed rewards
- Unique items
- Crafting materials
- Lore items

---

Example:

Defeat:

The Black Knight

Reward:

Black Iron Armour

---

# 25. Salvage And Economy

Players can:

- Equip
- Sell
- Salvage
- Upgrade

---

Salvage provides:

- Materials
- Crafting resources
- Enhancement currency

---

# 26. Crafting Integration

Future support:

```
Upgrade

Enchant

Reforge

Restore Legendary Items
```

---

# 27. Technical Architecture

Required Scriptable Objects:

```
ItemDefinition

WeaponDefinition

ArmourDefinition

AffixDefinition

LootTableDefinition
```

---

Runtime:

```
LootGenerator

ItemInstance

InventoryManager

EquipmentManager

AffixResolver
```

---

# 28. Events

Loot events:

```
ItemGenerated

ItemCollected

ItemEquipped

ItemSalvaged

LegendaryFound
```

---

# 29. AI Implementation Rules

AI agents creating loot must:

- Use existing generation framework
- Respect stat budgets
- Avoid power creep
- Create visual identity
- Add lore where appropriate

---

# 30. Testing Requirements

Test:

## Generation

Does the system create valid items?

---

## Balance

Are values within limits?

---

## Equipment

Do items correctly modify characters?

---

## Visuals

Are generated appearances valid?

---

# 31. Future Expansion

Possible additions:

- Set items
- Runewords
- Legendary collections
- Artifact restoration
- Knight-specific equipment
- Procedural legendary weapons

---

# Definition Of Done

Loot System complete when:

✓ Items generate procedurally

✓ Stats roll correctly

✓ Affixes work

✓ Equipment changes gameplay

✓ Equipment changes appearance

✓ Legendary items exist

✓ Balance limits exist

✓ AI agents can safely expand loot
