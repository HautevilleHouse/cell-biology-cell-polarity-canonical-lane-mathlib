import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  cellPolarityConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "cell-biology-cell-polarity-canonical-lane"

def sourceDescription : String :=
  "Cell Polarity reversal under constrained experimental conditions"

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse