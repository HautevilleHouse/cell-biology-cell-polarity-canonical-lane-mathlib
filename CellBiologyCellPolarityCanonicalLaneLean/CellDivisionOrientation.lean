import CellBiologyCellPolarityCanonicalLaneLean.SpatiotemporalDynamics

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CellDivisionOrientation {C : CellPolarityNetwork} {R : PolarityRegulation C} {S : SymmetryBreaking C R} {D : SpatiotemporalDynamics C R S} where
  spindleAlignment : Prop
  asymmetricCellDivision : Prop
  fateDetermination : Prop
  polarityInheritance : Prop

structure CellDivisionOrientationEvidence {C : CellPolarityNetwork} {R : PolarityRegulation C} {S : SymmetryBreaking C R} {D : SpatiotemporalDynamics C R S} (O : CellDivisionOrientation C R S D) where
  spindleAlignmentClosed : O.spindleAlignment
  asymmetricCellDivisionClosed : O.asymmetricCellDivision
  fateDeterminationClosed : O.fateDetermination
  polarityInheritanceClosed : O.polarityInheritance

def CellDivisionOrientationClosed {C : CellPolarityNetwork} {R : PolarityRegulation C} {S : SymmetryBreaking C R} {D : SpatiotemporalDynamics C R S} (O : CellDivisionOrientation C R S D) : Prop :=
  O.spindleAlignment ∧ O.asymmetricCellDivision ∧ O.fateDetermination ∧ O.polarityInheritance

theorem cell_division_orientation_closed_from_evidence {C : CellPolarityNetwork} {R : PolarityRegulation C} {S : SymmetryBreaking C R} {D : SpatiotemporalDynamics C R S} (O : CellDivisionOrientation C R S D) (E : CellDivisionOrientationEvidence O) : CellDivisionOrientationClosed O := by
  exact And.intro E.spindleAlignmentClosed (And.intro E.asymmetricCellDivisionClosed (And.intro E.fateDeterminationClosed E.polarityInheritanceClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse