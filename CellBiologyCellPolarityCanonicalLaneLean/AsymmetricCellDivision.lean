import CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure AsymmetricCellDivisionPackage where
  spindleOrientation : Prop
  corticalPolarity : Prop
  fateDeterminantSegregation : Prop
  daughterCellFates : Prop

structure AsymmetricCellDivisionEvidence (A : AsymmetricCellDivisionPackage) where
  spindleOrientationClosed : A.spindleOrientation
  corticalPolarityClosed : A.corticalPolarity
  fateDeterminantSegregationClosed : A.fateDeterminantSegregation
  daughterCellFatesClosed : A.daughterCellFates

def AsymmetricCellDivisionClosed (A : AsymmetricCellDivisionPackage) : Prop :=
  A.spindleOrientation ∧ A.corticalPolarity ∧
  A.fateDeterminantSegregation ∧ A.daughterCellFates

theorem asymmetric_cell_division_closed_from_evidence
    (A : AsymmetricCellDivisionPackage) (E : AsymmetricCellDivisionEvidence A) :
    AsymmetricCellDivisionClosed A := by
  exact And.intro E.spindleOrientationClosed
    (And.intro E.corticalPolarityClosed
      (And.intro E.fateDeterminantSegregationClosed
        E.daughterCellFatesClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse