#!/bin/bash

set -e

ROOT="."

echo "======================================"
echo "Arthur: The Once and Future King"
echo "Game Bible Generator"
echo "======================================"

create_folder() {
    mkdir -p "$1"
    echo "Folder: $1"
}

create_doc() {
    FILE="$1"
    TITLE="$2"
    CATEGORY="$3"

    if [ -f "$FILE" ]; then
        echo "Exists: $FILE"
        return
    fi

cat > "$FILE" <<EOF
---
title: $TITLE
category: $CATEGORY
version: 0.1
status: Draft
engine: Unity 6 LTS
---

# Arthur: The Once and Future King

# $TITLE

Version 0.1

---

# Purpose

This document defines:

$TITLE

---

# Design Goals

The system must provide:

- Strong player experience
- Modular architecture
- Expandable content
- Consistent game design

---

# Overview

## Core Concept

Arthur: The Once and Future King is an action RPG inspired by:

- Arthurian mythology
- Dark fantasy
- Legendary knights
- Choice driven storytelling

---

# Architecture

The system follows:

\`\`\`
Design

↓

Data

↓

Implementation

↓

Testing

↓

Production
\`\`\`

---

# Requirements

The system should support:

- Future expansion
- Multiple characters
- Procedural content
- Live balancing

---

# Dependencies

Related documents should be referenced here.

---

# Implementation Notes

Implementation details will be added during development.

---

# Testing

Required:

\`\`\`
Functional Testing

Performance Testing

Integration Testing
\`\`\`

---

# AI Development Rules

Agents must:

- Read related documentation
- Maintain architecture consistency
- Avoid duplicate systems
- Document changes

---

# Acceptance Criteria

Complete when:

✓ Designed

✓ Implemented

✓ Tested

✓ Documented

---

# Definition Of Done

$TITLE is complete when it contributes to the final playable experience.
EOF

echo "Created: $FILE"
}


#################################
# 000 PROJECT
#################################

create_folder "000_Project/Design"
create_folder "000_Project/Planning"
create_folder "000_Project/Management"

create_doc "000_Project/Design/GDD_Game_Design_Document.md" \
"Game Design Document" \
"Project Design"

create_doc "000_Project/Design/Core_Game_Pillars.md" \
"Core Game Pillars" \
"Project Design"

create_doc "000_Project/Planning/Development_Roadmap.md" \
"Development Roadmap" \
"Production"

#################################
# 002 SYSTEMS
#################################

create_folder "002_Systems/Combat"
create_folder "002_Systems/Characters"
create_folder "002_Systems/World"
create_folder "002_Systems/Progression"

create_doc "002_Systems/Combat/Combat_System.md" \
"Combat System Design" \
"Gameplay Systems"

create_doc "002_Systems/Characters/Character_System.md" \
"Character System Design" \
"Gameplay Systems"

create_doc "002_Systems/World/World_System.md" \
"World System Design" \
"Gameplay Systems"

create_doc "002_Systems/Progression/Progression_System.md" \
"Progression System Design" \
"Gameplay Systems"


#################################
# 003 CONTENT
#################################

create_folder "003_Content/Quests"
create_folder "003_Content/Dialogues"
create_folder "003_Content/Lore"

create_doc "003_Content/Quests/Quest_System.md" \
"Quest System" \
"Content"

create_doc "003_Content/Dialogues/Dialog_System.md" \
"Dialogue System" \
"Content"

create_doc "003_Content/Lore/Arthurian_Lore.md" \
"Arthurian Lore Framework" \
"Content"


#################################
# 004 WORLD
#################################

create_folder "004_World/Regions"
create_folder "004_World/Locations"
create_folder "004_World/Dungeons"

create_doc "004_World/World_Map_Design.md" \
"World Map Design" \
"World"

create_doc "004_World/Region_Framework.md" \
"Region Framework" \
"World"


#################################
# 005 CHARACTERS
#################################

create_folder "005_Characters/Knights"
create_folder "005_Characters/NPCs"

create_doc "005_Characters/Arthur.md" \
"Arthur Character Design" \
"Characters"

create_doc "005_Characters/Knight_Roster.md" \
"Knight Roster Framework" \
"Characters"


#################################
# 006 ENEMIES
#################################

create_folder "006_Enemies/Factions"
create_folder "006_Enemies/Archetypes"

create_doc "006_Enemies/Enemy_Framework.md" \
"Enemy Framework" \
"Enemies"


#################################
# 007 BOSSES
#################################

create_folder "007_Bosses/Encounters"

create_doc "007_Bosses/Boss_Framework.md" \
"Boss Encounter Framework" \
"Bosses"


#################################
# 008 LOOT
#################################

create_folder "008_Loot/Items"
create_folder "008_Loot/Weapons"
create_folder "008_Loot/Legendary"

create_doc "008_Loot/Itemisation_System.md" \
"Itemisation System" \
"Loot"


#################################
# 009 PROCEDURAL
#################################

create_folder "009_ProceduralGeneration/World"
create_folder "009_ProceduralGeneration/Dungeons"

create_doc "009_ProceduralGeneration/Procedural_World_System.md" \
"Procedural World Generation System" \
"Procedural Generation"


#################################
# 010 ART
#################################

create_folder "010_ArtBible/Characters"
create_folder "010_ArtBible/Environment"

create_doc "010_ArtBible/Visual_Direction.md" \
"Visual Direction" \
"Art"


#################################
# 011 AUDIO
#################################

create_folder "011_AudioBible/Music"
create_folder "011_AudioBible/Sound"

create_doc "011_AudioBible/Audio_Direction.md" \
"Audio Direction" \
"Audio"


#################################
# 012 UIUX
#################################

create_folder "012_UIUX/HUD"
create_folder "012_UIUX/Menus"

create_doc "012_UIUX/UIUX_Principles.md" \
"UI UX Principles" \
"Interface"


#################################
# 013 AI AGENTS
#################################

create_folder "013_AI_Agents/Agents"
create_folder "013_AI_Agents/Rules"

create_doc "013_AI_Agents/Development_Agent_Guidelines.md" \
"AI Development Guidelines" \
"AI"


#################################
# 014 TESTING
#################################

create_folder "014_Testing/TestPlans"

create_doc "014_Testing/Testing_Strategy.md" \
"Testing Strategy" \
"QA"


#################################
# 015 PRODUCTION
#################################

create_folder "015_Production/Milestones"
create_folder "015_Production/Releases"

create_doc "015_Production/Production_Pipeline.md" \
"Production Pipeline" \
"Production"


echo ""
echo "======================================"
echo "GAME BIBLE GENERATION COMPLETE"
echo "======================================"

find . -maxdepth 2 -type d | sort
