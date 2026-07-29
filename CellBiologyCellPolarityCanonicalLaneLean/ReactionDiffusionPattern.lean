import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure ReactionDiffusionPatternPackage where
  membraneDomain : Type u
  activatorSpecies : Type v
  inhibitorSpecies : Type w
  turingInstability : Prop
  patternWaveLength : Prop
  amplitudeStability : Prop

structure ReactionDiffusionPatternEvidence (R : ReactionDiffusionPatternPackage) where
  turingInstabilityClosed : R.turingInstability
  patternWaveLengthClosed : R.patternWaveLength
  amplitudeStabilityClosed : R.amplitudeStability

def ReactionDiffusionPatternClosed (R : ReactionDiffusionPatternPackage) : Prop :=
  R.turingInstability ∧ R.patternWaveLength ∧ R.amplitudeStability

theorem reaction_diffusion_pattern_closed_from_evidence
    (R : ReactionDiffusionPatternPackage) (E : ReactionDiffusionPatternEvidence R) :
    ReactionDiffusionPatternClosed R := by
  exact And.intro E.turingInstabilityClosed
    (And.intro E.patternWaveLengthClosed E.amplitudeStabilityClosed)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse