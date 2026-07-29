import CellBiologyCellPolarityCanonicalLaneLean.SymmetryBreaking

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure SpatiotemporalDynamics {C : CellPolarityNetwork} {R : PolarityRegulation C} {S : SymmetryBreaking C R} where
  patternFormation : Prop
  wavePropagation : Prop
  gradientMaintenance : Prop
  adaptation : Prop

structure SpatiotemporalDynamicsEvidence {C : CellPolarityNetwork} {R : PolarityRegulation C} {S : SymmetryBreaking C R} (D : SpatiotemporalDynamics C R S) where
  patternFormationClosed : D.patternFormation
  wavePropagationClosed : D.wavePropagation
  gradientMaintenanceClosed : D.gradientMaintenance
  adaptationClosed : D.adaptation

def SpatiotemporalDynamicsClosed {C : CellPolarityNetwork} {R : PolarityRegulation C} {S : SymmetryBreaking C R} (D : SpatiotemporalDynamics C R S) : Prop :=
  D.patternFormation ∧ D.wavePropagation ∧ D.gradientMaintenance ∧ D.adaptation

theorem spatiotemporal_dynamics_closed_from_evidence {C : CellPolarityNetwork} {R : PolarityRegulation C} {S : SymmetryBreaking C R} (D : SpatiotemporalDynamics C R S) (E : SpatiotemporalDynamicsEvidence D) : SpatiotemporalDynamicsClosed D := by
  exact And.intro E.patternFormationClosed (And.intro E.wavePropagationClosed (And.intro E.gradientMaintenanceClosed E.adaptationClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse