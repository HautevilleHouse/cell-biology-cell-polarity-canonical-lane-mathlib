import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure ParComplexPatterningPackage where
  cellType : Type u
  tissueGeometry : Type v
  anteriorSignal : Type w
  posteriorSignal : Type x
  parComplexLocalization : Prop
  polarityAxisEstablished : Prop
  feedbackLoopStable : Prop
  patternRobustToNoise : Prop

structure ParComplexPatterningEvidence (P : ParComplexPatterningPackage) where
  parComplexLocalizationClosed : P.parComplexLocalization
  polarityAxisEstablishedClosed : P.polarityAxisEstablished
  feedbackLoopStableClosed : P.feedbackLoopStable
  patternRobustToNoiseClosed : P.patternRobustToNoise

def ParComplexPatterningClosed (P : ParComplexPatterningPackage) : Prop :=
  P.parComplexLocalization ∧ P.polarityAxisEstablished ∧ P.feedbackLoopStable ∧ P.patternRobustToNoise

theorem par_complex_patterning_closed_from_evidence (P : ParComplexPatterningPackage) (E : ParComplexPatterningEvidence P) :
    ParComplexPatterningClosed P := by
  exact And.intro E.parComplexLocalizationClosed
    (And.intro E.polarityAxisEstablishedClosed
      (And.intro E.feedbackLoopStableClosed E.patternRobustToNoiseClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse