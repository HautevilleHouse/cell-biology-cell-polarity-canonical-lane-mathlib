import CellBiologyCellPolarityCanonicalLaneLean.PolarityRegulation

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure SymmetryBreaking {C : CellPolarityNetwork} {R : PolarityRegulation C} where
  initialAsymmetry : Prop
  positiveFeedback : Prop
  mutualAntagonism : Prop
  noiseAmplification : Prop

structure SymmetryBreakingEvidence {C : CellPolarityNetwork} {R : PolarityRegulation C} (S : SymmetryBreaking C R) where
  initialAsymmetryClosed : S.initialAsymmetry
  positiveFeedbackClosed : S.positiveFeedback
  mutualAntagonismClosed : S.mutualAntagonism
  noiseAmplificationClosed : S.noiseAmplification

def SymmetryBreakingClosed {C : CellPolarityNetwork} {R : PolarityRegulation C} (S : SymmetryBreaking C R) : Prop :=
  S.initialAsymmetry ∧ S.positiveFeedback ∧ S.mutualAntagonism ∧ S.noiseAmplification

theorem symmetry_breaking_closed_from_evidence {C : CellPolarityNetwork} {R : PolarityRegulation C} (S : SymmetryBreaking C R) (E : SymmetryBreakingEvidence S) : SymmetryBreakingClosed S := by
  exact And.intro E.initialAsymmetryClosed (And.intro E.positiveFeedbackClosed (And.intro E.mutualAntagonismClosed E.noiseAmplificationClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse