<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Daxophone

**Status:** L2 V5 build-packet candidate; planning packet, not fabrication-ready

Private V5 planning packet for a daxophone: a bowed wooden tongue clamped in a
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
- `bom.csv` - subsystem-level parts and test-support classes only.
- `cut-list.csv` - non-dimensional tongue, clamp, dax, pickup, and safety
  workpiece categories; all sizes and counts remain pending measurement.
- `visual-output-register.csv` - V5 authority register; every row is
  `concept_only` or `pending_measurement`.
- `cad/mcp-session-log.md` - QMD and provenance stub; no MCP/CAD session run.
- `decision-record.md` - decisions, open questions, and promotion gates.
- `sourcing.csv`, `validation.csv`, `risks.md`, `drawing-brief.md` - V5
  baseline packet tables (TBD-marked; no design table exists yet).
- `cad/daxophone.scad` - non-dimensional tongue/dax-blank bounding envelope;
  authority `pending_measurement`.
- `evolution/` - evolution-pipeline Stage 0 intake: master manifest,
  design-intent, and revision register (Gate A not yet run).

## Readiness

L2 means the repo now names the shop subsystems, workpiece categories,
measurement logs, and authority boundaries needed for a careful prototype
review. It still does not release dimensions, profiles, fret maps, pickup
placement, or tuning targets. Promotion beyond L2 requires measured tongue
blanks, a reviewed clamp and dax interface, pickup tests, and a complete
authority register for any future visual or CAD outputs.
