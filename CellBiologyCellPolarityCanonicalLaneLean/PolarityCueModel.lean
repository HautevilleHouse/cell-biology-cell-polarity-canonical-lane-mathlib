import CellBiologyCellPolarityCanonicalLaneLean.PolarityMachine

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarityCueModelPackage {M : PolarityMachinePackage} where
  cueReceptors : Type u
  cueLigands : Type v
  receptorActivationKinetics : Prop
  ligandBindingAffinity : Prop
  spatialGradientProfile : Prop
  signalAmplification : Prop

structure PolarityCueModelEvidence {M : PolarityMachinePackage}
    (C : PolarityCueModelPackage M) where
  receptorActivationKineticsClosed : C.receptorActivationKinetics
  ligandBindingAffinityClosed : C.ligandBindingAffinity
  spatialGradientProfileClosed : C.spatialGradientProfile
  signalAmplificationClosed : C.signalAmplification

def PolarityCueModelClosed {M : PolarityMachinePackage}
    (C : PolarityCueModelPackage M) : Prop :=
  C.receptorActivationKinetics ∧ C.ligandBindingAffinity ∧
  C.spatialGradientProfile ∧ C.signalAmplification

theorem polarity_cue_model_closed_from_evidence
    {M : PolarityMachinePackage} (C : PolarityCueModelPackage M)
    (E : PolarityCueModelEvidence C) : PolarityCueModelClosed C := by
  exact And.intro E.receptorActivationKineticsClosed
    (And.intro E.ligandBindingAffinityClosed
      (And.intro E.spatialGradientProfileClosed E.signalAmplificationClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse