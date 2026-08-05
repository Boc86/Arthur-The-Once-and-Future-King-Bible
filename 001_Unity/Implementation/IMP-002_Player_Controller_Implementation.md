---
title: Player Controller Implementation
document_id: IMP-002
version: 0.1
status: Draft
owner: Gameplay Architecture
engine: Unity 6 LTS
dependencies:
  - IMP-001 Core Framework Implementation
  - UNITY-001 Unity Project Architecture
  - UNITY-002 Unity Project Setup And Configuration
  - SYS-018 Camera And Player Control System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-002 Player Controller Implementation

Version 0.1

---

# 1. Purpose

This document defines the implementation of the player character control system.

The player controller is the foundation of all gameplay interaction.

It must support:

```
Movement

Combat

Abilities

Interaction

Animation

Future Character Classes
```

---

# 2. Design Goals

The controller must feel:

```
Responsive

Precise

Weighty

Combat Ready
```

---

# 3. Gameplay Style

The movement system follows:

```
Action RPG

Isometric Camera

Real-Time Combat
```

Inspired by:

```
Diablo

Path of Exile

Baldur's Gate 3 Combat Feel
```

---

# 4. Architecture

The player controller is separated into:

```
Input

↓

Movement

↓

Character State

↓

Animation

↓

Gameplay Systems
```

---

# 5. Required Scripts

Create:

```
Assets/Game/Characters/Player/
```

Structure:

```
Player/

├── Controller

├── Movement

├── Input

├── Animation

└── Interaction
```

---

# 6. PlayerInputHandler

Create:

```
PlayerInputHandler.cs
```

Location:

```
Player/Input/
```

Namespace:

```
Arthur.Gameplay.Characters.Player
```

---

Purpose:

Translate Unity Input System events into gameplay commands.

---

Responsibilities:

```
Read Movement Input

Read Attack Input

Read Ability Input

Read Interaction Input
```

---

Must NOT:

```
Move Character Directly
```

---

# 7. Input Actions

Required:

```
Move

Attack

Interact

Ability1

Ability2

Ability3

Ability4

Ultimate

Dodge

Inventory

Pause
```

---

# 8. CharacterMotor

Create:

```
CharacterMotor.cs
```

Location:

```
Player/Movement/
```

---

Purpose:

Controls physical character movement.

---

Responsibilities:

```
Apply Movement

Rotate Character

Handle Speed

Handle Acceleration
```

---

# 9. Movement Parameters

Create:

```
CharacterMovementDataSO
```

Location:

```
Game/Data/Characters/
```

---

Values:

```
Walk Speed

Run Speed

Acceleration

Rotation Speed

Stopping Distance
```

---

# 10. Movement State Machine

Create:

```
MovementStateMachine.cs
```

---

States:

```
Idle

Moving

Attacking

Dodging

Stunned

Dead
```

---

Rules:

A character cannot:

```
Move While Dead

Attack While Stunned
```

---

# 11. Player Controller

Create:

```
PlayerController.cs
```

Location:

```
Player/Controller/
```

---

Purpose:

Coordinates player components.

---

Contains references:

```
Input Handler

Character Motor

Animator

Interaction
```

---

Does NOT contain:

```
Combat Logic

Inventory Logic

Quest Logic
```

---

# 12. Character Animator

Create:

```
CharacterAnimator.cs
```

Location:

```
Player/Animation/
```

---

Purpose:

Communicates gameplay state to Animator.

---

Parameters:

```
Speed

Moving

Attacking

Dodging

Dead
```

---

# 13. Player Prefab

Create:

```
Arthur_Player.prefab
```

Location:

```
Prefabs/Characters/
```

---

Required Components:

```
PlayerController

PlayerInputHandler

CharacterMotor

CharacterAnimator

CapsuleCollider

Rigidbody
```

---

# 14. Rigidbody Configuration

Set:

```
Is Kinematic:
true
```

---

Movement handled by:

```
Character Motor
```

---

# 15. Player Layers

Assign:

```
Player
```

---

# 16. Player Tag

Assign:

```
Player
```

---

# 17. Test Character

Initial placeholder:

```
Arthur
```

---

Temporary:

```
Capsule Mesh
```

will be replaced later.

---

# 18. Camera Requirements

Player must expose:

```
Camera Follow Target
```

---

Create:

```
CameraTarget
```

child object.

---

# 19. Interaction Component

Create:

```
InteractionComponent.cs
```

---

Purpose:

Provides interaction foundation.

---

Future uses:

```
NPCs

Loot

Doors

Objects
```

---

# 20. Interaction Rules

Objects must implement:

```
IInteractable
```

---

Example:

```
Chest

↓

IInteractable

↓

Open()
```

---

# 21. Animation Preparation

The controller must support:

```
Idle

Walk

Run

Attack

Hit

Death
```

---

No final animations required yet.

---

# 22. Testing Scene

Use:

```
03_TestArena
```

---

Add:

```
Arthur Player

Floor

Camera

Lighting
```

---

# 23. Testing Requirements

## Movement Test

Expected:

```
Character moves correctly
```

---

## Rotation Test

Expected:

```
Character faces movement direction
```

---

## Input Test

Expected:

```
All inputs register
```

---

## State Test

Expected:

```
Movement states change correctly
```

---

# 24. Performance Requirements

Player controller must:

```
Avoid Update() abuse

Avoid allocations

Avoid unnecessary physics calls
```

---

# 25. AI Implementation Rules

Agent must:

Before coding:

```
Read IMP-001

Read UNITY-001

Read SYS-018
```

---

During coding:

```
Create modular components

Avoid monolithic controller

Use events where required
```

---

After coding:

```
Compile

Test

Document
```

---

# 26. Future Compatibility

System must support:

```
Multiple Knights

Different Weapons

Different Movement Styles

Different Abilities
```

---

# 27. Acceptance Criteria

IMP-002 complete when:

✓ Arthur can move

✓ Input system works

✓ Movement states work

✓ Animation hooks exist

✓ Interaction foundation exists

✓ Player prefab exists

✓ Test Arena supports testing

---

# Definition Of Done

The Player Controller is complete when the player can enter the world and move with the responsiveness required for an action RPG.
