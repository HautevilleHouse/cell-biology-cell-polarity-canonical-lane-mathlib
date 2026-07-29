import CellBiologyCellPolarityCanonicalLaneLean.CorticalFlow

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure FeedbackLoopPackage {O : CellPolarityAdmittedObject} {P : PolarizationPDEPackage O} (C : CorticalFlowPackage P) where
  signalProcessing : Prop
  amplificationGain : Prop
  mutualCoupling : Prop
  stabilityCondition : Prop

structure FeedbackLoopEvidence {O : CellPolarityAdmittedObject} {P : PolarizationPDEPackage O} {C : CorticalFlowPackage P} (F : FeedbackLoopPackage C) where
  signalProcessingClosed : F.signalProcessing
  amplificationGainClosed : F.amplificationGain
  mutualCouplingClosed : F.mutualCoupling
  stabilityConditionClosed : F.stabilityCondition

def FeedbackLoopClosed {O : CellPolarityAdmittedObject} {P : PolarizationPDEPackage O} {C : CorticalFlowPackage P} (F : FeedbackLoopPackage C) : Prop :=
  F.signalProcessing ∧ F.amplificationGain ∧ F.mutualCoupling ∧ F.stabilityCondition

theorem feedback_loop_closed_from_evidence {O : CellPolarityAdmittedObject} {P : PolarizationPDEPackage O} {C : CorticalFlowPackage P} (F : FeedbackLoopPackage C) (E : FeedbackLoopEvidence F) : FeedbackLoopClosed F := by
  exact And.intro E.signalProcessingClosed (And.intro E.amplificationGainClosed (And.intro E.mutualCouplingClosed E.stabilityConditionClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse