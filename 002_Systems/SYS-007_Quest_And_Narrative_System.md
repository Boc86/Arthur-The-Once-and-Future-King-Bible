---
title: Quest and Narrative System
document_id: SYS-007
version: 0.1
status: Draft
owner: Narrative Systems
engine: Unity 6 LTS
dependencies:
  - PROJ-002 Game Vision
  - PROJ-004 Core Gameplay Loop
  - SYS-004 Procedural World Generation
  - SYS-005 Camelot Meta Progression
  - SYS-006 Enemy And AI Framework
implemented: false
last_updated: 2026-08-05
---

# Arthur: The Once and Future King

# SYS-007 Quest & Narrative System

Version 0.1

---

# 1. Purpose

The Quest and Narrative System creates the story framework that connects gameplay systems with Arthur's journey.

The player is not simply completing objectives.

The player is rebuilding a broken legend.

The narrative system manages:

- Main story progression
- Knight recruitment
- Character stories
- World events
- Dialogue
- Lore discovery
- Player choices

---

# 2. Narrative Philosophy

The core principle:

> History remembers Arthur differently. The player decides which legend survives.

---

The story should make the player feel:

- Responsible for Britain's future
- Connected to the Knights
- Curious about lost history
- Invested in rebuilding Camelot

---

# 3. Design Pillars Supported

✓ Restore The Legend

✓ Every Run Creates A Story

✓ The World Must Remember

✓ Become The King

✓ Quality Over Quantity

---

# 4. Story Overview

## The Premise

Arthur Pendragon has returned.

However, he has not returned to the Britain he remembers.

Camelot has fallen.

The Knights of the Round Table are scattered.

Magic has fractured reality.

History itself has become corrupted.

---

# 5. The Great Fracture

The world-ending event is known as:

# The Great Fracture

---

## Cause

Arthur's final battle with Mordred did not end as history recorded.

The clash between:

- Excalibur
- Dark magic
- Ancient powers

fractured the timeline.

---

## Result

Multiple versions of Britain now exist simultaneously.

Some remember Arthur as:

- A hero
- A tyrant
- A myth
- A failure

---

# 6. Arthur's Goal

The player's ultimate objective:

# Sit upon the throne of England once more.

However, the throne cannot be claimed through force.

Britain must believe again.

---

# 7. Main Story Structure

The campaign is divided into acts.

---

# ACT I

# The Broken King

Theme:

Rediscovery.

---

Objectives:

- Awaken Arthur
- Restore Excalibur
- Establish Camelot
- Recruit first knights

---

Key Characters:

- Guinevere
- Merlin
- First Round Table members

---

# ACT II

# The Lost Kingdom

Theme:

Restoration.

---

Objectives:

- Rebuild Camelot
- Unite Britain
- Recover ancient artefacts
- Discover the truth of the Fracture

---

Key Characters:

- Lancelot
- Gawain
- The Lady of the Lake

---

# ACT III

# The Shadow Of The Crown

Theme:

Confrontation.

---

Objectives:

- Face Morgana
- Discover Mordred's true fate
- Resolve Arthur's legacy

---

# ACT IV

# The Once And Future King

Theme:

Judgement.

---

Objectives:

- Restore the throne
- Decide Britain's future
- Complete Arthur's legend

---

# 8. Quest Architecture

All quests use:

```
QuestDefinition
```

---

Contains:

```
Quest ID

Name

Description

Objectives

Rewards

Characters

Locations

Requirements

Consequences
```

---

# 9. Quest Types

Initial quest types:

---

# Main Quest

Advances Arthur's story.

---

# Knight Quest

Unlocks playable characters.

---

# Character Quest

Explores individual legends.

---

# World Event

Procedural narrative events.

---

# Discovery Quest

Hidden lore and secrets.

---

# 10. Main Quest System

Main quests guide the player through:

```
Awakening

↓

Restoration

↓

Recruitment

↓

Revelation

↓

Confrontation

↓

Ascension
```

---

# 11. Knight Recruitment System

Every playable Knight has a personal quest.

Recruitment requires:

```
Discover Character

↓

Learn Their Story

↓

Resolve Their Conflict

↓

Restore Their Honour

↓

Join The Round Table
```

---

# 12. Example:

# Sir Lancelot

## Lost Legend

Lancelot exists in a fractured timeline where he never saved Camelot.

---

## Conflict

He believes Arthur's failure caused the kingdom's destruction.

---

## Quest

Prove that Camelot can be restored.

---

## Reward

Lancelot joins the Round Table.

Playable character unlocked.

---

# 13. Dialogue System

Dialogue is data-driven.

Uses:

```
DialogueDefinition
```

---

Contains:

```
Speaker

Text

Choices

Conditions

Consequences
```

---

# 14. Dialogue Goals

Dialogue should:

- Reveal lore
- Develop characters
- Explain world changes
- Present choices

---

# 15. Choice System

Choices should influence:

- Relationships
- Dialogue
- Rewards
- World state

---

Examples:

Mercy:

"Spare the fallen knight."

Result:

Possible ally.

---

Justice:

"Execute the traitor."

Result:

Fear increases.

---

# 16. Character Relationship System

Characters track:

```
Respect

Trust

Loyalty

Conflict
```

---

Relationships affect:

- Camp dialogue
- Quests
- Abilities
- Endings

---

# 17. Lore System

The player discovers:

```
LoreEntry
```

---

Categories:

## History

Events of Britain.

---

## Characters

Legends of heroes.

---

## Artefacts

Stories of weapons.

---

## Locations

Secrets of the world.

---

# 18. Codex System

The Codex is stored in Camelot Library.

It grows as the player discovers:

- Enemies
- Regions
- Characters
- Items
- Events

---

# 19. Procedural Narrative Integration

Procedural runs generate story moments.

Example:

A random event:

"The Ghost Of A Fallen Knight"

reveals:

A previous version of Arthur failed here.

---

# 20. World State Integration

Narrative changes the world.

Examples:

Before Merlin Returns:

Magic is unstable.

---

After Merlin Returns:

New magical paths appear.

---

Before Round Table Restoration:

Knights distrust Arthur.

---

After Restoration:

New quests unlock.

---

# 21. Guinevere Narrative Role

Guinevere is the emotional centre.

She remembers:

- Every death
- Every failure
- Every victory

---

She represents:

Hope.

---

# 22. Morgana Narrative Role

Morgana is not simply evil.

She represents:

A different vision for Britain.

---

Her conflict:

Order through control.

---

Arthur's belief:

Order through unity.

---

# 23. Mordred Narrative Role

Mordred represents Arthur's greatest fear:

That his own actions created his downfall.

---

He is:

Enemy.

Son.

Reflection.

---

# 24. Technical Architecture

Scriptable Objects:

```
QuestDefinition

DialogueDefinition

LoreDefinition

CharacterStoryDefinition

ChoiceDefinition
```

---

Runtime:

```
QuestManager

DialogueManager

NarrativeStateManager

RelationshipManager

LoreManager
```

---

# 25. Save Data

Store:

```
CompletedQuests

ActiveQuests

DialogueChoices

Relationships

LoreUnlocked

StoryProgress
```

---

# 26. AI Implementation Rules

Narrative AI agents must:

- Respect established lore
- Maintain character voices
- Avoid contradictions
- Use approved templates
- Update documentation

---

# 27. Testing Requirements

Test:

## Quest Flow

Can quests complete?

---

## Choices

Do consequences apply?

---

## Saves

Does narrative state persist?

---

## Dialogue

Are conditions correct?

---

# 28. Future Expansion

Possible additions:

- Dynamic kingdom politics
- Romance paths
- Betrayal systems
- Multiple endings
- Player-created legends
- Voice acting integration

---

# Definition Of Done

Quest & Narrative System complete when:

✓ Main story exists

✓ Knight quests function

✓ Dialogue works

✓ Choices persist

✓ Lore system works

✓ World reacts to progress

✓ AI agents can safely expand narrative
