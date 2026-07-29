import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure FeedbackAmplificationPackage where
  signalingNodes : Type u
  positiveFeedbackEdge : Prop
  ultrasensitivity : Prop
  bistability : Prop
  symmetryBreaking : Prop

structure FeedbackAmplificationEvidence (F : FeedbackAmplificationPackage) where
  positiveFeedbackEdgeClosed : F.positiveFeedbackEdge
  ultrasensitivityClosed : F.ultrasensitivity
  bistabilityClosed : F.bistability
  symmetryBreakingClosed : F.symmetryBreaking

def FeedbackAmplificationClosed (F : FeedbackAmplificationPackage) : Prop :=
  F.positiveFeedbackEdge ∧ F.ultrasensitivity ∧ F.bistability ∧ F.symmetryBreaking

theorem feedback_amplification_closed_from_evidence (F : FeedbackAmplificationPackage)
    (E : FeedbackAmplificationEvidence F) : FeedbackAmplificationClosed F := by
  exact And.intro E.positiveFeedbackEdgeClosed
    (And.intro E.ultrasensitivityClosed
      (And.intro E.bistabilityClosed E.symmetryBreakingClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse