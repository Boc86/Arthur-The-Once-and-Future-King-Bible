---
title: Art Direction and Asset Production System
document_id: SYS-023
version: 0.1
status: Draft
owner: Art Direction And Technical Art
engine: Unity 6 LTS
dependencies:
  - SYS-012 Character Animation And Visual Identity
  - SYS-013 AI Development And MCP Asset Pipeline
  - SYS-018 Camera And Player Control System
  - SYS-021 Enemy Boss And Combat Encounter Design System
  - SYS-022 Character Class And Knight Roster System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-023 Art Direction & Asset Production System

Version 0.1

---

# 1. Purpose

The Art Direction and Asset Production System defines the visual identity and production workflow for Arthur: The Once and Future King.

This system allows AI agents to create, validate, and integrate:

- Characters
- Environments
- Weapons
- Armour
- Props
- VFX
- UI assets
- Animations

into Unity.

---

# 2. Core Philosophy

The core principle:

> Every object in Britain should look like it has a history.

The world should feel:

- Ancient
- Mythical
- Beautiful
- Dangerous
- Lived in

---

# 3. Visual Identity

The game combines:

```
Arthurian Legend

+

Dark Fantasy

+

High Fantasy RPG

+

Medieval Britain
```

---

# 4. Visual References

Primary inspiration:

```
Diablo IV

Path of Exile II

The Witcher

Dark Souls

King Arthur mythology
```

---

# 5. Art Style Direction

The visual style:

```
Realistic Stylised Fantasy
```

Not:

- Cartoon
- Hyper realistic simulation
- Low poly

---

# 6. Colour Philosophy

The world contrasts:

## Humanity

Colours:

- Warm gold
- Brown
- Steel
- Green

---

## Corruption

Colours:

- Purple
- Black
- Red
- Sickly green

---

## Magic

Colours:

- Blue
- Silver
- White
- Ancient gold

---

# 7. Asset Production Pipeline

Every asset follows:

```
Concept

↓

Generation

↓

Refinement

↓

Optimisation

↓

Unity Import

↓

Validation

↓

Production
```

---

# 8. AI Asset Creation Philosophy

AI creates the first version.

Human review or automated validation ensures:

- Quality
- Consistency
- Performance
- Lore accuracy

---

# 9. Asset Categories

Assets are divided into:

```
Characters

Enemies

Weapons

Armour

Environment

Props

VFX

Audio Visual Assets

UI
```

---

# 10. Asset Naming Convention

All assets follow:

```
CATEGORY_NAME_VARIANT_VERSION
```

Examples:

```
CHR_ARTHUR_KING_V001

WPN_EXCALIBUR_LEGENDARY_V001

ENV_CAMELOT_GATE_V001

FX_MAGIC_HOLY_LIGHT_V001
```

---

# 11. Folder Structure

Unity project:

```
Assets/

├── Art

│   ├── Characters

│   ├── Weapons

│   ├── Armour

│   ├── Environment

│   ├── Props

│   ├── VFX


├── Audio

├── Animations

├── Materials

├── Textures

├── UI

└── Resources
```

---

# 12. Character Asset Standards

Every character requires:

```
Concept Sheet

3D Model

Texture Set

Rig

Animations

Materials

VFX

Portrait
```

---

# 13. Character Model Requirements

Playable characters:

Target:

```
50k-100k triangles
```

LOD:

```
LOD0
LOD1
LOD2
```

---

# 14. Enemy Asset Requirements

Enemies require:

```
Model

Variants

Animations

Attack Effects

Death Effects
```

---

# 15. Armour Design Philosophy

Armour must communicate:

- Rank
- Culture
- History

---

Examples:

Arthur:

Royal but practical.

---

Lancelot:

Elegant and refined.

---

Gawain:

Heavy and intimidating.

---

# 16. Weapon Design Philosophy

Weapons are legendary objects.

Every weapon requires:

```
Silhouette

History

Material Identity

Visual Effects
```

---

# 17. Legendary Item Requirements

Legendary items require:

```
Unique Model

Unique Icon

Lore Description

Special Effects
```

---

# 18. Procedural Loot Appearance

Equipment appearance is generated from:

```
Base Model

+

Material

+

Decoration

+

Effect
```

---

Example:

Sword:

```
Knight Sword

+

Silver Material

+

Dragon Engraving

+

Blue Magic Glow
```

---

# 19. Environment Design

Regions include:

```
Terrain

Architecture

Vegetation

Props

Lighting

Atmosphere
```

---

# 20. Britain Regions

Initial regions:

```
Camelot

Avalon

Dark Forests

Saxon Lands

Ancient Ruins

Cursed Kingdoms
```

---

# 21. Environment Generation Rules

Generated environments must maintain:

```
Region Identity

Faction Influence

Story Context

Gameplay Requirements
```

---

# 22. Dungeon Visual Rules

Every dungeon requires:

```
Entrance Theme

Room Theme

Combat Areas

Reward Areas

Boss Arena
```

---

# 23. Material Standards

Materials use:

```
PBR Workflow
```

Required maps:

```
Albedo

Normal

Metallic

Roughness
```

---

# 24. Texture Standards

Default resolution:

Characters:

```
2048x2048
```

Large environments:

```
2048-4096
```

Props:

```
512-2048
```

---

# 25. VFX Direction

Magic should feel:

- Ancient
- Powerful
- Rare

Avoid:

- Generic explosions
- Excessive particles

---

# 26. VFX Categories

```
Magic

Combat

Environmental

Legendary

UI
```

---

# 27. Animation Pipeline

Every animated asset requires:

```
Rig

Animation Set

Retargeting

Controller

Testing
```

---

# 28. Animation Style

Combat animation should feel:

- Weighty
- Deliberate
- Responsive

---

# 29. AI Animation Generation

AI agents may create:

- Idle animations
- Combat animations
- NPC animations

All must be tested in Unity.

---

# 30. Unity Import Standards

All assets require:

```
Correct Scale

Correct Materials

Optimised Meshes

Correct Colliders

Correct Tags
```

---

# 31. Performance Budgets

Target:

```
60 FPS

1080p-1440p

Desktop Hardware
```

---

# 32. Optimisation Requirements

Use:

```
LOD

Occlusion Culling

Texture Compression

GPU Instancing

Object Pooling
```

---

# 33. AI MCP Asset Workflow

AI agents use:

```
Concept Generation MCP

3D Asset MCP

Texture MCP

Animation MCP

Unity MCP
```

---

# 34. Asset Metadata

Every generated asset requires:

```
Asset ID

Creator Agent

Prompt

Version

Dependencies

Usage
```

---

# 35. Asset Validation

Automated checks:

```
Missing Materials

Polygon Count

Naming

Scale

Performance
```

---

# 36. AI Implementation Rules

AI agents must:

- Follow art direction
- Maintain consistency
- Avoid duplicate assets
- Document generated content
- Optimise before integration

---

# 37. Testing Requirements

Test:

## Visual Quality

Does it fit the world?

---

## Performance

Does it run efficiently?

---

## Consistency

Does it match existing assets?

---

## Integration

Does Unity import correctly?

---

# 38. Future Expansion

Possible additions:

- Full procedural armour generator
- AI NPC creator
- Dynamic weather visuals
- AI cinematic generation
- Player-created content

---

# Definition Of Done

Art Pipeline complete when:

✓ AI can generate assets

✓ Assets follow standards

✓ Unity imports automatically

✓ Visual identity remains consistent

✓ Performance targets are met

✓ Agents can safely expand the world
