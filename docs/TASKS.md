# TASKS.md

## Current Goal

Build the smallest playable Android-first fantasy tower defense prototype with a clean enough structure to expand later.

---

## Phase 1 - Project Setup

- [ ] Create Godot 4.x project inside `/godot`
- [ ] Set landscape orientation and initial display settings
- [ ] Confirm Android export requirements
- [ ] Create initial folder structure
- [ ] Create placeholder main menu scene
- [ ] Create placeholder level scene
- [ ] Add base documentation files to workflow

---

## Phase 2 - Graybox Core Gameplay

- [ ] Create a simple fantasy-themed test map
- [ ] Add one fixed path from spawn to goal
- [ ] Add a visible spawn point
- [ ] Add a visible goal/end point
- [ ] Add designated build spots
- [ ] Create `EnemyBase`
- [ ] Implement enemy movement along the path
- [ ] Create `TowerBase`
- [ ] Implement tower placement on build spots
- [ ] Implement enemy detection in tower range
- [ ] Implement tower attack behavior
- [ ] Implement enemy health
- [ ] Implement enemy death
- [ ] Award gold on enemy death
- [ ] Reduce player lives when enemies reach the goal
- [ ] Add lose condition
- [ ] Add win condition

---

## Phase 3 - Towers, Enemies, and Waves

- [ ] Create `ArcherTower`
- [ ] Create `MageTower`
- [ ] Create `Goblin`
- [ ] Create second enemy type (`FastWolf` or `HeavyOrc`)
- [ ] Create wave spawner
- [ ] Implement 5 waves
- [ ] Tune costs, health, speed, and damage values
- [ ] Ensure both tower types serve different purposes
- [ ] Ensure both enemy types create different pressures

---

## Phase 4 - HUD and Flow

- [ ] Add HUD container
- [ ] Display current gold
- [ ] Display current lives
- [ ] Display current wave
- [ ] Add start wave/start level flow
- [ ] Add restart level flow
- [ ] Add simple win screen
- [ ] Add simple lose screen
- [ ] Add pause support if easy and clean

---

## Phase 5 - Android Validation

- [ ] Export prototype to Android
- [ ] Test touch controls on device
- [ ] Verify build spots are easy to tap
- [ ] Verify HUD readability on phone
- [ ] Verify acceptable performance
- [ ] Fix UI/layout issues
- [ ] Fix touch/input friction
- [ ] Fix aspect ratio issues

---

## Phase 6 - Cleanup and Basic Polish

- [ ] Refactor any oversized scripts
- [ ] Clean up scene dependencies
- [ ] Improve range/build/path readability
- [ ] Add simple fantasy placeholder visuals
- [ ] Add simple audio if worthwhile
- [ ] Move tunable values into better-configured data structures if needed

---

## Backlog - Planned Later

These are intentionally not part of the first prototype:

- [ ] tower upgrading
- [ ] gold collection mechanics
- [ ] additional towers
- [ ] additional enemies
- [ ] multiple maps
- [ ] boss waves
- [ ] status effects
- [ ] progression/meta systems
- [ ] save/load progression
- [ ] polished art/VFX
- [ ] monetization
- [ ] online systems
- [ ] analytics
- [ ] achievements

---

## First Milestone Definition

The first milestone is complete when:
- the player can start the game
- the player can enter a level
- enemies follow a path
- the player can place towers
- towers attack enemies automatically
- enemies die and grant gold
- leaks reduce player lives
- the player can either win or lose
- the prototype runs on Android

---

## Suggested First Implementation Order

1. Create the Godot project and folder structure
2. Make a level with one path and build spots
3. Implement a single enemy moving along the path
4. Implement a single tower that attacks enemies
5. Add gold and lives
6. Add wave spawning
7. Add a second tower and second enemy
8. Add HUD and win/lose flow
9. Export and test on Android
10. Clean up structure without expanding scope

---

## Suggested Early Codex / OpenClaw Tasks

1. Scaffold the Godot project folder structure and placeholder scenes.
2. Create a level scene with a fixed path, spawn, goal, and build spots.
3. Implement an enemy that follows the path.
4. Implement a basic tower placement system using build spots.
5. Implement an Archer Tower that targets and attacks enemies in range.
6. Implement enemy health, death, gold rewards, and life loss on leak.
7. Add a second tower and second enemy type.
8. Add wave spawning and a minimal HUD.
9. Prepare the project for Android testing.
