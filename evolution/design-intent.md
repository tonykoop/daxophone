# Design Intent — daxophone rev A

- Master CAD: `cad/daxophone.scad` (sha256: 6decf7ecf6d7e0b4b09d4cf1e4847ab11d99c7db20e90791fa6368a3f54f9063) — a non-dimensional tongue/dax-blank bounding envelope. No design table (xlsx) exists for this instrument; `design.md` and `decision-record.md` are the governing sources.
- Function: Friction idiophone. A shaped wooden tongue is clamped in a block and bowed along its edge; a hand-held dax block presses the tongue to change effective vibrating shape and produce vocal, gliding tones; a contact pickup captures the vibration for amplification (design.md Core Mechanism).
- Environment: player-held bowing and dax contact; clamp force and edge preparation are safety-relevant (risks.md).
- Target qty: 1 (prototype bench rig). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Tongue blank bounding stock | 14 × 2.5 × 0.5 in (assumption) | none — bench-planning only | shop-space blocking | cad/daxophone.scad header (assumption, not a design-table value) |
| Tongue outline / thickness profile | TBD | measurement_required | vibration response | design.md tongue blank subsystem, cut-list.csv CL-001 |
| Clamp jaw geometry / pressure | TBD | measurement_required | buzz/fiber-damage risk | design.md clamp block subsystem, cut-list.csv CL-003 |
| Dax-face contour / contact curve | TBD | measurement_required | expressive range, playability | design.md dax block subsystem, cut-list.csv CL-005 |
| Contact pickup placement | TBD | measurement_required | signal quality without structural coloring | design.md contact pickup subsystem |

## Incidental (free for DFM)

- Bench base support styling/finish; exact bounding-box dimensions of coupon stock shown in cad/daxophone.scad (bench-planning placeholders, not released geometry).

## Must-nots (DFM may never violate)

- Never invent tongue, clamp, dax-face, or pickup dimensions — every value in cut-list.csv/bom.csv stays `pending_measurement` until a coupon test sets it (design.md, decision-record.md).
- Do not treat the OpenSCAD envelope as a tongue-outline or dax-contact-curve model — explicitly out of scope (cad/daxophone.scad header).
- Do not mount the contact pickup as a structural brace without a reversible-mount noise test (design.md contact pickup subsystem).
- Do not proceed past coupon testing without the safety/edge review in risks.md clearing (splinter/sharp-edge risk).

## Material intent

- Preferred: per bom.csv subsystem categories (tongue blank hardwood, clamp block, dax block hardwood, contact pickup, output jack, bench base) — all quantities/specs `pending_measurement`/`estimate_class_only`.
- Acceptable subs: none recorded (sourcing.csv is TBD pending coupon-test specs).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable.
