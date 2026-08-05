#!/bin/bash

set -e

echo "=========================================="
echo "Arthur: The Once and Future King"
echo "Game Bible Content Generator"
echo "=========================================="

write_file() {
    FILE="$1"

    mkdir -p "$(dirname "$FILE")"

    cat > "$FILE" <<EOF
$2
EOF

    echo "Updated: $FILE"
}


############################################
# GAME DESIGN DOCUMENT
############################################

write_file "000_Project/Design/GDD_Game_Design_Document.md" '

# Arthur: The Once and Future King

# Game Design Document

Version 0.1

---

# Overview

Arthur: The Once and Future King is an action RPG set in a dark fantasy interpretation of Arthurian Britain.

The player follows Arthur Pendragon as he rises from a young warrior into the legendary king.

---

# Genre

- Action RPG
- Dark Fantasy
- Character Driven Adventure

---

# Core Pillars

## Become The Legend

Arthur begins as a man and must prove himself worthy of becoming a king.

## Meaningful Combat

Combat rewards skill, preparation and tactical thinking.

## Build Your Legend

Players customise Arthur through:

- Weapons
- Skills
- Attributes
- Equipment
- Choices

## A Living Britain

The world should feel ancient, mysterious and dangerous.

---

# Gameplay Loop

Explore

↓

Fight

↓

Collect Loot

↓

Improve Arthur

↓

Unlock New Areas

↓

Face Greater Challenges

---

# Technology

Engine:

Unity 6 LTS

Systems:

- Cinemachine
- AI Navigation
- Scriptable Objects
- Event Driven Architecture

'


############################################
# ARTHUR CHARACTER
############################################

write_file "005_Characters/Arthur.md" '

# Arthur Pendragon

## Character Bible

---

# Identity

Name:

Arthur Pendragon

Title:

The Once and Future King

Role:

Playable Character

---

# Concept

Arthur is not born a king.

He must become one.

The game follows his transformation from uncertain warrior into the leader Britain requires.

---

# Personality

Core traits:

- Honour
- Compassion
- Determination
- Leadership

Flaws:

- Self doubt
- Burden of responsibility
- Difficulty trusting others

---

# Combat Identity

Arthur is a versatile warrior.

Primary weapons:

- Sword
- Shield
- Great Sword

Combat style:

- Balanced
- Defensive
- Leadership focused

---

# Progression

Arthur evolves through:

Early:

Unknown fighter

Middle:

Knight and commander

Late:

Legendary king

---

# Excalibur

Excalibur represents:

- Authority
- Destiny
- Responsibility

The sword becomes stronger as Arthur proves himself worthy.

'


############################################
# COMBAT SYSTEM
############################################

write_file "002_Systems/Combat/Combat_System.md" '

# Combat System

---

# Philosophy

Combat should feel:

- Responsive
- Tactical
- Powerful

---

# Combat Loop

Enemy Encounter

↓

Position

↓

Attack

↓

React

↓

Victory

↓

Reward

---

# Player Actions

- Light Attack
- Heavy Attack
- Dodge
- Block
- Abilities
- Ultimate Ability

---

# Damage Types

- Physical
- Fire
- Ice
- Lightning
- Holy
- Dark

---

# Combat Architecture

CombatController

↓

Attack System

↓

Damage System

↓

Health System

↓

Events

'


############################################
# WORLD SYSTEM
############################################

write_file "004_World/World_Map_Design.md" '

# World Map Design

---

# World Vision

Britain is a fractured land recovering from conflict.

The player explores:

- Kingdoms
- Forests
- Ruins
- Castles
- Mythical locations

---

# Major Regions

## Camelot

The future centre of Arthurian civilisation.

## The Wild Lands

Ancient forests filled with forgotten magic.

## Mordreds Territory

A corrupted land controlled by enemies of Camelot.

---

# Exploration

Rewards:

- Lore
- Equipment
- Characters
- Secrets

'


############################################
# ENEMY FRAMEWORK
############################################

write_file "006_Enemies/Enemy_Framework.md" '

# Enemy Framework

---

# Enemy Categories

Common

↓

Elite

↓

Champion

↓

Boss

---

# Enemy Design Rules

Every enemy requires:

- Identity
- Behaviour
- Weakness
- Reward

---

# Initial Factions

## Mordreds Forces

Corrupted knights and soldiers.

## Wild Creatures

Animals and mythical beasts.

## Bandits

Human threats.

'


############################################
# BOSS FRAMEWORK
############################################

write_file "007_Bosses/Boss_Framework.md" '

# Boss Framework

---

# Philosophy

Bosses represent legendary challenges.

Each boss requires:

- Unique mechanics
- Story purpose
- Memorable arena
- Unique reward

---

# Boss Types

- Knights
- Monsters
- Sorcerers
- Kings

---

# Rewards

Bosses provide:

- Legendary items
- Abilities
- Story progression

'


############################################
# LOOT SYSTEM
############################################

write_file "008_Loot/Itemisation_System.md" '

# Itemisation System

---

# Item Types

- Weapons
- Armour
- Rings
- Artifacts

---

# Rarity

Common

Uncommon

Rare

Epic

Legendary

Mythic

---

# Affixes

Examples:

- Strength
- Critical Chance
- Attack Speed
- Holy Damage

---

# Legendary Items

Legendary items contain unique effects.

Example:

Excalibur

'


############################################
# PROCEDURAL GENERATION
############################################

write_file "009_ProceduralGeneration/Procedural_World_System.md" '

# Procedural World System

---

# Purpose

Create replayable environments.

---

# Generated Content

- Dungeons
- Encounters
- Loot Areas

---

# Rules

Generated content must remain:

- Thematic
- Balanced
- Interesting

'


############################################
# UI
############################################

write_file "012_UIUX/UIUX_Principles.md" '

# UI UX Principles

---

# Goals

UI should be:

- Clear
- Immersive
- Accessible

---

# HUD

Includes:

- Health
- XP
- Abilities
- Inventory

---

# Style

Arthurian medieval fantasy.

'


############################################
# AI AGENTS
############################################

write_file "013_AI_Agents/Development_Agent_Guidelines.md" '

# AI Development Guidelines

---

AI agents must:

1. Read existing documentation.
2. Follow architecture.
3. Avoid duplicate systems.
4. Document changes.

---

Code requirements:

- Modular
- Maintainable
- Tested

'


############################################
# TESTING
############################################

write_file "014_Testing/Testing_Strategy.md" '

# Testing Strategy

---

Required testing:

- Unit Testing
- Integration Testing
- Gameplay Testing
- Performance Testing

---

Every system requires:

Design

↓

Implementation

↓

Validation

'


############################################
# PRODUCTION
############################################

write_file "015_Production/Production_Pipeline.md" '

# Production Pipeline

---

Development stages:

1. Prototype
2. Vertical Slice
3. Alpha
4. Beta
5. Release

---

Every milestone requires:

- Working build
- Documentation
- Testing

'


echo ""
echo "=========================================="
echo "Content Generation Complete"
echo "=========================================="

git add .

git commit -m "Populate Arthurian Game Bible core documentation" || true

echo "Done."
