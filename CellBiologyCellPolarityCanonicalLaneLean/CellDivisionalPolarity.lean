import HautevilleHouse.CellBioCellPolarityCanonicalLaneLean.ActinCytoskeleton

namespace HautevilleHouse
namespace CellBioCellPolarityCanonicalLaneLean

structure CellDivisionalPolarityPackage {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} {A : ActinCytoskeletonPackage C} where
  asymmetricCellDivision : Prop
  spindleOrientation : Prop
  differentialProteinInheritance : Prop
  cellFateDetermination : Prop

structure CellDivisionalPolarityEvidence {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} {A : ActinCytoskeletonPackage C}
    (D : CellDivisionalPolarityPackage A) where
  asymmetricCellDivisionClosed : D.asymmetricCellDivision
  spindleOrientationClosed : D.spindleOrientation
  differentialProteinInheritanceClosed : D.differentialProteinInheritance
  cellFateDeterminationClosed : D.cellFateDetermination

def CellDivisionalPolarityClosed {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} {A : ActinCytoskeletonPackage C}
    (D : CellDivisionalPolarityPackage A) : Prop :=
  D.asymmetricCellDivision ∧ D.spindleOrientation ∧ D.differentialProteinInheritance ∧ D.cellFateDetermination

theorem cell_divisional_polarity_closed_from_evidence {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} {A : ActinCytoskeletonPackage C}
    (D : CellDivisionalPolarityPackage A) (E : CellDivisionalPolarityEvidence D) :
    CellDivisionalPolarityClosed D := by
  exact And.intro E.asymmetricCellDivisionClosed
    (And.intro E.spindleOrientationClosed
      (And.intro E.differentialProteinInheritanceClosed E.cellFateDeterminationClosed))

end CellBioCellPolarityCanonicalLaneLean
end HautevilleHouse