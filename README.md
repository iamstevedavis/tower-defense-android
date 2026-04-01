# Fantasy Tower Defense

A mobile-first fantasy tower defense game built with Godot for Android.

## Project Goal

Build a small but well-structured tower defense prototype that is:
- playable on Android early
- cleanly organized for future expansion
- simple enough to learn Godot while building

This project is intentionally scoped as a small MVP first, with room to expand later.

## MVP Scope

The first playable version includes:

- 1 map
- 1 fixed enemy path
- 2 tower types
- 2 enemy types
- 5 waves
- gold/currency
- basic HUD
- win/lose screens
- Android touch support
- placeholder or simple fantasy-themed visuals

## Design Direction

- Genre: Classic path-based tower defense
- Visual style: Fantasy
- Platform priority: Android
- Secondary platform: Desktop for development/testing
- Rendering style: 2D
- Orientation: Landscape
- Game mode: Single-player offline

## Development Philosophy

This project should balance three goals:

1. **Get a playable prototype fast**
2. **Keep the project structure clean and scalable**
3. **Use the project as a practical way to learn Godot**

That means:
- keep gameplay scope small
- avoid premature complexity
- build features in small complete slices
- favor modular scenes and readable code

## Current Priorities

1. Build the core gameplay loop with placeholder assets
2. Export to Android early
3. Validate that touch controls and readability feel good on a phone
4. Expand only after the core loop is fun

## Documentation

- `docs/GAME.md` - game design, scope, and gameplay goals
- `docs/TECH.md` - technical decisions, architecture, and conventions
- `docs/TASKS.md` - ordered implementation plan and backlog

## Initial Core Loop

1. Start wave
2. Enemies follow the path toward the goal
3. Player places towers on valid build spots
4. Towers automatically attack enemies in range
5. Defeated enemies grant gold
6. Enemies that reach the goal reduce lives
7. Survive all waves to win

## Planned Later (Not MVP)

These are intentionally deferred until the first prototype works well:

- gold collection mechanics
- tower upgrading
- more maps
- more enemies
- more towers
- better art and VFX
- deeper progression systems

## Non-Goals for Initial Prototype

- online features
- monetization
- procedural generation
- hero units
- branching paths
- dynamic enemy rerouting
- meta progression
- save-based progression systems
- large content scope

## Repo Structure

```text
/docs
/godot
```

The actual Godot project lives in `/godot`.

## First Milestone

A playable graybox build where:
- enemies move along a fixed path
- the player can place at least one tower type
- towers attack automatically
- enemies die and grant gold
- leaks reduce lives
- the player can win or lose
- the game runs on Android
