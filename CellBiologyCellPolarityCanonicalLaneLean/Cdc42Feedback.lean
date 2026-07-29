import HautevilleHouse.CellBioCellPolarityCanonicalLaneLean.ParComplexPolarity

namespace HautevilleHouse
namespace CellBioCellPolarityCanonicalLaneLean

structure Cdc42FeedbackPackage {P : ParComplexPackage} where
  cdc42GTPase : Type u
  activationRate : Prop
  feedbackLoop : Prop
  selfReinforcing : Prop
  mutualExclusion : Prop

structure Cdc42FeedbackEvidence {P : ParComplexPackage}
    (C : Cdc42FeedbackPackage P) where
  activationRateClosed : C.activationRate
  feedbackLoopClosed : C.feedbackLoop
  selfReinforcingClosed : C.selfReinforcing
  mutualExclusionClosed : C.mutualExclusion

def Cdc42FeedbackClosed {P : ParComplexPackage}
    (C : Cdc42FeedbackPackage P) : Prop :=
  C.activationRate ∧ C.feedbackLoop ∧ C.selfReinforcing ∧ C.mutualExclusion

theorem cdc42_feedback_closed_from_evidence {P : ParComplexPackage}
    (C : Cdc42FeedbackPackage P) (E : Cdc42FeedbackEvidence C) :
    Cdc42FeedbackClosed C := by
  exact And.intro E.activationRateClosed
    (And.intro E.feedbackLoopClosed
      (And.intro E.selfReinforcingClosed E.mutualExclusionClosed))

end CellBioCellPolarityCanonicalLaneLean
end HautevilleHouse