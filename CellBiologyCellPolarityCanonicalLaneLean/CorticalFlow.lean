import CellBiologyCellPolarityCanonicalLaneLean.PolarizationPDE

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CorticalFlowPackage {O : CellPolarityAdmittedObject} (P : PolarizationPDEPackage O) where
  flowField : O.space.carrier → Vector ℝ 3
  advectionTerm : Prop
  activeTransport : Prop
  flowDivergenceFree : Prop

structure CorticalFlowEvidence {O : CellPolarityAdmittedObject} {P : PolarizationPDEPackage O} (C : CorticalFlowPackage P) where
  advectionTermClosed : C.advectionTerm
  activeTransportClosed : C.activeTransport
  flowDivergenceFreeClosed : C.flowDivergenceFree

def CorticalFlowClosed {O : CellPolarityAdmittedObject} {P : PolarizationPDEPackage O} (C : CorticalFlowPackage P) : Prop :=
  C.advectionTerm ∧ C.activeTransport ∧ C.flowDivergenceFree

theorem cortical_flow_closed_from_evidence {O : CellPolarityAdmittedObject} {P : PolarizationPDEPackage O} (C : CorticalFlowPackage P) (E : CorticalFlowEvidence C) : CorticalFlowClosed C := by
  exact And.intro E.advectionTermClosed (And.intro E.activeTransportClosed E.flowDivergenceFreeClosed)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse