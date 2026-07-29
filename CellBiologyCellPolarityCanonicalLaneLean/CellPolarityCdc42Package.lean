import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure Cdc42PolarityPackage where
  cellMembrane : Type u
  cdc42GtpBound : Type v
  spatialGradient : Prop
  positiveFeedback : Prop
  recruitmentRate : Prop
  mutualAntagonism : Prop

structure Cdc42PolarityEvidence (P : Cdc42PolarityPackage) where
  spatialGradientClosed : P.spatialGradient
  positiveFeedbackClosed : P.positiveFeedback
  recruitmentRateClosed : P.recruitmentRate
  mutualAntagonismClosed : P.mutualAntagonism

def Cdc42PolarityClosed (P : Cdc42PolarityPackage) : Prop :=
  P.spatialGradient ∧ P.positiveFeedback ∧ P.recruitmentRate ∧ P.mutualAntagonism

theorem cdc42_polarity_closed_from_evidence (P : Cdc42PolarityPackage)
    (E : Cdc42PolarityEvidence P) : Cdc42PolarityClosed P := by
  exact And.intro E.spatialGradientClosed
    (And.intro E.positiveFeedbackClosed
      (And.intro E.recruitmentRateClosed E.mutualAntagonismClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse