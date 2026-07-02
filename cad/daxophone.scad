// Daxophone — tongue / dax-blank bounding ENVELOPE ONLY
// SPDX-License-Identifier: CC-BY-4.0
//
// Source of truth: no design table (xlsx) or measured reference exists for
// this instrument yet (see ../design.md, ../decision-record.md). Every
// dimension below is an `assumption` bounding-envelope placeholder for
// bench-planning layout, NOT a released tongue, clamp, or dax-block spec.
//
// Authority: pending_measurement. NOT fabrication authority until reviewed
// against a measured reference or design table (see
// ../visual-output-register.csv, ../cad/mcp-session-log.md).
//
// EXPLICITLY OUT OF SCOPE (per design.md subsystem gates — hand-refined,
// tuning-sensitive regions this envelope does not model):
//   - tongue outline, thickness profile, grain orientation, edge finish
//   - dax-block face contour / contact curve ("fret map")
//   - clamp jaw pressure/geometry and resulting buzz/damage behavior
//   - contact pickup placement and playable pitch behavior
// This file models only the bounding blanks (tongue coupon, clamp block, dax
// block) as rectangular stock envelopes so a builder can block out bench
// space and coupon stock before any of the above is measured.

// ---- Parameters (all `assumption`, bounding-envelope only) ----
tongue_blank_len_in   = 14;   // assumption: coupon stock bounding length, design.md CL-001 (pending_measurement)
tongue_blank_w_in     = 2.5;  // assumption: coupon stock bounding width, design.md CL-001 (pending_measurement)
tongue_blank_th_in    = 0.5;  // assumption: coupon stock bounding thickness, design.md CL-001 (pending_measurement)
clamp_block_len_in    = 4;    // assumption: clamp jaw coupon bounding length, design.md CL-003 (pending_measurement)
clamp_block_w_in      = 3;    // assumption: clamp jaw coupon bounding width, design.md CL-003 (pending_measurement)
clamp_block_h_in      = 3;    // assumption: clamp jaw coupon bounding height, design.md CL-003 (pending_measurement)
dax_block_len_in      = 6;    // assumption: hand-held dax block bounding length, design.md CL-005 (pending_measurement)
dax_block_w_in        = 1.5;  // assumption: hand-held dax block bounding width, design.md CL-005 (pending_measurement)
dax_block_h_in        = 1.5;  // assumption: hand-held dax block bounding height, design.md CL-005 (pending_measurement)
base_len_in           = 20;   // assumption: bench base support bounding length, design.md CL-006 (pending_measurement)
base_w_in             = 6;    // assumption: bench base support bounding width, design.md CL-006 (pending_measurement)
base_h_in             = 1.5;  // assumption: bench base support bounding height, design.md CL-006 (pending_measurement)
clamp_offset_in       = 2;    // assumption: how far the clamp sits from the tongue free end, bench-planning only

in = 25.4; // mm per inch

// ---- Modules ----

// Bench base support (bounding box only)
module base_envelope() {
    cube([base_len_in * in, base_w_in * in, base_h_in * in], center = false);
}

// Clamp block coupon (bounding box; holds one end of the tongue blank)
module clamp_envelope() {
    cube([clamp_block_len_in * in, clamp_block_w_in * in, clamp_block_h_in * in], center = false);
}

// Tongue blank coupon (bounding box; cantilevered off the clamp block)
module tongue_envelope() {
    cube([tongue_blank_len_in * in, tongue_blank_w_in * in, tongue_blank_th_in * in], center = false);
}

// Hand-held dax block (bounding box shown near mid-tongue for layout reference only)
module dax_block_envelope() {
    cube([dax_block_len_in * in, dax_block_w_in * in, dax_block_h_in * in], center = false);
}

// ---- Top-level assembly ----
module daxophone_envelope() {
    color("SaddleBrown") translate([0, (base_w_in - clamp_block_w_in) / 2 * in, base_h_in * in])
        base_envelope();
    color("SlateGray") translate([clamp_offset_in * in, (base_w_in - clamp_block_w_in) / 2 * in, base_h_in * in])
        clamp_envelope();
    color("BurlyWood") translate([(clamp_offset_in + clamp_block_len_in) * in,
                                   (base_w_in - tongue_blank_w_in) / 2 * in,
                                   (base_h_in + clamp_block_h_in / 2) * in])
        tongue_envelope();
    color("Chocolate") translate([(clamp_offset_in + clamp_block_len_in + tongue_blank_len_in / 2) * in,
                                   (base_w_in - dax_block_w_in) / 2 * in,
                                   (base_h_in + clamp_block_h_in / 2 + tongue_blank_th_in) * in])
        dax_block_envelope();
}

daxophone_envelope();
