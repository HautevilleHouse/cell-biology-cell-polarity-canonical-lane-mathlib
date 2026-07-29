import CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarityEstablishmentPackage where
  initialSymmetric : Prop
  symmetryBreakingSignal : Prop
  polarityAxisEstablishment : Prop
  feedbackAmplification : Prop

structure PolarityEstablishmentEvidence (P : PolarityEstablishmentPackage) where
  initialSymmetricClosed : P.initialSymmetric
  symmetryBreakingSignalClosed : P.symmetryBreakingSignal
  polarityAxisEstablishmentClosed : P.polarityAxisEstablishment
  feedbackAmplificationClosed : P.feedbackAmplification

def PolarityEstablishmentClosed (P : PolarityEstablishmentPackage) : Prop :=
  P.initialSymmetric ∧ P.symmetryBreakingSignal ∧
  P.polarityAxisEstablishment ∧ P.feedbackAmplification

theorem polarity_establishment_closed_from_evidence
    (P : PolarityEstablishmentPackage) (E : PolarityEstablishmentEvidence P) :
    PolarityEstablishmentClosed P := by
  exact And.intro E.initialSymmetricClosed
    (And.intro E.symmetryBreakingSignalClosed
      (And.intro E.polarityAxisEstablishmentClosed
        E.feedbackAmplificationClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse