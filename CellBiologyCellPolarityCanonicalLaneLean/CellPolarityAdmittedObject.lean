import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CellPolaritySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellPolarityAdmittedObject where
  space : CellPolaritySpace
  polarizationField : carrier → Vector ℝ 3
  isStationary : Prop
  stationarySolution : isStationary
  conclusion : stationarySolution

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse