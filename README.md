<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Daxophone

Status: L1 concept packet

Private V5 concept packet for a daxophone: a bowed wooden tongue clamped in a
block, excited along its edge, shaped and stopped with a hand-held dax block,
and captured with a contact pickup.

## Concept Boundary

This packet is a design study only. It does not contain fabricated dimensions,
DXF coordinates, tongue profiles, fret positions, pickup specifications, tuning
targets, or acoustic predictions. Tongue material, grain direction, clamp
pressure, dax-face geometry, contact pickup placement, and playable pitch
behavior are all `pending_measurement`.

## Core Mechanism

- A shaped wooden tongue is clamped in a resonant or mechanically stable block.
- The player bows the tongue edge to create friction/stick-slip vibration.
- A separate dax block presses the tongue to change effective vibrating shape
  and produce vocal, unstable, and gliding tones.
- A contact pickup captures the tongue vibration for amplification or recording.
- The engineering focus is repeatable clamping, expressive but controllable dax
  contact, low-noise pickup mounting, and safe edge preparation.

## Packet Map

- `design.md` - mechanism concept, parametric intent, and measurement gates.
- `bom.csv` - estimated parts classes only.
- `visual-output-register.csv` - V5 authority register; every row is
  `concept_only` or `pending_measurement`.
- `cad/mcp-session-log.md` - QMD and provenance stub; no MCP/CAD session run.
- `decision-record.md` - decisions, open questions, and promotion gates.

## Readiness

L1 means the repo captures intent, risks, and required evidence. Promotion to L2
requires measured tongue blanks, a reviewed clamp and dax interface, a pickup
test plan, and a complete authority register for any future visual or CAD
outputs.
