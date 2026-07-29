import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarizationMechanismPackage (A : AdmissibleClass) where
  symmetryBreakingSignal : Prop
  selfOrganizingFeedback : Prop
  polarityAxisEstablishment : Prop
  maintenanceUnderPerturbations : Prop

structure PolarizationMechanismEvidence {A : AdmissibleClass} (M : PolarizationMechanismPackage A) where
  symmetryBreakingSignalClosed : M.symmetryBreakingSignal
  selfOrganizingFeedbackClosed : M.selfOrganizingFeedback
  polarityAxisEstablishmentClosed : M.polarityAxisEstablishment
  maintenanceUnderPerturbationsClosed : M.maintenanceUnderPerturbations

def PolarizationMechanismClosed {A : AdmissibleClass} (M : PolarizationMechanismPackage A) : Prop :=
  M.symmetryBreakingSignal ∧ M.selfOrganizingFeedback ∧
  M.polarityAxisEstablishment ∧ M.maintenanceUnderPerturbations

theorem polarization_mechanism_closed_from_evidence
    {A : AdmissibleClass} (M : PolarizationMechanismPackage A) (E : PolarizationMechanismEvidence M) :
    PolarizationMechanismClosed M := by
  exact And.intro E.symmetryBreakingSignalClosed
    (And.intro E.selfOrganizingFeedbackClosed
      (And.intro E.polarityAxisEstablishmentClosed E.maintenanceUnderPerturbationsClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse