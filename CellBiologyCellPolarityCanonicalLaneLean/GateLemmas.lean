import CellBiologyCellPolarityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse