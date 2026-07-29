import CellBiologyCellPolarityCanonicalLaneLean.PolaritySignaling

/-!
# Cell Polarity Models Package
-/

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarityModelPackage {M : CellMembranePackage} {S : PolaritySignalingPackage M} where
  symmetryBreaking : Prop
  proteinLocalization : Prop
  feedbackLoop : Prop
  adaptationResponse : Prop

structure PolarityModelEvidence {M : CellMembranePackage} {S : PolaritySignalingPackage M}
    (P : PolarityModelPackage S) where
  symmetryBreakingClosed : P.symmetryBreaking
  proteinLocalizationClosed : P.proteinLocalization
  feedbackLoopClosed : P.feedbackLoop
  adaptationResponseClosed : P.adaptationResponse

def PolarityModelClosed {M : CellMembranePackage} {S : PolaritySignalingPackage M}
    (P : PolarityModelPackage S) : Prop :=
  P.symmetryBreaking ∧ P.proteinLocalization ∧ P.feedbackLoop ∧ P.adaptationResponse

theorem polarity_model_closed_from_evidence
    {M : CellMembranePackage} {S : PolaritySignalingPackage M}
    (P : PolarityModelPackage S) (E : PolarityModelEvidence P) :
    PolarityModelClosed P := by
  exact And.intro E.symmetryBreakingClosed
    (And.intro E.proteinLocalizationClosed
      (And.intro E.feedbackLoopClosed E.adaptationResponseClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse
