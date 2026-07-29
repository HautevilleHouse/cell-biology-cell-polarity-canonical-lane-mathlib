import HautevilleHouse.CellBioCellPolarityCanonicalLaneLean.CellDivisionalPolarity

namespace HautevilleHouse
namespace CellBioCellPolarityCanonicalLaneLean

structure TissuePolarityPackage {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} {A : ActinCytoskeletonPackage C}
    (D : CellDivisionalPolarityPackage A) where
  planarCellPolarity : Prop
  apicalBasalPolarity : Prop
  intercellularCommunication : Prop
  tissueMorphogenesis : Prop

structure TissuePolarityEvidence {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} {A : ActinCytoskeletonPackage C}
    {D : CellDivisionalPolarityPackage A}
    (T : TissuePolarityPackage D) where
  planarCellPolarityClosed : T.planarCellPolarity
  apicalBasalPolarityClosed : T.apicalBasalPolarity
  intercellularCommunicationClosed : T.intercellularCommunication
  tissueMorphogenesisClosed : T.tissueMorphogenesis

def TissuePolarityClosed {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} {A : ActinCytoskeletonPackage C}
    {D : CellDivisionalPolarityPackage A}
    (T : TissuePolarityPackage D) : Prop :=
  T.planarCellPolarity ∧ T.apicalBasalPolarity ∧ T.intercellularCommunication ∧ T.tissueMorphogenesis

theorem tissue_polarity_closed_from_evidence {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} {A : ActinCytoskeletonPackage C}
    {D : CellDivisionalPolarityPackage A} (T : TissuePolarityPackage D)
    (E : TissuePolarityEvidence T) : TissuePolarityClosed T := by
  exact And.intro E.planarCellPolarityClosed
    (And.intro E.apicalBasalPolarityClosed
      (And.intro E.intercellularCommunicationClosed E.tissueMorphogenesisClosed))

end CellBioCellPolarityCanonicalLaneLean
end HautevilleHouse