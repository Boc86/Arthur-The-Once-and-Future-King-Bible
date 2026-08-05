---
title: Inventory and Equipment System
document_id: SYS-009
version: 0.1
status: Draft
owner: Gameplay Systems
engine: Unity 6 LTS
dependencies:
  - SYS-001 Character Framework
  - SYS-003 Loot System
  - SYS-008 Skill And Ability System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-009 Inventory & Equipment System

Version 0.1

---

# 1. Purpose

The Inventory and Equipment System manages all items owned by the player and controls how equipment affects characters.

This system connects:

- Loot acquisition
- Character builds
- Visual appearance
- Progression
- Economy

---

# 2. Philosophy

The core principle:

> Every item should feel like a choice, not a number increase.

The player should constantly ask:

"Does this weapon change how I play?"

---

# 3. Design Pillars Supported

✓ Loot Creates Possibilities

✓ Every Knight Is A Unique Fantasy

✓ Combat Is Simple, Deep And Rewarding

✓ Data Before Code

---

# 4. System Overview

The inventory loop:

```
Find Item

↓

Inspect Item

↓

Compare Options

↓

Equip / Store / Salvage

↓

Improve Character
```

---

# 5. Inventory Structure

The player inventory contains:

```
Equipment

Consumables

Materials

Quest Items

Lore Items

Currency
```

---

# 6. Inventory Architecture

Inventory uses:

```
InventoryComponent
```

Contains:

```
Inventory Slots

Capacity

Item Instances

Sorting Rules

Filters
```

---

# 7. Item Storage

Items are stored as:

```
ItemInstance
```

Contains:

```
Item Definition

Unique Seed

Rolled Stats

Affixes

Durability

Appearance Data
```

---

# 8. Inventory Capacity

Initial design:

Equipment:

Unlimited storage.

---

Materials:

Unlimited storage.

---

Consumables:

Limited slots.

---

Reason:

The game should focus on choices, not inventory management.

---

# 9. Equipment Slots

Characters have:

```
Main Hand

Off Hand

Helmet

Chest

Gloves

Legs

Boots

Ring 1

Ring 2

Relic
```

---

# 10. Equipment Requirements

Items may have:

```
Level Requirement

Stat Requirement

Character Requirement

Quest Requirement
```

---

# 11. Weapon System

Weapons define:

- Damage
- Attack style
- Animations
- Skill interactions

---

Examples:

Sword:

Balanced.

---

Greatsword:

Slow powerful attacks.

---

Staff:

Magic abilities.

---

# 12. Armour System

Armour provides:

- Defence
- Resistances
- Appearance

---

Armour categories:

```
Light

Medium

Heavy

Royal

Mystic
```

---

# 13. Visual Equipment System

Equipment must affect the character model.

Architecture:

```
Character Base Model

↓

Equipment Layers

↓

Materials

↓

Effects
```

---

# 14. Armour Appearance Rules

Every equipment piece requires:

```
Mesh

Material

Icon

Rarity Visual

Effects
```

---

# 15. Weapon Appearance Rules

Weapons require:

```
Weapon Model

Animation Profile

Trail Effects

Sound Profile
```

---

# 16. Item Comparison System

Players can compare:

Current item:

```
↓

New item

↓

Stat Difference

↓

Build Impact
```

---

Comparison shows:

- Damage change
- Defence change
- Skill effects
- Affix differences

---

# 17. Equipment Loadouts

Characters support saved builds.

Example:

Arthur:

## King Build

Defence + Leadership.

---

## Excalibur Build

Holy damage.

---

## Warrior Build

Raw melee power.

---

# 18. Salvage System

Unwanted items can be salvaged.

Salvage produces:

```
Materials

Crafting Components

Essence
```

---

# 19. Salvage Rules

Higher rarity:

=

Better materials.

---

Legendary items:

Provide unique resources.

---

# 20. Storage System

Camelot provides storage.

Unlocked through:

The Treasury.

---

Storage contains:

```
Shared Items

Legendary Collection

Materials

Builds
```

---

# 21. Loot Filtering

Players can create filters.

Examples:

Keep:

Legendary Items

---

Auto salvage:

Common Items

---

Highlight:

Critical chance weapons

---

# 22. Equipment Effects

Equipment can modify:

## Stats

Example:

+Strength

---

## Skills

Example:

Royal Cleave gains range.

---

## Behaviour

Example:

Dodge creates flames.

---

# 23. Legendary Equipment

Legendary items have unique presentation.

Requirements:

- Unique name
- Unique model
- Unique effect
- Lore entry

---

Example:

## Excalibur

Appearance:

Ancient golden sword.

Effect:

Holy attacks cleanse corruption.

---

# 24. Relic System

Relics are special artefacts.

Examples:

## Merlin's Crystal

Improves magic.

---

## Round Table Fragment

Improves knight abilities.

---

## Holy Grail

Improves healing.

---

# 25. Equipment Upgrade System

Future support:

```
Upgrade

Enchant

Socket

Reforge

Awaken
```

---

# 26. Technical Architecture

Scriptable Objects:

```
ItemDefinition

WeaponDefinition

ArmourDefinition

EquipmentSlotDefinition

LootFilterDefinition
```

---

Runtime:

```
InventoryManager

EquipmentManager

AppearanceManager

ItemComparisonSystem

SalvageManager
```

---

# 27. Events

Inventory events:

```
ItemAdded

ItemRemoved

ItemEquipped

ItemUnequipped

ItemSalvaged

LegendaryCollected
```

---

# 28. Save Data

Store:

```
Inventory

Equipment

Loadouts

Storage

Filters

Collections
```

---

# 29. AI Implementation Rules

AI agents must:

- Use existing item systems
- Never create duplicate inventory logic
- Maintain visual consistency
- Respect equipment restrictions

---

# 30. Testing Requirements

Test:

## Inventory

Items store correctly.

---

## Equipment

Stats update correctly.

---

## Appearance

Models update correctly.

---

## Persistence

Items save correctly.

---

# 31. Future Expansion

Possible additions:

- Weapon crafting
- Armour dyes
- Transmog system
- Set bonuses
- Legendary collections
- Trading

---

# Definition Of Done

Inventory System complete when:

✓ Items can be stored

✓ Equipment works

✓ Appearance updates

✓ Stats apply

✓ Salvage works

✓ Loadouts work

✓ Legendary items display correctly

✓ AI agents can expand safely
