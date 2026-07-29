import CellBiologyCellPolarityCanonicalLaneLean.CellPolarityAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarizationPDEPackage (O : CellPolarityAdmittedObject) where
  timeParameter : Type u
  solution : timeParameter → O.space.carrier → Vector ℝ 3
  initialCondition : Prop
  reactionDiffusionEquation : Prop
  boundaryConditions : Prop

structure PolarizationPDEEvidence {O : CellPolarityAdmittedObject} (P : PolarizationPDEPackage O) where
  initialConditionClosed : P.initialCondition
  reactionDiffusionEquationClosed : P.reactionDiffusionEquation
  boundaryConditionsClosed : P.boundaryConditions

def PolarizationPDEClosed {O : CellPolarityAdmittedObject} (P : PolarizationPDEPackage O) : Prop :=
  P.initialCondition ∧ P.reactionDiffusionEquation ∧ P.boundaryConditions

theorem polarization_pde_closed_from_evidence {O : CellPolarityAdmittedObject} (P : PolarizationPDEPackage O) (E : PolarizationPDEEvidence P) : PolarizationPDEClosed P := by
  exact And.intro E.initialConditionClosed (And.intro E.reactionDiffusionEquationClosed E.boundaryConditionsClosed)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse