import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.PolarityComplex

/-!
# Polarity Feedback Package
-/

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarityFeedbackPackage {P : PARComplexPackage} {C : CrumbsComplexPackage} {S : ScribbleComplexPackage} where
  parCrumbsPositiveFeedback : Prop
  parScribbleNegativeFeedback : Prop
  crumbsScribbleCrossTalk : Prop
  selfOrganizingPolarity : Prop

structure PolarityFeedbackEvidence {P : PARComplexPackage} {C : CrumbsComplexPackage} {S : ScribbleComplexPackage}
    (F : PolarityFeedbackPackage P C S) where
  parCrumbsPositiveFeedbackClosed : F.parCrumbsPositiveFeedback
  parScribbleNegativeFeedbackClosed : F.parScribbleNegativeFeedback
  crumbsScribbleCrossTalkClosed : F.crumbsScribbleCrossTalk
  selfOrganizingPolarityClosed : F.selfOrganizingPolarity

def PolarityFeedbackClosed {P : PARComplexPackage} {C : CrumbsComplexPackage} {S : ScribbleComplexPackage}
    (F : PolarityFeedbackPackage P C S) : Prop :=
  F.parCrumbsPositiveFeedback ∧ F.parScribbleNegativeFeedback ∧ F.crumbsScribbleCrossTalk ∧ F.selfOrganizingPolarity

theorem polarity_feedback_closed_from_evidence {P : PARComplexPackage} {C : CrumbsComplexPackage} {S : ScribbleComplexPackage}
    (F : PolarityFeedbackPackage P C S) (E : PolarityFeedbackEvidence F) : PolarityFeedbackClosed F :=
  And.intro E.parCrumbsPositiveFeedbackClosed
    (And.intro E.parScribbleNegativeFeedbackClosed (And.intro E.crumbsScribbleCrossTalkClosed E.selfOrganizingPolarityClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse