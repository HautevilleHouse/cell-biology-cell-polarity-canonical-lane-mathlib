import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.CellPolarityAdmissibleClass

/-!
# PAR Complex Polarity Module
-/

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PARComplexPackage where
  par3 : Prop
  par6 : Prop
  apkc : Prop
  par3Activation : Prop
  par6Recruitment : Prop
  apkcInhibition : Prop
  polarityEstablishment : Prop

structure PARComplexEvidence (P : PARComplexPackage) where
  par3ActivationClosed : P.par3Activation
  par6RecruitmentClosed : P.par6Recruitment
  apkcInhibitionClosed : P.apkcInhibition
  polarityEstablishmentClosed : P.polarityEstablishment

def PARComplexClosed (P : PARComplexPackage) : Prop :=
  P.par3Activation ∧ P.par6Recruitment ∧ P.apkcInhibition ∧ P.polarityEstablishment

theorem par_complex_closed_from_evidence (P : PARComplexPackage) (E : PARComplexEvidence P) :
    PARComplexClosed P := by
  exact And.intro E.par3ActivationClosed (And.intro E.par6RecruitmentClosed (And.intro E.apkcInhibitionClosed E.polarityEstablishmentClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse