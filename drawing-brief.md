<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Daxophone Drawing Brief

No dimensioned drawings exist yet. This brief names the first drawings a
builder would need once coupon testing produces measured evidence (see
design.md Measurement Gates).

Required first drawings (blocked on measurement):

- Tongue blank coupon: species, grain orientation, outline, and edge-finish
  test article (cut-list.csv CL-001, CL-002).
- Clamp jaw + liner detail: interface geometry once buzz/damage tests clear
  (CL-003, CL-004).
- Dax-face coupon: hand-held contact surface, no curve or contact map
  released yet (CL-005).
- Bench base support and pickup mount coupon: reversible mounting only, no
  pickup coordinate released (CL-006, CL-007).

## Authority Notes

- No design table (xlsx) or measured reference exists for this instrument.
  Every dimension referenced above is `pending_measurement` until a coupon
  test sets it (design.md Authority Boundary).
- Do not produce a fabrication drawing before the tongue coupon, clamp,
  bowing, dax-contact, and pickup-mount tests in `validation.csv` are
  complete.
- `cad/daxophone.scad` (if present) is a non-dimensional tongue/dax-blank
  bounding envelope only — it does not model tongue outline, dax contact
  geometry, or pickup placement, and is not drawing authority.
