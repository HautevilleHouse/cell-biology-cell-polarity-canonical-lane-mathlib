import CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarityMaintenancePackage where
  membraneDomainPersistence : Prop
  cytoskeletalFeedback : Prop
  polarityMarkersLocalization : Prop
  externalStimuliRobustness : Prop

structure PolarityMaintenanceEvidence (P : PolarityMaintenancePackage) where
  membraneDomainPersistenceClosed : P.membraneDomainPersistence
  cytoskeletalFeedbackClosed : P.cytoskeletalFeedback
  polarityMarkersLocalizationClosed : P.polarityMarkersLocalization
  externalStimuliRobustnessClosed : P.externalStimuliRobustness

def PolarityMaintenanceClosed (P : PolarityMaintenancePackage) : Prop :=
  P.membraneDomainPersistence ∧ P.cytoskeletalFeedback ∧
  P.polarityMarkersLocalization ∧ P.externalStimuliRobustness

theorem polarity_maintenance_closed_from_evidence
    (P : PolarityMaintenancePackage) (E : PolarityMaintenanceEvidence P) :
    PolarityMaintenanceClosed P := by
  exact And.intro E.membraneDomainPersistenceClosed
    (And.intro E.cytoskeletalFeedbackClosed
      (And.intro E.polarityMarkersLocalizationClosed
        E.externalStimuliRobustnessClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse