---
title: Camera and Player Control System
document_id: SYS-018
version: 0.1
status: Draft
owner: Gameplay Engineering
engine: Unity 6 LTS
dependencies:
  - SYS-002 Combat System
  - SYS-006 Enemy And AI Framework
  - SYS-008 Skill And Ability System
  - SYS-015 UI UX And Player Experience System
  - SYS-017 Game Balance And Difficulty System
  - SYS-013 AI Development And MCP Asset Pipeline
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-018 Camera & Player Control System

Version 0.1

---

# 1. Purpose

The Camera and Player Control System defines how the player experiences the world.

The goal is to create a responsive isometric action RPG control scheme inspired by:

- Diablo IV
- Path of Exile II
- Hades
- Baldur's Gate style tactical readability

The player should always feel:

- In control
- Powerful
- Aware of threats
- Connected to their character

---

# 2. Core Philosophy

The core principle:

> The camera reveals the battlefield. The controls command the legend.

The system must prioritise:

- Precision
- Responsiveness
- Combat awareness
- Accessibility

---

# 3. Design Pillars Supported

✓ Combat Is Simple, Deep And Rewarding

✓ Every Knight Feels Unique

✓ Quality Over Quantity

✓ Immersive World

✓ Controller Ready

---

# 4. Camera Style

The game uses:

```
Fixed Isometric Perspective

+

Dynamic Combat Adjustments

+

Cinematic Moments
```

---

# 5. Camera Overview

Camera system:

```
Player Character

↓

Camera Rig

↓

Cinemachine Brain

↓

Main Camera
```

---

# 6. Unity Implementation

Required systems:

```
Unity Input System

Cinemachine

Character Controller

Navigation System

Targeting System
```

---

# 7. Camera Position

Default:

```
Angle:
45 degrees

Height:
High enough for battlefield awareness

Distance:
Adjustable
```

---

# 8. Camera Movement

The camera follows:

```
Player Position

+

Movement Direction

+

Combat Context
```

---

# 9. Camera Follow Rules

The camera should:

- Follow smoothly
- Avoid sudden movement
- Maintain combat visibility

---

# 10. Camera Smoothing

Use:

```
Damping

Acceleration

Position Prediction
```

---

# 11. Camera Rotation

Default:

Fixed orientation.

---

Optional:

Allow player rotation.

Controls:

```
Mouse Drag

Controller Shoulder Buttons

Keyboard Rotation
```

---

# 12. Camera Zoom

Optional zoom control.

Reasons:

- Accessibility
- Exploration
- Combat preference

---

Limits:

```
Minimum Distance

Maximum Distance
```

---

# 13. Obstacle Handling

The camera must avoid:

- Walls
- Trees
- Buildings
- Dungeon geometry

---

Solution:

```
Camera Collision Detection

+

Transparency System
```

---

# 14. Environment Transparency

When objects block view:

Objects fade.

Examples:

```
Walls

Trees

Structures
```

---

# 15. Combat Camera Behaviour

Combat can modify camera:

```
Normal

↓

Engaged

↓

Elite Encounter

↓

Boss Fight
```

---

# 16. Boss Camera

Boss encounters may include:

- Wider view
- Cinematic framing
- Arena awareness

---

# 17. Cinematic Camera

Used for:

```
Story Moments

Legendary Discoveries

Boss Introductions

Ultimate Abilities
```

---

# 18. Player Control Philosophy

The game supports:

Primary:

```
WASD Movement
```

Secondary:

```
Controller Movement
```

Optional:

```
Mouse Click Movement
```

---

# 19. Movement System

Movement is:

```
Direct Input

+

Character Facing

+

Animation Response
```

---

# 20. Movement Requirements

Characters must have:

- Responsive acceleration
- Smooth stopping
- Direction changes
- Collision handling

---

# 21. Character Rotation

Characters face:

Default:

Movement direction.

---

Combat:

Attack direction.

---

Skills:

Target direction.

---

# 22. Dodge System

Every character has:

```
Dodge Input

↓

Movement Burst

↓

Invulnerability Window
```

---

# 23. Dodge Design Rules

Dodge must:

- Feel responsive
- Reward timing
- Have limitations

---

Controlled by:

```
Cooldown

Resource

Charges
```

---

# 24. Targeting System

The game supports:

```
Soft Targeting

+

Manual Direction
```

---

# 25. Enemy Target Priority

Priority:

```
Boss

Elite

Nearest Threat

Selected Target
```

---

# 26. Ability Targeting

Skills support:

```
Self

Direction

Area

Enemy Target

Location
```

---

# 27. Controller Support

Required layout:

```
Left Stick:
Movement

Right Stick:
Aim

A:
Basic Action

X/Y/B:
Skills

RB:
Ultimate

LT:
Modifier
```

---

# 28. Mouse And Keyboard Support

Controls:

```
WASD:
Movement

Mouse:
Aim

1-4:
Skills

R:
Ultimate

Space:
Dodge
```

---

# 29. Input Architecture

Unity Input Actions:

```
Movement

Combat

Skills

Interaction

UI

Camera
```

---

# 30. Accessibility Controls

Support:

- Input remapping
- Toggle dodge
- Aim assistance
- Camera shake control
- Movement sensitivity

---

# 31. Camera Shake

Used for:

- Heavy attacks
- Boss impacts
- Legendary abilities

---

Must be adjustable.

---

# 32. Character Control Architecture

Components:

```
PlayerController

MovementController

CombatController

AbilityController

CameraTarget

InputHandler
```

---

# 33. Data Driven Configuration

Scriptable Objects:

```
CharacterControlDefinition

CameraDefinition

InputProfile

AbilityTargetDefinition
```

---

# 34. AI Implementation Rules

AI agents must:

- Preserve responsiveness
- Test all input methods
- Avoid excessive camera effects
- Maintain accessibility

---

# 35. Testing Requirements

Test:

## Movement

Characters feel responsive.

---

## Camera

Combat remains readable.

---

## Controls

Keyboard and controller work.

---

## Accessibility

Options function correctly.

---

# 36. Future Expansion

Possible additions:

- Mount controls
- Flying mounts
- Multiplayer camera
- Photo mode
- Tactical zoom mode

---

# Definition Of Done

Camera and Control System complete when:

✓ Isometric camera works

✓ Movement feels responsive

✓ Combat controls work

✓ Dodge works

✓ Controller support works

✓ Camera avoids obstacles

✓ Cinematic moments function

✓ AI agents can safely expand the system
