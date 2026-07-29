import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.PARComplex

/-!
# Rho GTPase Signaling Module
-/

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure RhoGTPaseSignalingPackage {P : PARComplexPackage} (par : PARComplexClosed P) where
  cdc42Activation : Prop
  racActivation : Prop
  rhoActivation : Prop
  cytoskeletonRemodeling : Prop
  positiveFeedback : Prop

structure RhoGTPaseSignalingEvidence {P : PARComplexPackage} {par : PARComplexClosed P} (R : RhoGTPaseSignalingPackage par) where
  cdc42ActivationClosed : R.cdc42Activation
  racActivationClosed : R.racActivation
  rhoActivationClosed : R.rhoActivation
  cytoskeletonRemodelingClosed : R.cytoskeletonRemodeling
  positiveFeedbackClosed : R.positiveFeedback

def RhoGTPaseSignalingClosed {P : PARComplexPackage} {par : PARComplexClosed P} (R : RhoGTPaseSignalingPackage par) : Prop :=
  R.cdc42Activation ∧ R.racActivation ∧ R.rhoActivation ∧ R.cytoskeletonRemodeling ∧ R.positiveFeedback

theorem rho_gtpase_signaling_closed_from_evidence {P : PARComplexPackage} {par : PARComplexClosed P}
    (R : RhoGTPaseSignalingPackage par) (E : RhoGTPaseSignalingEvidence R) :
    RhoGTPaseSignalingClosed R := by
  exact And.intro E.cdc42ActivationClosed (And.intro E.racActivationClosed (And.intro E.rhoActivationClosed (And.intro E.cytoskeletonRemodelingClosed E.positiveFeedbackClosed)))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse