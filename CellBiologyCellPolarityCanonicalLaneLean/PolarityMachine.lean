import CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarityMachinePackage where
  cellMembrane : Type u
  cytoskeleton : Type v
  polarityProteins : Type w
  membraneTrafficking : Prop
  corticalFlow : Prop
  positiveFeedbackLoop : Prop

structure PolarityMachineEvidence (M : PolarityMachinePackage) where
  membraneTraffickingClosed : M.membraneTrafficking
  corticalFlowClosed : M.corticalFlow
  positiveFeedbackLoopClosed : M.positiveFeedbackLoop

def PolarityMachineClosed (M : PolarityMachinePackage) : Prop :=
  M.membraneTrafficking ∧ M.corticalFlow ∧ M.positiveFeedbackLoop

theorem polarity_machine_closed_from_evidence
    (M : PolarityMachinePackage) (E : PolarityMachineEvidence M) :
    PolarityMachineClosed M := by
  exact And.intro E.membraneTraffickingClosed
    (And.intro E.corticalFlowClosed E.positiveFeedbackLoopClosed)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse