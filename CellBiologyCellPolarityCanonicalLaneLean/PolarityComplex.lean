import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

/-!
# Polarity Complex Package
-/

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PARComplexPackage where
  parProteins : Type u
  apicalBasalLocalization : Prop
  feedbackWithCrumbs : Prop
  feedbackWithScribble : Prop
  membraneRecruitment : Prop

structure PARComplexEvidence (P : PARComplexPackage) where
  apicalBasalLocalizationClosed : P.apicalBasalLocalization
  feedbackWithCrumbsClosed : P.feedbackWithCrumbs
  feedbackWithScribbleClosed : P.feedbackWithScribble
  membraneRecruitmentClosed : P.membraneRecruitment

def PARComplexClosed (P : PARComplexPackage) : Prop :=
  P.apicalBasalLocalization ∧ P.feedbackWithCrumbs ∧ P.feedbackWithScribble ∧ P.membraneRecruitment

theorem par_complex_closed_from_evidence (P : PARComplexPackage) (E : PARComplexEvidence P) :
    PARComplexClosed P :=
  And.intro E.apicalBasalLocalizationClosed
    (And.intro E.feedbackWithCrumbsClosed (And.intro E.feedbackWithScribbleClosed E.membraneRecruitmentClosed))

structure CrumbsComplexPackage where
  crumbsProteins : Type u
  apicalLocalization : Prop
  interactionWithPAR : Prop
  stabilizationOfPolarity : Prop

structure CrumbsComplexEvidence (C : CrumbsComplexPackage) where
  apicalLocalizationClosed : C.apicalLocalization
  interactionWithPARClosed : C.interactionWithPAR
  stabilizationOfPolarityClosed : C.stabilizationOfPolarity

def CrumbsComplexClosed (C : CrumbsComplexPackage) : Prop :=
  C.apicalLocalization ∧ C.interactionWithPAR ∧ C.stabilizationOfPolarity

theorem crumbs_complex_closed_from_evidence (C : CrumbsComplexPackage) (E : CrumbsComplexEvidence C) :
    CrumbsComplexClosed C :=
  And.intro E.apicalLocalizationClosed (And.intro E.interactionWithPARClosed E.stabilizationOfPolarityClosed)

structure ScribbleComplexPackage where
  scribbleProteins : Type u
  basolateralLocalization : Prop
  antagonismWithPAR : Prop
  boundaryMaintenance : Prop

structure ScribbleComplexEvidence (S : ScribbleComplexPackage) where
  basolateralLocalizationClosed : S.basolateralLocalization
  antagonismWithPARClosed : S.antagonismWithPAR
  boundaryMaintenanceClosed : S.boundaryMaintenance

def ScribbleComplexClosed (S : ScribbleComplexPackage) : Prop :=
  S.basolateralLocalization ∧ S.antagonismWithPAR ∧ S.boundaryMaintenance

theorem scribble_complex_closed_from_evidence (S : ScribbleComplexPackage) (E : ScribbleComplexEvidence S) :
    ScribbleComplexClosed S :=
  And.intro E.basolateralLocalizationClosed (And.intro E.antagonismWithPARClosed E.boundaryMaintenanceClosed)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse