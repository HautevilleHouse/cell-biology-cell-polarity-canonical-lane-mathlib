import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.CellPolarityAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedCellPolarityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_polarity_endgame (A : AdmissibleClass) :
    ConstrainedCellPolarityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse