---
title: Unity Project Setup And Configuration
document_id: UNITY-002
version: 0.1
status: Draft
owner: Technical Architecture
engine: Unity 6 LTS
dependencies:
  - UNITY-001 Unity Project Architecture
  - SYS-038 Unity Technical Implementation Architecture System
  - PRJ-001 Project Structure And Documentation Organisation
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# UNITY-002 Unity Project Setup And Configuration

Version 0.1

---

# 1. Purpose

This document defines the creation and configuration of the Unity project.

The objective is to establish a stable development environment before gameplay systems are implemented.

---

# 2. Unity Version

Required:

```
Unity 6 LTS
```

---

# 3. Project Template

Create using:

```
Universal 3D Template
```

---

Reason:

URP provides:

```
Performance

Modern Rendering

Scalable Graphics

Cross Platform Support
```

---

# 4. Project Name

Unity Project:

```
Arthur: The Once and Future King
```

Internal name:

```
ArthurOnceAndFutureKing
```

---

# 5. Target Platforms

Primary:

```
Windows PC
```

---

Supported:

```
Linux

Steam Deck

Console Platforms
```

---

# 6. Player Settings

Configure:

---

## Company Name

```
Arthurian Studios
```

---

## Product Name

```
Arthur: The Once and Future King
```

---

## Default Icon

Placeholder until final branding.

---

# 7. Rendering Configuration

Pipeline:

```
Universal Render Pipeline
```

---

Create:

```
ArthurURPAsset
```

---

Configure:

```
HDR Enabled

Dynamic Batching Enabled

GPU Instancing Enabled
```

---

# 8. Quality Profiles

Create:

```
Low

Medium

High

Ultra
```

---

## Low

Target:

```
Steam Deck

Older Hardware
```

---

## Medium

Target:

```
Standard Gaming PC
```

---

## High

Target:

```
Modern GPU
```

---

## Ultra

Target:

```
High End PC
```

---

# 9. Input System Setup

Install:

```
Unity Input System Package
```

---

Disable:

```
Legacy Input Manager
```

---

Create:

```
PlayerInputActions
```

---

# 10. Input Actions

Required actions:

---

Movement:

```
Move
```

---

Combat:

```
Attack

Skill1

Skill2

Skill3

Skill4

Ultimate
```

---

Interaction:

```
Interact

Inventory

Map

Pause
```

---

# 11. Controller Support

Support:

```
Keyboard

Mouse

Xbox Controller

PlayStation Controller
```

---

# 12. Physics Layers

Create:

```
Player

Enemy

Friendly

Projectile

Loot

Interactable

Environment

Trigger
```

---

# 13. Collision Matrix

Configure:

Player:

```
Enemy ✓

Environment ✓

Loot ✓
```

---

Projectiles:

```
Enemy ✓

Environment ✓
```

---

Loot:

```
Player ✓
```

---

# 14. Tags

Create:

```
Player

Enemy

Boss

NPC

Loot

Interactable

SpawnPoint
```

---

# 15. Time Configuration

Set:

```
Fixed Timestep:
0.02
```

---

Use:

```
60 FPS Target
```

---

# 16. Audio Configuration

Create mixer:

```
ArthurAudioMixer
```

Groups:

```
Master

Music

Effects

Combat

Voice

Environment

UI
```

---

# 17. Scene Setup

Create:

```
Assets/Scenes/
```

---

Initial scenes:

```
00_Bootstrap

01_MainMenu

02_Camelot

03_TestArena
```

---

# 18. Bootstrap Scene

Purpose:

Load:

```
Configuration

Services

Save Data

Audio
```

---

Objects:

```
BootstrapManager
```

---

Components:

```
GameBootstrap

ServiceInitializer
```

---

# 19. Main Menu Scene

Initial objects:

```
Canvas

Menu Controller

Camera

Lighting
```

---

Functions:

```
New Game

Continue

Settings

Exit
```

---

# 20. Camelot Scene

Initial version:

```
Player Spawn

Round Table

Lighting

Camera
```

---

Future additions:

```
Knights

Buildings

NPCs

Upgrade Systems
```

---

# 21. Test Arena Scene

Purpose:

Developer testing.

Contains:

```
Player Spawn

Enemy Spawn

Loot Spawn

Combat Area
```

---

# 22. Folder Creation

Create:

```
Assets/Game/
```

Structure:

```
Core

Services

Gameplay

Characters

Combat

Abilities

Enemies

Loot

World

Generation

Narrative

UI

Audio

Animation

Data
```

---

# 23. Scriptable Object Locations

Create:

```
Assets/Game/Data/
```

---

Subfolders:

```
Characters

Enemies

Weapons

Armour

Abilities

Loot

Quests

World
```

---

# 24. Git Configuration

Enable:

```
Visible Meta Files
```

---

Enable:

```
Force Text Serialization
```

---

# 25. Editor Settings

Configure:

```
Asset Serialization:
Force Text

Version Control:
Visible Meta Files
```

---

# 26. Package Installation

Required:

```
Cinemachine

Input System

AI Navigation

Addressables

Timeline

TextMeshPro

Test Framework
```

---

# 27. Development Tools

Recommended:

```
ProBuilder

Profiler

Memory Profiler
```

---

# 28. Initial Build Test

Create:

```
Development Build
```

Verify:

```
Project Opens

Scenes Load

No Errors

Build Completes
```

---

# 29. AI Agent Validation

Before implementation begins:

AI agents verify:

```
Unity Version Correct

Packages Installed

Folder Structure Exists

Scenes Created

Compilation Successful
```

---

# 30. First Unity Commit

Commit message:

```
Unity:
Created initial project configuration and scenes
```

---

# Definition Of Done

UNITY-002 complete when:

✓ Unity project is configured

✓ Required packages installed

✓ Scenes exist

✓ Input is ready

✓ Folder architecture exists

✓ AI agents can begin implementation
