---
title: Character Animation and Visual Identity System
document_id: SYS-012
version: 0.1
status: Draft
owner: Art and Technical Animation
engine: Unity 6 LTS
dependencies:
  - SYS-001 Character Framework
  - SYS-002 Combat System
  - SYS-008 Skill And Ability System
  - SYS-009 Inventory And Equipment System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-012 Character Animation & Visual Identity System

Version 0.1

---

# 1. Purpose

The Character Animation and Visual Identity System defines how characters look, move, and communicate their identity.

The system ensures:

- Arthur feels like a king
- Knights feel unique
- Equipment visibly changes characters
- AI-generated assets remain consistent
- Animation supports gameplay

---

# 2. Core Philosophy

The core principle:

> A player should know who they are fighting or playing before they read the name.

Visual identity comes from:

- Silhouette
- Movement
- Armour
- Weapons
- Effects
- Animation style

---

# 3. Design Pillars Supported

✓ Every Knight Is A Unique Fantasy

✓ Quality Over Quantity

✓ Loot Creates Possibilities

✓ Data Before Code

✓ Restore The Legend

---

# 4. Art Direction

The visual style combines:

- Dark medieval fantasy
- Arthurian mythology
- High fantasy magic
- Cinematic realism

Inspirations:

- Diablo IV atmosphere
- Path of Exile II complexity
- Dark Souls environmental storytelling
- Arthurian medieval artwork

---

# 5. Character Visual Hierarchy

Every character is designed using:

```
Silhouette

↓

Armour

↓

Weapon

↓

Animation

↓

Effects
```

---

# 6. Character Asset Structure

Every character requires:

```
Character Root

├── Skeleton

├── Body Mesh

├── Armour Attachments

├── Weapon Attachments

├── VFX Points

└── Animation Controller
```

---

# 7. Modular Character System

Characters use modular equipment.

Equipment attaches to:

```
Helmet Socket

Chest Socket

Shoulder Socket

Hand Socket

Back Socket

Weapon Socket
```

---

# 8. Armour Visual Requirements

Every armour piece requires:

```
3D Model

Texture Set

Material

LOD Versions

Collision

Icon
```

---

# 9. Equipment Visual Philosophy

Equipment rarity must be visible.

---

Common:

Simple materials.

Minimal decoration.

---

Rare:

Improved materials.

Additional details.

---

Epic:

Distinctive designs.

Special effects.

---

Legendary:

Unique silhouette.

Custom effects.

---

# 10. Character Silhouette Rules

Characters must remain recognisable.

Examples:

---

Arthur:

Silhouette:

- Royal armour
- Long cloak
- Crown symbolism
- Excalibur

---

Lancelot:

Silhouette:

- Elegant knight
- Lightweight armour
- Fast movement

---

Gawain:

Silhouette:

- Heavy warrior
- Large weapon
- Powerful stance

---

Merlin:

Silhouette:

- Robes
- Staff
- Magical effects

---

# 11. Weapon Visual System

Weapons require:

```
Weapon Mesh

Grip Point

Animation Profile

Trail Effects

Impact Effects
```

---

# 12. Weapon Identity

Weapons are not interchangeable visually.

Examples:

Sword:

Fast elegant attacks.

---

Greatsword:

Heavy sweeping animations.

---

Staff:

Spell casting animations.

---

Bow:

Ranged attack animations.

---

# 13. Animation Architecture

Unity implementation:

```
Animator Controller

↓

Animation State Machine

↓

Character Actions
```

---

# 14. Required Animation States

Every playable character requires:

## Movement

```
Idle

Walk

Run

Dodge

Turn
```

---

## Combat

```
Basic Attack Combo

Heavy Attack

Hit Reaction

Block

Skill Cast

Ultimate
```

---

## Status

```
Burning

Frozen

Stunned

Death
```

---

# 15. Combat Animation Requirements

Every attack must communicate:

- Start
- Impact
- Recovery

---

The player must understand:

"When can I act again?"

---

# 16. Ability Animation Rules

Every ability requires:

```
Cast Animation

Effect Timing

Impact Frame

Recovery
```

---

# 17. Ultimate Animation Rules

Ultimate abilities require:

- Unique animation
- Camera emphasis
- Strong VFX
- Audio signature

---

Example:

Arthur:

"Call Of The Round Table"

Animation:

Arthur raises Excalibur.

Spectral knights appear.

Camelot banner rises.

---

# 18. Facial Identity

Characters require:

- Unique faces
- Expressions
- Dialogue poses

---

Priority:

1. Main characters
2. Knights
3. Bosses
4. Important NPCs

---

# 19. NPC Visual System

NPCs are generated using:

```
Body Template

Clothing Set

Faction Style

Role Indicators
```

---

Examples:

Merchant:

Rich clothing.

---

Blacksmith:

Heavy apron.

---

Mage:

Arcane symbols.

---

# 20. Enemy Visual Identity

Enemies must communicate:

Faction.

Examples:

---

Saxon:

Military equipment.

---

Fae:

Organic magical designs.

---

Undead:

Broken armour.

---

Morgana Cult:

Dark magical symbols.

---

# 21. VFX Requirements

Effects include:

```
Magic

Weapon Trails

Impact Effects

Environment Effects

Ultimate Effects
```

---

# 22. AI Asset Generation Rules

AI agents creating assets must provide:

```
Asset Name

Category

Reference Style

Poly Count

Texture Resolution

Material Type

Unity Import Settings
```

---

# 23. Asset Naming Convention

Format:

```
CATEGORY_CHARACTER_DESCRIPTION_VERSION
```

Examples:

```
CHR_ARTHUR_ARMOUR_KINGLY_V001

WPN_EXCALIBUR_LEGENDARY_V001

FX_MERLIN_FIREBALL_V001
```

---

# 24. Unity Import Standards

Models:

- Correct scale
- Correct orientation
- Optimised topology

Textures:

- PBR workflow
- Consistent naming

Animations:

- Humanoid compatible where possible

---

# 25. Performance Requirements

Targets:

Characters:

<100k triangles.

---

Equipment:

Modular optimisation.

---

Effects:

GPU efficient.

---

# 26. Technical Architecture

Required:

```
CharacterPrefab

AnimatorController

Avatar

EquipmentRenderer

VFXController
```

---

Runtime:

```
AnimationManager

EquipmentVisualManager

CharacterAppearanceSystem

VFXManager
```

---

# 27. AI Implementation Rules

AI agents must:

- Follow art direction
- Maintain naming standards
- Create reusable assets
- Avoid inconsistent styles
- Document generated assets

---

# 28. Testing Requirements

Test:

## Animation

Movement works.

---

## Equipment

Visual changes apply.

---

## Performance

Multiple characters perform correctly.

---

## Consistency

Assets match style guide.

---

# 29. Future Expansion

Possible additions:

- Facial animation
- Cinematic animation system
- Mount animations
- Weather reactions
- Destruction effects

---

# Definition Of Done

Character Visual System complete when:

✓ Characters have unique silhouettes

✓ Equipment changes appearance

✓ Animations function

✓ Skills have effects

✓ AI assets follow standards

✓ Unity pipeline is validated

✓ Performance targets are met
