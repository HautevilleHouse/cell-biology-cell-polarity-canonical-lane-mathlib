import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure SymmetryBreakingDynamicsPackage (A : AdmissibleClass) where
  initialHomogeneousState : Prop
  stochasticFluctuation : Prop
  amplificationMechanism : Prop
  symmetryBreakingThreshold : Prop

structure SymmetryBreakingDynamicsEvidence {A : AdmissibleClass} (D : SymmetryBreakingDynamicsPackage A) where
  initialHomogeneousStateClosed : D.initialHomogeneousState
  stochasticFluctuationClosed : D.stochasticFluctuation
  amplificationMechanismClosed : D.amplificationMechanism
  symmetryBreakingThresholdClosed : D.symmetryBreakingThreshold

def SymmetryBreakingDynamicsClosed {A : AdmissibleClass} (D : SymmetryBreakingDynamicsPackage A) : Prop :=
  D.initialHomogeneousState ∧ D.stochasticFluctuation ∧
  D.amplificationMechanism ∧ D.symmetryBreakingThreshold

theorem symmetry_breaking_dynamics_closed_from_evidence
    {A : AdmissibleClass} (D : SymmetryBreakingDynamicsPackage A) (E : SymmetryBreakingDynamicsEvidence D) :
    SymmetryBreakingDynamicsClosed D := by
  exact And.intro E.initialHomogeneousStateClosed
    (And.intro E.stochasticFluctuationClosed
      (And.intro E.amplificationMechanismClosed E.symmetryBreakingThresholdClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse