import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CytoskeletonRearrangementPackage {P : ParComplexPatterningPackage} (polarity : ParComplexPatterningPackage) where
  actinPolymerization : Prop
  microtubuleOrientation : Prop
  contractileCortexAsymmetry : Prop
  cellShapeChange : Prop
  adhesionRedistribution : Prop

structure CytoskeletonRearrangementEvidence {P : ParComplexPatterningPackage} {polarity : ParComplexPatterningPackage} (C : CytoskeletonRearrangementPackage polarity) where
  actinPolymerizationClosed : C.actinPolymerization
  microtubuleOrientationClosed : C.microtubuleOrientation
  contractileCortexAsymmetryClosed : C.contractileCortexAsymmetry
  cellShapeChangeClosed : C.cellShapeChange
  adhesionRedistributionClosed : C.adhesionRedistribution

def CytoskeletonRearrangementClosed {P : ParComplexPatterningPackage} {polarity : ParComplexPatterningPackage} (C : CytoskeletonRearrangementPackage polarity) : Prop :=
  C.actinPolymerization ∧ C.microtubuleOrientation ∧ C.contractileCortexAsymmetry ∧ C.cellShapeChange ∧ C.adhesionRedistribution

theorem cytoskeleton_rearrangement_closed_from_evidence {P : ParComplexPatterningPackage} {polarity : ParComplexPatterningPackage} (C : CytoskeletonRearrangementPackage polarity) (E : CytoskeletonRearrangementEvidence C) :
    CytoskeletonRearrangementClosed C := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.microtubuleOrientationClosed
      (And.intro E.contractileCortexAsymmetryClosed
        (And.intro E.cellShapeChangeClosed E.adhesionRedistributionClosed)))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse