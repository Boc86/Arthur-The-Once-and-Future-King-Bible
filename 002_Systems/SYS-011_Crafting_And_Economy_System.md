---
title: Crafting and Economy System
document_id: SYS-011
version: 0.1
status: Draft
owner: Gameplay Systems
engine: Unity 6 LTS
dependencies:
  - SYS-003 Loot System
  - SYS-009 Inventory And Equipment System
  - SYS-005 Camelot Meta Progression
  - SYS-004 Procedural World Generation
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-011 Crafting & Economy System

Version 0.1

---

# 1. Purpose

The Crafting and Economy System defines how players improve, transform, and maintain their equipment.

The system provides long-term progression beyond simply finding stronger loot.

The player should feel like they are rebuilding the legendary arsenal of Britain.

---

# 2. Core Philosophy

The core principle:

> A legendary weapon is not found. It is restored.

Crafting exists to:

- Improve existing items
- Preserve valuable discoveries
- Create build opportunities
- Give meaning to materials

---

# 3. Design Pillars Supported

✓ Loot Creates Possibilities

✓ Restore The Legend

✓ The World Must Remember

✓ Quality Over Quantity

✓ Data Before Code

---

# 4. Economy Loop

The economy cycle:

```
Explore World

↓

Collect Resources

↓

Salvage Equipment

↓

Craft / Upgrade

↓

Improve Build

↓

Explore Harder Content
```

---

# 5. Economy Resources

Initial resources:

```
Gold

Materials

Essence

Runes

Legendary Components

Memories
```

---

# 6. Gold System

Gold is the basic currency of Britain.

Used for:

- Repairs
- Crafting
- Merchant purchases
- Services
- Upgrades

---

# 7. Gold Philosophy

Gold should always have meaningful uses.

Avoid:

- Infinite accumulation
- Worthless currency

---

# 8. Material System

Materials are obtained from:

- Enemy drops
- Salvaging
- Exploration
- Events
- Boss rewards

---

# 9. Material Categories

## Common Materials

Used for:

- Basic upgrades
- Repairs

Examples:

```
Iron

Leather

Wood
```

---

## Rare Materials

Used for:

- Advanced crafting

Examples:

```
Fae Crystal

Dragon Scale

Ancient Silver
```

---

## Legendary Materials

Used for:

- Artefacts
- Mythic equipment

Examples:

```
Fragment Of Excalibur

Merlin's Essence

Mordred's Shadow
```

---

# 10. Crafting Architecture

Crafting uses:

```
RecipeDefinition
```

Contains:

```
Recipe ID

Required Materials

Output Item

Requirements

Quality Rules
```

---

# 11. Crafting Stations

Crafting is performed at Camelot facilities.

---

# Blacksmith

Creates and improves weapons.

---

# Armoury

Creates armour.

---

# Merlin's Tower

Handles magical upgrades.

---

# Library Of Avalon

Restores lost artefacts.

---

# 12. Blacksmith System

The Blacksmith provides:

## Upgrade

Increase item power.

---

## Repair

Restore damaged equipment.

---

## Reforge

Change affixes.

---

## Restore

Recover legendary items.

---

# 13. Upgrade System

Items can be upgraded.

Process:

```
Select Item

↓

Choose Upgrade

↓

Spend Materials

↓

Increase Power
```

---

Upgrade improves:

- Base stats
- Affix values
- Visual effects

---

# 14. Upgrade Limits

To prevent infinite scaling:

Every item has:

```
Maximum Upgrade Level

Power Budget

Material Cost Curve
```

---

# 15. Enchanting System

Enchanting modifies equipment.

Examples:

Add:

```
Fire Damage

Critical Chance

Resistance

Cooldown Reduction
```

---

# 16. Enchantment Rules

Items have limited enchantment capacity.

Example:

Rare Item:

1 enchant slot.

---

Legendary:

2 enchant slots.

---

# 17. Reforging System

Reforging allows players to alter existing items.

Possible changes:

- Replace one affix
- Improve roll quality
- Change damage type

---

# 18. Legendary Restoration

Legendary items are recovered through quests.

Example:

## Excalibur

Requires:

```
Broken Blade

+

Avalon Crystal

+

Arthur's Memory
```

Result:

Restored Excalibur.

---

# 19. Merchant System

Merchants appear in Camelot and the world.

---

Merchant types:

```
Weaponsmith

Armourer

Mystic

Collector

Traveller
```

---

# 20. Merchant Inventory

Merchant stock is generated from:

- Player level
- Camelot upgrades
- Region progression
- Reputation

---

# 21. Reputation Economy

Certain groups track reputation.

Examples:

```
Knights Of Camelot

Avalon Fae

Saxon Clans

Merlin's Followers
```

---

Reputation unlocks:

- Rare items
- Special quests
- Unique crafting

---

# 22. Salvage Integration

Salvage converts unwanted equipment into:

```
Materials

Essence

Fragments
```

---

Higher rarity:

=

Better rewards.

---

# 23. Essence System

Essence represents magical power extracted from equipment.

Used for:

- Enchanting
- Legendary upgrades
- Magical research

---

# 24. Economy Balance Rules

AI agents must follow:

## No Infinite Resource Loops

Players should always have meaningful decisions.

---

## Rare Materials Must Stay Valuable

---

## Powerful Items Require Investment

---

# 25. Loot Economy Integration

The economy supports:

```
Find Item

↓

Improve Item

↓

Create Build

↓

Find Better Item

↓

Repeat
```

---

# 26. Technical Architecture

Scriptable Objects:

```
RecipeDefinition

MaterialDefinition

UpgradeDefinition

EnchantmentDefinition

MerchantDefinition
```

---

Runtime:

```
CraftingManager

EconomyManager

MerchantManager

UpgradeSystem

ReforgeSystem
```

---

# 27. Events

Economy events:

```
ItemCrafted

ItemUpgraded

ItemEnchanted

MaterialCollected

LegendaryRestored
```

---

# 28. Save Data

Store:

```
Gold

Materials

Recipes

MerchantUnlocks

CraftingProgress

Reputation
```

---

# 29. AI Implementation Rules

AI agents must:

- Respect economy balance
- Avoid creating infinite rewards
- Use existing crafting systems
- Document new recipes
- Maintain material rarity

---

# 30. Testing Requirements

Test:

## Economy

Are resources valuable?

---

## Crafting

Do recipes work?

---

## Balance

Can players progress?

---

## Persistence

Are upgrades saved?

---

# 31. Future Expansion

Possible additions:

- Player blacksmith NPC
- Weapon forging quests
- Legendary weapon evolution
- Kingdom trade routes
- Clan economies
- Artifact archaeology

---

# Definition Of Done

Crafting System complete when:

✓ Materials exist

✓ Crafting works

✓ Upgrades work

✓ Enchanting works

✓ Merchants work

✓ Economy remains balanced

✓ Legendary restoration works

✓ AI agents can safely expand
