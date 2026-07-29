import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CytoskeletalPolarizationPackage where
  cellCortex : Type u
  actinFilaments : Type v
  myosinMotors : Type w
  corticalFlow : Prop
  anisotropicTension : Prop
  protrusionRetraction : Prop

structure CytoskeletalPolarizationEvidence (C : CytoskeletalPolarizationPackage) where
  corticalFlowClosed : C.corticalFlow
  anisotropicTensionClosed : C.anisotropicTension
  protrusionRetractionClosed : C.protrusionRetraction

def CytoskeletalPolarizationClosed (C : CytoskeletalPolarizationPackage) : Prop :=
  C.corticalFlow ∧ C.anisotropicTension ∧ C.protrusionRetraction

theorem cytoskeletal_polarization_closed_from_evidence (C : CytoskeletalPolarizationPackage)
    (E : CytoskeletalPolarizationEvidence C) : CytoskeletalPolarizationClosed C := by
  exact And.intro E.corticalFlowClosed
    (And.intro E.anisotropicTensionClosed E.protrusionRetractionClosed)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse