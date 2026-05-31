(* Daxophone parametric acoustic model.
   All physical values below are estimates only and are not fabrication authority. *)

ClearAll["Global`*"];

daxophoneMetadata = <|
   "instrument" -> "Daxophone",
   "packet" -> "Round 8 Wolfram build-packet model",
   "modelName" -> "Parametric bowed wooden tongue cantilever estimate model",
   "authority" -> "reference_only",
   "calibrationStatus" -> "uncalibrated estimates; pending measurement"
   |>;

tongueLengthEstimate = 0.36; (* estimate — pending measurement, not fabrication authority *)
tongueWidthEstimate = 0.035; (* estimate — pending measurement, not fabrication authority *)
tongueThicknessEstimate = 0.006; (* estimate — pending measurement, not fabrication authority *)
woodDensityEstimate = 650.; (* estimate — pending measurement, not fabrication authority *)
woodYoungsModulusEstimate = 10.0*^9; (* estimate — pending measurement, not fabrication authority *)
clampComplianceFactorEstimate = 0.92; (* estimate — pending measurement, not fabrication authority *)
daxContactPositionFractionEstimate = 0.20; (* estimate — pending measurement, not fabrication authority *)
pickupLoadingFactorEstimate = 0.98; (* estimate — pending measurement, not fabrication authority *)
minimumEffectiveLengthFractionEstimate = 0.25; (* estimate — pending measurement, not fabrication authority *)
betaCantileverMode1Estimate = 1.875104068711961; (* estimate — pending measurement, not fabrication authority *)
betaCantileverMode2Estimate = 4.694091132974174; (* estimate — pending measurement, not fabrication authority *)
betaCantileverMode3Estimate = 7.854757438237612; (* estimate — pending measurement, not fabrication authority *)

rectangularArea[width_, thickness_] := width*thickness;
rectangularSecondMoment[width_, thickness_] := width*thickness^3/12;
effectiveTongueLength[length_, daxFraction_] :=
  length*Max[minimumEffectiveLengthFractionEstimate, 1 - daxFraction];

cantileverModeFrequencyHz[length_, width_, thickness_, density_, youngsModulus_,
   beta_, clampFactor_, daxFraction_, pickupFactor_] :=
  Module[{activeLength, area, secondMoment},
   activeLength = effectiveTongueLength[length, daxFraction];
   area = rectangularArea[width, thickness];
   secondMoment = rectangularSecondMoment[width, thickness];
   clampFactor*pickupFactor*(beta^2/(2*Pi*activeLength^2))*
    Sqrt[(youngsModulus*secondMoment)/(density*area)]
   ];

daxophoneModeTable[length_, width_, thickness_, density_, youngsModulus_,
   clampFactor_, daxFraction_, pickupFactor_] :=
  Dataset[
   (<|"mode" -> #[[1]], "betaEstimate" -> #[[2]],
       "frequencyHzEstimate" -> #[[3]]|> &) /@ {
     {"first bending", betaCantileverMode1Estimate,
      cantileverModeFrequencyHz[length, width, thickness, density,
       youngsModulus, betaCantileverMode1Estimate, clampFactor, daxFraction,
       pickupFactor]},
     {"second bending", betaCantileverMode2Estimate,
      cantileverModeFrequencyHz[length, width, thickness, density,
       youngsModulus, betaCantileverMode2Estimate, clampFactor, daxFraction,
       pickupFactor]},
     {"third bending", betaCantileverMode3Estimate,
      cantileverModeFrequencyHz[length, width, thickness, density,
       youngsModulus, betaCantileverMode3Estimate, clampFactor, daxFraction,
       pickupFactor]}
     }
   ];

daxophoneNominalEstimate =
  daxophoneModeTable[tongueLengthEstimate, tongueWidthEstimate,
   tongueThicknessEstimate, woodDensityEstimate, woodYoungsModulusEstimate,
   clampComplianceFactorEstimate, daxContactPositionFractionEstimate,
   pickupLoadingFactorEstimate];

daxophoneExplorer =
  Manipulate[
   Column[{
     Style["Daxophone bowed-tongue estimate model", 14, Bold],
     "All inputs are placeholders pending measurement; this model is reference_only.",
     daxophoneModeTable[lengthMeters, widthMeters, thicknessMeters,
      densityKgPerM3, youngsModulusPa, clampFactor, daxFraction,
      pickupFactor],
     Plot[
      cantileverModeFrequencyHz[lengthMeters, widthMeters, thicknessMeters,
       densityKgPerM3, youngsModulusPa, betaCantileverMode1Estimate,
       clampFactor, dax, pickupFactor],
      {dax, 0, 0.75},
      AxesLabel -> {"dax contact fraction estimate",
        "first bending Hz estimate"},
      PlotRange -> All]
     }],
   {{lengthMeters, tongueLengthEstimate, "tongue length estimate (m)"},
    0.18, 0.72},
   {{widthMeters, tongueWidthEstimate, "tongue width estimate (m)"},
    0.015, 0.08},
   {{thicknessMeters, tongueThicknessEstimate,
     "tongue thickness estimate (m)"}, 0.002, 0.018},
   {{densityKgPerM3, woodDensityEstimate,
     "wood density estimate (kg/m^3)"}, 350., 950.},
   {{youngsModulusPa, woodYoungsModulusEstimate,
     "Young modulus estimate (Pa)"}, 4.0*^9, 18.0*^9},
   {{clampFactor, clampComplianceFactorEstimate,
     "clamp compliance factor estimate"}, 0.65, 1.05},
   {{daxFraction, daxContactPositionFractionEstimate,
     "dax contact fraction estimate"}, 0, 0.75},
   {{pickupFactor, pickupLoadingFactorEstimate,
     "pickup loading factor estimate"}, 0.75, 1.05},
   SaveDefinitions -> True
   ];

daxophoneModel = <|
   "metadata" -> daxophoneMetadata,
   "nominalEstimate" -> daxophoneNominalEstimate,
   "explorer" -> daxophoneExplorer
   |>;
