import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.RhoGTPaseSignaling

/-!
# Membrane Trafficking Feedback Module
-/

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure TraffickingFeedbackPackage {P : PARComplexPackage} {par : PARComplexClosed P}
    {R : RhoGTPaseSignalingPackage par} (rhoClosed : RhoGTPaseSignalingClosed R) where
  exocytosisDirected : Prop
  endocytosisAsymmetric : Prop
  recyclingPathway : Prop
  membraneDomainFormation : Prop
  feedbackAmplification : Prop

structure TraffickingFeedbackEvidence {P : PARComplexPackage} {par : PARComplexClosed P}
    {R : RhoGTPaseSignalingPackage par} {rhoClosed : RhoGTPaseSignalingClosed R}
    (T : TraffickingFeedbackPackage rhoClosed) where
  exocytosisDirectedClosed : T.exocytosisDirected
  endocytosisAsymmetricClosed : T.endocytosisAsymmetric
  recyclingPathwayClosed : T.recyclingPathway
  membraneDomainFormationClosed : T.membraneDomainFormation
  feedbackAmplificationClosed : T.feedbackAmplification

def TraffickingFeedbackClosed {P : PARComplexPackage} {par : PARComplexClosed P}
    {R : RhoGTPaseSignalingPackage par} {rhoClosed : RhoGTPaseSignalingClosed R}
    (T : TraffickingFeedbackPackage rhoClosed) : Prop :=
  T.exocytosisDirected ∧ T.endocytosisAsymmetric ∧ T.recyclingPathway ∧ T.membraneDomainFormation ∧ T.feedbackAmplification

theorem trafficking_feedback_closed_from_evidence {P : PARComplexPackage} {par : PARComplexClosed P}
    {R : RhoGTPaseSignalingPackage par} {rhoClosed : RhoGTPaseSignalingClosed R}
    (T : TraffickingFeedbackPackage rhoClosed) (E : TraffickingFeedbackEvidence T) :
    TraffickingFeedbackClosed T := by
  exact And.intro E.exocytosisDirectedClosed (And.intro E.endocytosisAsymmetricClosed (And.intro E.recyclingPathwayClosed (And.intro E.membraneDomainFormationClosed E.feedbackAmplificationClosed)))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse