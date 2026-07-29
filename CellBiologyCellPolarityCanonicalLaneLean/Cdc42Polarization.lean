import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellPolarityCanonicalLaneLean.CellPolarityFoundation

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure Cdc42PolarizationPackage (F : CellPolarityFoundation) where
  cdc42Activation : Prop
  feedbackLoopWithPar : Prop
  polarizationMaintenance : Prop
  symmetryBreaking : Prop

structure Cdc42PolarizationEvidence {F : CellPolarityFoundation}
    (C : Cdc42PolarizationPackage F) where
  cdc42ActivationClosed : C.cdc42Activation
  feedbackLoopWithParClosed : C.feedbackLoopWithPar
  polarizationMaintenanceClosed : C.polarizationMaintenance
  symmetryBreakingClosed : C.symmetryBreaking

def Cdc42PolarizationClosed {F : CellPolarityFoundation}
    (C : Cdc42PolarizationPackage F) : Prop :=
  C.cdc42Activation ∧ C.feedbackLoopWithPar ∧
  C.polarizationMaintenance ∧ C.symmetryBreaking

theorem cdc42_polarization_closed_from_evidence
    {F : CellPolarityFoundation} (C : Cdc42PolarizationPackage F)
    (E : Cdc42PolarizationEvidence C) : Cdc42PolarizationClosed C := by
  exact And.intro E.cdc42ActivationClosed
    (And.intro E.feedbackLoopWithParClosed
      (And.intro E.polarizationMaintenanceClosed E.symmetryBreakingClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse