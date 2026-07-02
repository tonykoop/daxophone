<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# MCP Session Log

V5 provenance stub for the daxophone L2 planning packet.

## Step 0 QMD

| Date | Command | Result | Notes |
| --- | --- | --- | --- |
| 2026-05-30 | `qmd query "daxophone Daxophone — a wooden tongue clamped in a block ('dax') and bowed on its edge, with a contact pickup; friction/stick-slip vibration of shaped wooden tongues; played with a 'dax' block pressing frets"` | unavailable | Command began search/rerank, then node-llama-cpp emitted a fatal error and the bounded run exited with timeout code 124. No QMD output was used as fabrication, CAD, dimension, tuning, or electronics authority. |
| 2026-05-30 | `qmd search "daxophone" -c instrument-builds` | unavailable | Search failed locally because sqlite-vec was unavailable: unable to open database file. No QMD output was used as fabrication, CAD, dimension, tuning, or electronics authority. |

## External Tool Sessions

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| none-2026-05-30 | none | Round 7 handoff and general mechanical concept stated in prompt. | `README.md`, `design.md`, `bom.csv`, `decision-record.md`, `visual-output-register.csv`, `cad/mcp-session-log.md` | l1_concept_packet | concept_only | self_checked | No MCP, CAD, image, audio, Wolfram, electronics simulation, or CAM tool generated artifacts. |
| codex-r7-l2-uplift-2026-05-30 | Codex local edit | Existing repo packet plus failed QMD Step 0. | `README.md`, `design.md`, `bom.csv`, `cut-list.csv`, `decision-record.md`, `visual-output-register.csv`, `cad/mcp-session-log.md` | l2_planning_uplift | pending_measurement | self_checked | Added non-dimensional subsystem interfaces, workpiece categories, and measurement gates only. |
| codex-r8-wolfram-2026-05-30 | Codex local edit | Round 8 Wolfram authoring handoff and existing L2 packet. | `daxophone-starter.wl`, `wolfram/daxophone-wolfram-model.wl`, `visual-output-register.csv`, `cad/mcp-session-log.md` | reference_only_parametric_model | reference_only | self_checked | No MCP, Wolfram Desktop, Wolfram Cloud, CAD, image, audio, or CAM session was run; source authored by hand with estimate placeholders only. |

| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | design.md, decision-record.md (no design table/xlsx exists for this instrument) | bom.csv, cut-list.csv, sourcing.csv, validation.csv | packet_refresh | fabrication | self_checked | V5 refresh pass: added sourcing.csv and validation.csv baseline files; reviewed existing bom.csv/cut-list.csv against design.md — no dimension changes made, all rows remain pending_measurement. Provenance rows added to satisfy V5 fabrication-artifact logging. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) + OpenSCAD CLI | design.md subsystem gates (no design table/xlsx; all values marked `assumption`) | cad/daxophone.scad | cad_authoring | pending_measurement | self_checked | Non-dimensional tongue/dax-blank bounding envelope (coupon stock, clamp block, dax block, base) authored as bench-planning layout only; tongue outline, dax contact curve, clamp pressure, and pickup placement explicitly out of scope per design.md subsystem gates. OpenSCAD render check: pass (openscad -o STL, exit 0). |

## Authority Notes

- No fabricated dimensions, DXF coordinates, tongue profiles, fret/contact
  locations, pickup placement, tuning values, or acoustic response data were
  created.
- All future CAD, drawings, templates, pickup wiring, and playable pitch maps
  must trace to measured blanks, reviewed design tables, or explicit prototype
  tests before promotion beyond L2.
- 2026-07-01: `cad/daxophone.scad` was added as a non-dimensional tongue/dax
  bounding envelope (bench-planning layout only); it does not create tongue
  profile, dax contact curve, clamp pressure, or pickup placement authority.
