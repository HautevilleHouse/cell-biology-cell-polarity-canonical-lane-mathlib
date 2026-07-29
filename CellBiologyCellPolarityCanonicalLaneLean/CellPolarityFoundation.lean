import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CellPolarityFoundation where
  cellMembrane : Type u
  cortex : Type v
  initialAsymmetry : Prop
  signalMoleculeLocalization : Prop
  positiveFeedback : Prop

structure CellPolarityFoundationEvidence (F : CellPolarityFoundation) where
  initialAsymmetryClosed : F.initialAsymmetry
  signalMoleculeLocalizationClosed : F.signalMoleculeLocalization
  positiveFeedbackClosed : F.positiveFeedback

def CellPolarityFoundationClosed (F : CellPolarityFoundation) : Prop :=
  F.initialAsymmetry ∧ F.signalMoleculeLocalization ∧ F.positiveFeedback

theorem cell_polarity_foundation_closed_from_evidence
    (F : CellPolarityFoundation) (E : CellPolarityFoundationEvidence F) :
    CellPolarityFoundationClosed F := by
  exact And.intro E.initialAsymmetryClosed
    (And.intro E.signalMoleculeLocalizationClosed E.positiveFeedbackClosed)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse