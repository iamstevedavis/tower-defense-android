# GAME.md

## High Concept

A 2D fantasy tower defense game for Android where the player defends against waves of enemies by placing magical or defensive towers along a fixed route.

The game starts as a small prototype focused on clarity, fun, and mobile usability. The initial version should prove the core loop before adding more content or complexity.

## Vision

Create a simple but satisfying fantasy tower defense experience with:
- clear tactical decisions
- readable mobile-friendly combat
- short session length
- a codebase structured well enough to grow over time

## Core Design Pillars

### 1. Clear tactical play
Players should quickly understand:
- where enemies are going
- where towers can be placed
- what towers are good at
- why a defense succeeds or fails

### 2. Strong readability on mobile
The game must be easy to read on a phone:
- enemy movement must be obvious
- tower attack range and timing should feel understandable
- HUD information should remain visible and simple

### 3. Small scope, solid execution
The first version should be tiny but complete.
A short, polished prototype is more valuable than a large unfinished design.

### 4. Fantasy theme with simple implementation
The fantasy tone should come through in naming, basic visuals, and tower/enemy identities, even while using simple placeholder art.

## Game Format

- Genre: Classic path-based tower defense
- Perspective: Top-down 2D
- Platform: Android first
- Orientation: Landscape
- Input: Touch-first
- Mode: Single-player offline
- Session length target: 5–10 minutes

## Core Gameplay Loop

1. A wave begins
2. Enemies travel along a fixed path toward the goal
3. The player spends gold to place towers on valid build spots
4. Towers automatically attack enemies in range
5. Defeated enemies grant gold
6. Enemies that reach the goal reduce player lives
7. The player survives all waves to win, or loses all lives and is defeated

## MVP Scope

### Included in MVP
- 1 playable map
- 1 fixed path from spawn to goal
- designated build spots
- 2 tower types
- 2 enemy types
- 5 waves
- gold currency
- lives/base health
- win screen
- lose screen
- simple HUD
- pause/restart if easy to support
- touch support
- simple fantasy placeholder visuals

### Excluded from MVP
- tower upgrading
- gold pickup/collection mechanics
- multiple maps
- branching paths
- status effects
- bosses
- hero units
- tower skill trees
- meta progression
- save/load progression
- shops
- achievements
- monetization
- online systems

## First Map Design

The first map should be intentionally simple:
- one clear path
- one spawn point
- one goal
- a readable set of build spots
- no branching lanes
- no gimmicks

The purpose of the map is to validate:
- path readability
- placement flow
- pacing
- difficulty tuning
- Android usability

## Towers

These names are placeholders and can change later.

### Tower 1: Archer Tower
Role:
- basic single-target tower
- cheap and reliable
- good starter option

Behavior:
- attacks one enemy at a time
- moderate damage
- moderate range
- steady attack speed

Purpose in MVP:
- baseline tower for player learning
- establishes the default DPS expectation

### Tower 2: Mage Tower
Role:
- higher-impact specialty tower
- introduces tactical variety

Possible behavior options:
- slower but stronger attack
- splash damage
- magical burst
- area control

For the MVP, choose the simplest version that creates a meaningful contrast with the Archer Tower.

Purpose in MVP:
- force a basic decision beyond “spam one tower”

## Enemies

These names are placeholders and can change later.

### Enemy 1: Goblin
Role:
- baseline enemy
- standard speed and health

Purpose:
- used to define normal pacing and tower effectiveness

### Enemy 2: Fast Wolf or Heavy Orc
Pick one style for MVP:
- **Fast Wolf:** low health, high speed
- **Heavy Orc:** high health, low speed

The goal is to create one meaningful contrast against the baseline enemy.

## Resources

### Gold
Gold is earned by defeating enemies.
Gold is used to place towers.

In the MVP, gold is awarded automatically on enemy death.

### Lives
Lives represent the player’s remaining defense.
When enemies reach the goal, lives are reduced.
If lives reach zero, the player loses.

## Win / Lose Conditions

### Win
The player survives all 5 waves.

### Lose
The player’s lives reach zero before all waves are cleared.

## UX Goals

- Build spots must be easy to tap on a phone
- HUD must always show:
  - gold
  - lives
  - current wave
- Core actions should require as few taps as possible
- Combat should be readable without clutter
- Failure should feel understandable, not random

## Art Direction (Prototype Phase)

The game theme is fantasy, but the first version does not need polished art.

Acceptable prototype visuals:
- colored placeholder shapes
- simple fantasy-inspired icons
- basic tiles
- readable range indicators
- simple fantasy naming in UI and docs

The priority is readability and gameplay feel, not finished art.

## Audio (Prototype Phase)

Optional for early prototype:
- bow shot sound
- magic shot sound
- enemy death sound
- UI tap/click sound

Audio is nice to have, not required for the first playable build.

## Balancing Goals for MVP

The MVP is successful if:
- the player immediately understands the objective
- tower placement feels meaningful
- both tower types have a reason to exist
- the player can both win and lose depending on choices
- the pacing feels fair and readable

## Future Expansion Ideas

These are intentionally deferred until after the first prototype is working well:
- tower upgrading
- gold collection/pickup mechanics
- more tower types
- more enemy types
- more maps
- wave variety
- better fantasy art and effects

## Success Criteria for Prototype

The prototype is successful when:
1. It runs on Android
2. It is playable from start to finish
3. Touch placement works well enough
4. The core loop feels promising
5. The codebase is still understandable and extensible
