---
title: Audio and Music System
document_id: SYS-014
version: 0.1
status: Draft
owner: Audio Direction
engine: Unity 6 LTS
dependencies:
  - SYS-002 Combat System
  - SYS-004 Procedural World Generation
  - SYS-006 Enemy And AI Framework
  - SYS-007 Quest And Narrative System
  - SYS-013 AI Development And MCP Asset Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-014 Audio & Music System

Version 0.1

---

# 1. Purpose

The Audio and Music System defines the complete audio identity of Arthur: The Once and Future King.

Audio exists to:

- Establish atmosphere
- Communicate gameplay
- Reinforce character identity
- Create emotional moments
- Make the world feel alive

---

# 2. Core Philosophy

The core principle:

> The legend should be heard before it is seen.

The player should recognise:

- A boss encounter
- A legendary weapon
- A magical event
- A dangerous area

through sound alone.

---

# 3. Design Pillars Supported

✓ Restore The Legend

✓ Every Run Creates A Story

✓ Quality Over Quantity

✓ Immersive World

✓ AI Assisted Production

---

# 4. Audio Categories

The game audio system consists of:

```
Music

Sound Effects

Character Voice

Environmental Audio

UI Audio

Cinematic Audio
```

---

# 5. Audio Architecture

The Unity implementation uses:

```
AudioManager

↓

Audio Layers

↓

Audio Events

↓

Audio Sources

↓

Mixing System
```

---

# 6. Audio Mixer Structure

Required mixer groups:

```
Master

├── Music

├── Combat

├── Environment

├── Characters

├── UI

└── Cinematics
```

---

# 7. Music Philosophy

Music should evolve with Arthur's journey.

The player begins with:

A forgotten legend.

---

The player ends with:

A restored king.

---

# 8. Main Theme

Title:

# The Once And Future King

Theme elements:

- Orchestral strings
- Choir
- Celtic influence
- Medieval instruments
- Heroic motifs

---

The theme evolves throughout the game.

---

# 9. Dynamic Music System

Music is layered dynamically.

Structure:

```
Base Track

+

Combat Layer

+

Danger Layer

+

Boss Layer

+

Victory Layer
```

---

# 10. Exploration Music

Exploration tracks represent:

- Discovery
- Mystery
- Ancient history

Examples:

---

Camelot Ruins:

Melancholic strings.

---

Avalon:

Mystical choir.

---

Saxon Lands:

Dark percussion.

---

# 11. Combat Music

Combat music changes based on:

```
Enemy Count

Enemy Strength

Player Health

Boss State
```

---

# 12. Boss Music

Every major boss requires a unique theme.

---

Example:

# Morgana

Theme:

Dark magic versus ancient power.

Elements:

- Female choir
- Deep strings
- Magical effects

---

# Mordred

Theme:

Tragedy.

Elements:

- Heavy percussion
- Broken heroic motif
- Dark orchestration

---

# 13. Character Themes

Playable knights have musical identities.

---

# Arthur

Theme:

Leadership.

Sound:

Royal orchestration.

---

# Lancelot

Theme:

Honour and conflict.

Sound:

Elegant strings.

---

# Gawain

Theme:

Strength.

Sound:

Heavy drums.

---

# Merlin

Theme:

Ancient magic.

Sound:

Mystical choir.

---

# 14. Sound Effect Philosophy

Every action requires feedback.

The player must feel:

- Weight
- Impact
- Power

---

# 15. Combat Audio

Required sounds:

```
Weapon Swing

Weapon Impact

Armour Hit

Critical Hit

Ability Cast

Ability Impact

Enemy Death
```

---

# 16. Weapon Audio Identity

Weapons require unique audio.

---

Sword:

Sharp metallic impact.

---

Greatsword:

Heavy impact.

---

Magic Staff:

Arcane resonance.

---

Legendary Weapon:

Unique signature sound.

---

# 17. Ability Audio

Every ability requires:

```
Activation Sound

Movement Sound

Impact Sound

Cooldown Feedback
```

---

# 18. Ultimate Audio

Ultimate abilities require:

- Musical emphasis
- Sound build-up
- Powerful impact

---

Example:

Arthur:

Call Of The Round Table

Audio:

- Excalibur hum
- Ghostly knights
- Battlefield roar

---

# 19. Environment Audio

Every biome requires:

```
Ambient Loop

Random Events

Weather Sounds

Wildlife

Magic Effects
```

---

# 20. Biome Audio Examples

---

# Fallen Camelot

Sounds:

- Wind through ruins
- Distant battles
- Broken banners

---

# Avalon

Sounds:

- Water
- Magical energy
- Ancient voices

---

# Morgana's Sanctum

Sounds:

- Whispering
- Dark rituals
- Strange echoes

---

# 21. NPC Audio

Important NPCs require:

- Voice identity
- Dialogue delivery
- Emotional tone

---

Priority:

1. Arthur
2. Guinevere
3. Merlin
4. Morgana
5. Knights

---

# 22. Voice System

Architecture:

```
Dialogue Event

↓

Voice Asset

↓

Character Voice Profile

↓

Playback
```

---

# 23. Character Voice Direction

---

# Arthur

Tone:

Calm.

Commanding.

Hopeful.

---

# Guinevere

Tone:

Warm.

Determined.

Ancient wisdom.

---

# Merlin

Tone:

Mystical.

Knowledgeable.

Unpredictable.

---

# Morgana

Tone:

Powerful.

Elegant.

Threatening.

---

# 24. AI Audio Generation Pipeline

AI-generated audio follows:

```
Audio Requirement

↓

Style Specification

↓

Generation

↓

Review

↓

Unity Import

↓

Documentation
```

---

# 25. Audio Asset Requirements

Every audio asset requires:

```
Asset ID

Category

Description

Duration

Loop Information

Usage Rules

Credits
```

---

# 26. Audio Naming Convention

Format:

```
AUDIO_CATEGORY_DESCRIPTION_VERSION
```

Examples:

```
MUS_BOSS_MORGANA_PHASE1_V001

SFX_WEAPON_EXCALIBUR_SWING_V001

AMB_AVALON_FOREST_LOOP_V001
```

---

# 27. Technical Architecture

Scriptable Objects:

```
AudioDefinition

MusicDefinition

VoiceDefinition

AmbientDefinition
```

---

Runtime:

```
AudioManager

MusicManager

DialogueAudioManager

DynamicMixerController

SoundPoolManager
```

---

# 28. Performance Requirements

Audio system must support:

- Streaming music
- Sound pooling
- Dynamic loading
- Memory management

---

# 29. AI Implementation Rules

AI agents must:

- Follow audio direction
- Maintain naming standards
- Avoid duplicate sounds
- Document generated assets
- Respect licensing requirements

---

# 30. Testing Requirements

Test:

## Music

Transitions work.

---

## Combat

Sounds trigger correctly.

---

## Performance

No audio memory issues.

---

## Atmosphere

Locations feel unique.

---

# 31. Future Expansion

Possible additions:

- Full orchestral soundtrack
- Dynamic choir system
- Character singing
- Bard NPC system
- Player-created songs
- Adaptive storytelling music

---

# Definition Of Done

Audio System complete when:

✓ Music system works

✓ Combat sounds exist

✓ Character identity is represented

✓ Environment audio works

✓ Voice system works

✓ AI pipeline is documented

✓ Unity integration is complete
