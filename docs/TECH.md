# TECH.md

## Technical Goals

This project has three technical goals:

1. Build a playable prototype quickly
2. Keep the structure clean enough for future growth
3. Use the project to learn Godot in a practical way

The codebase should therefore favor:
- simplicity
- readability
- modular scenes
- explicit dependencies
- minimal but sensible architecture

## Engine and Platform

- Engine: Godot 4.x
- Project type: 2D
- Main target platform: Android
- Secondary platform: Desktop for development/testing
- Orientation: Landscape
- Game mode: Single-player offline

## Key Technical Decisions

### 1. 2D
Reason:
- faster to build
- easier to learn in Godot
- easier to keep performant on mobile
- easier to prototype with placeholder assets

### 2. Landscape orientation
Reason:
- gives more room for path + towers + HUD
- better fit for path-based tower defense
- easier play area readability on phones

### 3. Classic path-based TD
Reason:
- simpler first implementation
- easier balancing and level design
- strong fit for a small first project

### 4. Fixed enemy path
Reason:
- avoids early pathfinding complexity
- easier to tune and debug
- keeps focus on core gameplay

### 5. Build spots instead of free placement
Reason:
- simpler touch interaction
- more predictable tower spacing
- easier map design
- easier validation for placement rules

### 6. Single-player offline only
Reason:
- no backend or account systems
- no online sync complexity
- faster iteration

## Project Structure

```text
/godot
  project.godot
  /scenes
    /main_menu
    /level
    /ui
    /towers
    /enemies
    /projectiles
    /systems
    /effects
  /scripts
    /core
    /components
    /systems
    /ui
  /assets
    /art
    /audio
    /fonts
  /data
    /towers
    /enemies
    /waves
  /tests
```

## Scene Architecture

Expected early scenes:

- `MainMenu`
- `Level`
- `HUD`
- `BuildSpot`
- `TowerBase`
- `ArcherTower`
- `MageTower`
- `EnemyBase`
- `Goblin`
- `FastWolf` or `HeavyOrc`
- `WaveSpawner`
- `Projectile`

## Architecture Principles

### Prefer small, focused scenes and scripts
Avoid giant all-in-one scripts.
Each scene or script should have a clear purpose.

### Prefer explicit scene composition
Use Godot scenes as reusable units:
- towers
- enemies
- UI
- projectiles
- build spots
- wave systems

### Avoid premature abstraction
Do not build generic systems “for later” unless the MVP already needs them.

### Refactor only when there is a real second use case
A little duplication is acceptable early if it keeps things understandable.

## Coding Style Guidelines

- Use clear descriptive names
- Keep methods small
- Keep one main responsibility per script
- Prefer exported variables for tunable values
- Document assumptions when needed
- Avoid cleverness
- Prefer readable code over compact code

## Naming Conventions

### Scenes
Use PascalCase:
- `ArcherTower.tscn`
- `BuildSpot.tscn`
- `WaveSpawner.tscn`

### Scripts
Match the scene name where practical:
- `ArcherTower.gd`
- `EnemyBase.gd`

### Folders
Use consistent lowercase folder names.

## Data Strategy

Gameplay values should eventually be easy to tweak.

Likely candidates for data-driven values:
- tower cost
- attack speed
- damage
- range
- enemy health
- enemy movement speed
- enemy reward
- wave composition

### Early approach
For the earliest playable version, simple exported variables or small resource files are acceptable.

### Preferred direction
Move wave/tower/enemy stats into data files or Godot Resources once the basic gameplay loop is working.

## Input Strategy

### Android
- touch is the primary input
- build spots should be large and easy to tap
- tower placement should require minimal precision

### Desktop
- mouse input should work for quick development testing

## Camera and Resolution Strategy

- prioritize mobile readability first
- avoid tiny text
- keep HUD minimal
- avoid requiring camera movement in the MVP
- keep the important play area visible at all times

The prototype should be tested on a real Android device early to validate:
- readability
- tap accuracy
- UI scale
- performance

## Gameplay Systems for MVP

Required systems:
- enemy path following
- wave spawning
- tower placement
- enemy detection / targeting
- attack timing
- projectile or direct-hit damage
- health and death
- gold rewards
- lives / base damage
- HUD updates
- win/lose state

## Deferred Systems

Do not build these in the initial prototype:
- tower upgrading
- gold collection mechanics
- save system
- progression/meta systems
- achievements
- analytics
- monetization
- online features
- dynamic pathfinding
- inventory/shop systems

## Android Development Notes

The project should be exported to Android as soon as the basic gameplay loop works.

Android validation should happen early enough to catch:
- bad UI scale
- awkward touch controls
- performance issues
- aspect ratio/layout problems

## AI Agent Guidance

This repository will be worked on with AI assistance, including Codex/OpenClaw.

Guidelines for AI agents:
- implement one feature at a time
- do not introduce large speculative systems
- prefer the simplest working version first
- keep files small and focused
- avoid unrelated refactors
- preserve clean structure while respecting MVP scope
- explain assumptions in comments or docs when helpful

## Definition of Done for Technical Prototype

The technical prototype is complete when:
- the game can be opened and run cleanly in Godot
- the game can be exported to Android
- the core gameplay loop works from start to finish
- the project structure remains understandable
- gameplay values can be tuned without excessive rework
