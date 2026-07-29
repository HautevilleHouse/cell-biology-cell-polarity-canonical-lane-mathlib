import CellBiologyCellPolarityCanonicalLaneLean.CellPolarityNetwork

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure PolarityRegulation {C : CellPolarityNetwork} where
  parProteinLocalization : Prop
  cdc42ActivityGradient : Prop
  rhoGtpaseFeedback : Prop
  phosphorylationEvents : Prop

structure PolarityRegulationEvidence {C : CellPolarityNetwork} (R : PolarityRegulation C) where
  parProteinLocalizationClosed : R.parProteinLocalization
  cdc42ActivityGradientClosed : R.cdc42ActivityGradient
  rhoGtpaseFeedbackClosed : R.rhoGtpaseFeedback
  phosphorylationEventsClosed : R.phosphorylationEvents

def PolarityRegulationClosed {C : CellPolarityNetwork} (R : PolarityRegulation C) : Prop :=
  R.parProteinLocalization ∧ R.cdc42ActivityGradient ∧ R.rhoGtpaseFeedback ∧ R.phosphorylationEvents

theorem polarity_regulation_closed_from_evidence {C : CellPolarityNetwork} (R : PolarityRegulation C) (E : PolarityRegulationEvidence R) : PolarityRegulationClosed R := by
  exact And.intro E.parProteinLocalizationClosed (And.intro E.cdc42ActivityGradientClosed (And.intro E.rhoGtpaseFeedbackClosed E.phosphorylationEventsClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse