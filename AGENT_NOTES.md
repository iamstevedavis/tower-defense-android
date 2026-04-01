# AGENT_NOTES.md

## Purpose

This file provides guidance for AI agents (Codex, OpenClaw, etc.) working in this repository.

The goal is to:
- keep development focused
- avoid unnecessary complexity
- ensure consistent structure and decisions
- prioritize a working prototype over speculative architecture

---

## Project Context

This is a **small, mobile-first fantasy tower defense game** built with Godot.

Key constraints:
- 2D
- landscape orientation
- Android-first
- single-player offline
- fixed enemy paths
- grid/build-spot based tower placement

The current goal is to build a **small playable MVP**, not a full production game.

---

## Core Principles

### 1. Build small, complete features

Always implement features in small, end-to-end slices.

Good:
- “Add enemy movement along a path”
- “Add tower attack logic”

Bad:
- “Design a full combat system architecture before anything works”

---

### 2. Prefer simple working code

- Choose the simplest implementation that works
- Avoid premature abstraction
- Do not introduce systems “for future use” unless needed now

---

### 3. Do not expand scope

Do NOT introduce:
- new gameplay systems
- new mechanics
- new features

unless explicitly requested.

Examples of forbidden additions (for now):
- upgrade systems
- inventory systems
- skill trees
- save systems
- online features
- monetization

---

### 4. Avoid unrelated refactoring

Do NOT:
- rename files unnecessarily
- restructure folders without reason
- refactor working code unrelated to the task

Only refactor when:
- required for the current task
- or fixing something clearly broken

---

### 5. Keep files small and focused

- One script = one responsibility
- Avoid large “manager” scripts doing everything
- Prefer composition via scenes

---

### 6. Follow existing structure

Respect the structure defined in `TECH.md`.

Do not invent new top-level patterns unless necessary.

---

### 7. Be explicit

When writing code:
- clearly define dependencies
- use exported variables for tunable values
- avoid hidden assumptions

When making decisions:
- explain why in comments if not obvious

---

### 8. Use incremental changes

Prefer:
- small patches
- minimal diffs
- incremental improvements

Avoid:
- large sweeping changes
- rewriting working systems

---

### 9. Match the MVP scope

Always align with:
- `docs/GAME.md`
- `docs/TECH.md`
- `docs/TASKS.md`

If a task goes beyond MVP, do not implement it unless explicitly asked.

---

### 10. Stop at “working”

Do not over-polish.

Once something:
- works correctly
- is readable
- fits the current scope

move on.

---

## Preferred Workflow

When implementing features:

1. Read relevant docs (`GAME.md`, `TECH.md`, `TASKS.md`)
2. Implement the smallest working version
3. Keep changes localized
4. Ensure nothing else breaks
5. Stop

---

## Example Good Tasks

- “Create an enemy that follows a Path2D”
- “Add a basic tower that attacks enemies in range”
- “Implement gold reward on enemy death”
- “Add a simple HUD showing gold/lives/wave”

---

## Example Bad Tasks

- “Design a full scalable combat system for future expansion”
- “Implement a flexible plugin system”
- “Add upgrade trees and persistence”
- “Refactor everything to be more generic”

---

## Final Rule

When in doubt:

👉 Choose the simplest possible solution that gets the game playable.
