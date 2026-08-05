---
title: Isometric Camera System Implementation
document_id: IMP-003
version: 0.1
status: Draft
owner: Gameplay Architecture
engine: Unity 6 LTS
dependencies:
  - IMP-002 Player Controller Implementation
  - UNITY-001 Unity Project Architecture
  - SYS-018 Camera And Player Control System
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# IMP-003 Isometric Camera System Implementation

Version 0.1

---

# 1. Purpose

This document defines the implementation of the game's isometric camera system.

The camera must provide:

```
Diablo-style perspective

Clear combat visibility

Smooth player tracking

Environmental awareness

Cinematic flexibility
```

---

# 2. Camera Design Philosophy

The camera is a gameplay system, not just a visual feature.

It must support:

```
Combat readability

Enemy awareness

Ability targeting

Exploration

Boss encounters

Story moments
```

---

# 3. Camera Technology

Use:

```
Unity Cinemachine
```

Required package:

```
Cinemachine 3.x
```

---

# 4. Camera Architecture

The camera system consists of:

```
Main Camera

↓

Cinemachine Brain

↓

Cinemachine Virtual Camera

↓

Camera Controller

↓

Player Target
```

---

# 5. Folder Structure

Create:

```
Assets/Game/World/Camera/
```

Structure:

```
Camera/

├── Controllers

├── Settings

├── Runtime

└── Cinematics
```

---

# 6. Required Scripts

Create:

```
IsometricCameraController.cs

CameraTarget.cs

CameraSettingsSO.cs

CameraTransitionController.cs
```

---

# 7. CameraTarget

Create:

```
CameraTarget.cs
```

Purpose:

Provides a stable tracking point.

---

Attach to:

```
Player Prefab
```

---

Responsibilities:

```
Follow Position

Combat Focus Position

Cinematic Position
```

---

# 8. Camera Settings Data

Create:

```
CameraSettingsSO.cs
```

Location:

```
Game/Data/World/
```

---

Contains:

```
Default Distance

Default Angle

Zoom Speed

Minimum Zoom

Maximum Zoom

Rotation Speed

Follow Smoothness
```

---

# 9. Default Camera Position

Initial values:

```
Distance:
12 units

Height:
10 units

Angle:
45 degrees

Rotation:
45 degrees
```

---

# 10. Cinemachine Setup

Create:

```
CM_PlayerCamera
```

---

Components:

```
Cinemachine Camera

Follow Target

Look At Target
```

---

# 11. Camera Behaviour

Default:

```
Follow Player

Maintain Distance

Maintain Angle
```

---

# 12. Camera Movement

Camera follows:

```
Player CameraTarget
```

---

Movement should have:

```
Smooth Acceleration

No Jitter

No Sudden Snapping
```

---

# 13. Camera Zoom

Input:

```
Mouse Wheel

Controller Trigger
```

---

Zoom behaviour:

```
Increase Distance

Decrease Distance
```

---

Limits:

```
Minimum:

6 units


Maximum:

18 units
```

---

# 14. Camera Rotation

Initial version:

Optional.

Controls:

```
Q

E
```

or:

```
Controller Shoulder Buttons
```

---

Rotation:

```
90 Degree Steps
```

---

# 15. Camera Collision

Required:

Prevent camera entering:

```
Walls

Objects

Terrain
```

---

Use:

```
Cinemachine Collider
```

---

# 16. Combat Awareness

Camera must support:

```
Enemy Visibility

Boss Tracking

Ability Range
```

---

Future:

Dynamic combat framing.

---

# 17. Boss Camera Overrides

Boss encounters may override:

```
Distance

Angle

Position
```

---

Example:

```
The Black Knight Arena
```

changes camera:

```
Higher View

Wider Field
```

---

# 18. Cinematic Camera System

Create:

```
CameraTransitionController.cs
```

---

Purpose:

Switch between:

```
Gameplay Camera

Story Camera

Boss Camera
```

---

# 19. Camera States

Required:

```
Gameplay

Dialogue

Cinematic

Boss

Menu
```

---

# 20. Camera Events

Use:

```
GameEvent System
```

---

Examples:

```
BossStartedEvent

DialogueStartedEvent

CutsceneStartedEvent
```

---

# 21. Player Camera Integration

Player prefab exposes:

```
CameraTarget
```

---

Camera does not directly reference:

```
PlayerController
```

---

# 22. Scene Setup

In:

```
03_TestArena
```

Create:

```
Main Camera

CM_PlayerCamera
```

---

Assign:

```
Arthur CameraTarget
```

---

# 23. Testing Requirements

## Follow Test

Expected:

```
Camera follows player smoothly
```

---

## Zoom Test

Expected:

```
Zoom works within limits
```

---

## Collision Test

Expected:

```
Camera avoids walls
```

---

## Rotation Test

Expected:

```
Camera rotates correctly
```

---

# 24. Performance Requirements

Camera must:

```
Avoid expensive raycasts every frame

Use Cinemachine optimisation

Avoid allocations
```

---

# 25. AI Agent Rules

Before coding:

```
Read IMP-002

Read SYS-018

Read UNITY-001
```

---

During coding:

```
Do not place camera logic in player scripts

Use Cinemachine features

Keep systems independent
```

---

After coding:

```
Compile

Test Camera

Document Changes
```

---

# 26. Future Compatibility

The camera must support:

```
Multiple Playable Knights

Mounts

Large Bosses

Procedural Maps

Cinematic Events
```

---

# 27. Acceptance Criteria

IMP-003 complete when:

✓ Isometric camera works

✓ Player tracking works

✓ Zoom works

✓ Rotation works

✓ Collision handling works

✓ Camera events exist

✓ Boss overrides are supported

---

# Definition Of Done

The Isometric Camera System is complete when the player has the correct ARPG viewing experience required for combat and exploration.
