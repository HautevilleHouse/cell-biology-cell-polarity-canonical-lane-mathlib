import HautevilleHouse.CellBioCellPolarityCanonicalLaneLean.Cdc42Feedback

namespace HautevilleHouse
namespace CellBioCellPolarityCanonicalLaneLean

structure ActinCytoskeletonPackage {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} where
  actinPolymerization : Prop
  myosinContraction : Prop
  corticalFlow : Prop
  asymmetricForceGeneration : Prop

structure ActinCytoskeletonEvidence {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} (A : ActinCytoskeletonPackage C) where
  actinPolymerizationClosed : A.actinPolymerization
  myosinContractionClosed : A.myosinContraction
  corticalFlowClosed : A.corticalFlow
  asymmetricForceGenerationClosed : A.asymmetricForceGeneration

def ActinCytoskeletonClosed {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} (A : ActinCytoskeletonPackage C) : Prop :=
  A.actinPolymerization ∧ A.myosinContraction ∧ A.corticalFlow ∧ A.asymmetricForceGeneration

theorem actin_cytoskeleton_closed_from_evidence {P : ParComplexPackage}
    {C : Cdc42FeedbackPackage P} (A : ActinCytoskeletonPackage C)
    (E : ActinCytoskeletonEvidence A) : ActinCytoskeletonClosed A := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractionClosed
      (And.intro E.corticalFlowClosed E.asymmetricForceGenerationClosed))

end CellBioCellPolarityCanonicalLaneLean
end HautevilleHouse