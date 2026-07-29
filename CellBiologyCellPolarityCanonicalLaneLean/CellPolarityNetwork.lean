import CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CellPolarityNetwork where
  cell : Type u
  polarityAxis : Prop
  networkComponents : Prop
  feedbackLoops : Prop
  robustness : Prop

structure CellPolarityNetworkEvidence (C : CellPolarityNetwork) where
  polarityAxisClosed : C.polarityAxis
  networkComponentsClosed : C.networkComponents
  feedbackLoopsClosed : C.feedbackLoops
  robustnessClosed : C.robustness

def CellPolarityNetworkClosed (C : CellPolarityNetwork) : Prop :=
  C.polarityAxis ∧ C.networkComponents ∧ C.feedbackLoops ∧ C.robustness

theorem cell_polarity_network_closed_from_evidence (C : CellPolarityNetwork) (E : CellPolarityNetworkEvidence C) : CellPolarityNetworkClosed C := by
  exact And.intro E.polarityAxisClosed (And.intro E.networkComponentsClosed (And.intro E.feedbackLoopsClosed E.robustnessClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse