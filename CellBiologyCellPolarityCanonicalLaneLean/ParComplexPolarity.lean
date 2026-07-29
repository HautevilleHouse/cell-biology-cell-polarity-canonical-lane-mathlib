import HautevilleHouse.CellBioCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBioCellPolarityCanonicalLaneLean

structure ParComplexPackage where
  cellType : Type u
  polarityProteins : Type v
  anteriorMarkers : List polarityProteins
  posteriorMarkers : List polarityProteins
  parComplexAssembly : Prop
  symmetryBreaking : Prop

structure ParComplexEvidence (P : ParComplexPackage) where
  parComplexAssemblyClosed : P.parComplexAssembly
  symmetryBreakingClosed : P.symmetryBreaking

def ParComplexClosed (P : ParComplexPackage) : Prop :=
  P.parComplexAssembly ∧ P.symmetryBreaking

theorem par_complex_closed_from_evidence (P : ParComplexPackage)
    (E : ParComplexEvidence P) : ParComplexClosed P := by
  exact And.intro E.parComplexAssemblyClosed E.symmetryBreakingClosed

end CellBioCellPolarityCanonicalLaneLean
end HautevilleHouse