<!-- SPDX-License-Identifier: CC-BY-4.0 -->
---
instrument: Daxophone
family: idiophone_friction_wood
packet_mode: v5_l1_concept
authority: concept_only
readiness: L1 concept packet
---

# Daxophone Design Study

## Design Thesis

This V5 L1 packet frames a daxophone as an expressive friction idiophone rather
than a conventional bowed string instrument. The sound source is a wooden tongue
whose outline, grain, clamp condition, and local contact from the dax block all
change the speaking behavior. The contact pickup is part of the instrument
system because it captures details that may be quiet acoustically.

The first packet stays non-dimensional. It names the subsystems and evidence
gates needed before any fabrication or tuning claim can be made.

## Mechanism

The tongue is a shaped wooden cantilever clamped at one end in a block. The bow
excites the free edge. The player's other hand uses a dax block against the
tongue face or edge to alter the active vibrating region and surface contact.
Unlike a fixed fretboard, the dax block is expressive and mobile, so its face
material, contour, grip, and finish matter.

The clamp must hold the tongue without crushing fibers or creating unpredictable
buzz. The contact pickup must sense the tongue or clamp system without becoming
a structural brace that changes the response in an undocumented way.

## Parametric Intent

Future design tables should separate measured data from choices:

- `tongue_blank_id`
- `wood_species_status`
- `grain_orientation_status`
- `tongue_outline_status`
- `edge_finish_status`
- `clamp_interface_status`
- `dax_face_material_status`
- `dax_contact_response_status`
- `pickup_mount_status`
- `bow_response_status`
- `amplified_noise_status`

All fields are currently `pending_measurement`. This repo does not infer
profiles, fret locations, pitch response, or pickup placement from prose,
images, or memory.

## Authority Boundary

- Concept authority: README, design notes, estimated BOM, and decision record.
- Measurement authority: none yet.
- CAD/DXF authority: none yet.
- Tuning authority: none yet.
- Electronics authority: none yet.

Future concept images or sketches may describe mood, ergonomics, or performance
posture, but they must not become sources for tongue profiles, clamp geometry,
dax contact curves, pickup placement, or playable pitch maps.

## Measurement Gates

Promotion beyond L1 requires:

- A real tongue coupon or blank measured and photographed before shaping.
- A clamp test that records stability, buzz, and damage risk.
- A bowing test that separates tongue behavior from pickup and amplifier color.
- A dax-block contact test that documents repeatability and expressive range.
- A pickup mounting test that records noise, handling sensitivity, and
  reversibility.
- A safety review for sharp edges, splinters, clamp force, and bowing posture.

## Risks

- Over-tight clamping can crush wood fibers or mute the tongue.
- Under-tight clamping can buzz, slip, or create false measurement results.
- Bowed-edge preparation affects response and player safety.
- The contact pickup can hide weak acoustic behavior or introduce mechanical
  artifacts.
- Dax-block contact may be expressive but hard to document without a repeatable
  measurement protocol.
