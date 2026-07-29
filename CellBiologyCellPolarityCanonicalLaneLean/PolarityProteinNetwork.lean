import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarityProteinNetworkPackage (A : AdmissibleClass) where
  cdc42Activation : Prop
  parComplexLocalization : Prop
  rhoGtpaseCycle : Prop
  positiveFeedbackLoop : Prop

structure PolarityProteinNetworkEvidence {A : AdmissibleClass} (N : PolarityProteinNetworkPackage A) where
  cdc42ActivationClosed : N.cdc42Activation
  parComplexLocalizationClosed : N.parComplexLocalization
  rhoGtpaseCycleClosed : N.rhoGtpaseCycle
  positiveFeedbackLoopClosed : N.positiveFeedbackLoop

def PolarityProteinNetworkClosed {A : AdmissibleClass} (N : PolarityProteinNetworkPackage A) : Prop :=
  N.cdc42Activation ∧ N.parComplexLocalization ∧ N.rhoGtpaseCycle ∧ N.positiveFeedbackLoop

theorem polarity_protein_network_closed_from_evidence
    {A : AdmissibleClass} (N : PolarityProteinNetworkPackage A) (E : PolarityProteinNetworkEvidence N) :
    PolarityProteinNetworkClosed N := by
  exact And.intro E.cdc42ActivationClosed
    (And.intro E.parComplexLocalizationClosed
      (And.intro E.rhoGtpaseCycleClosed E.positiveFeedbackLoopClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse