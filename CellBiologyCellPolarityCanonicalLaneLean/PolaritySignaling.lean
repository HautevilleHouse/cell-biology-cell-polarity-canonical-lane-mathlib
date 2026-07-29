import CellBiologyCellPolarityCanonicalLaneLean.CellMembrane

/-!
# Polarity Signaling Package
-/

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolaritySignalingPackage (M : CellMembranePackage) where
  rhoGtpaseCycle : Prop
  parComplexAssembly : Prop
  phosphorylationCascade : Prop
  receptorAsymmetry : Prop

structure PolaritySignalingEvidence {M : CellMembranePackage}
    (S : PolaritySignalingPackage M) where
  rhoGtpaseCycleClosed : S.rhoGtpaseCycle
  parComplexAssemblyClosed : S.parComplexAssembly
  phosphorylationCascadeClosed : S.phosphorylationCascade
  receptorAsymmetryClosed : S.receptorAsymmetry

def PolaritySignalingClosed {M : CellMembranePackage}
    (S : PolaritySignalingPackage M) : Prop :=
  S.rhoGtpaseCycle ∧ S.parComplexAssembly ∧ S.phosphorylationCascade ∧ S.receptorAsymmetry

theorem polarity_signaling_closed_from_evidence
    {M : CellMembranePackage} (S : PolaritySignalingPackage M)
    (E : PolaritySignalingEvidence S) : PolaritySignalingClosed S := by
  exact And.intro E.rhoGtpaseCycleClosed
    (And.intro E.parComplexAssemblyClosed
      (And.intro E.phosphorylationCascadeClosed E.receptorAsymmetryClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse
