import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.PolarityComplex
import HautevilleHouse.CellBiologyCellPolarityCanonicalLaneLean.PolarityFeedback

/-!
# Cell Polarity Establishment Package
-/

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CellPolarityEstablishmentPackage {P : PARComplexPackage} {C : CrumbsComplexPackage} {S : ScribbleComplexPackage}
    {F : PolarityFeedbackPackage P C S} where
  initialCue : Prop
  symmetryBreaking : Prop
  domainFormation : Prop
  polarityMaintenance : Prop

structure CellPolarityEstablishmentEvidence {P : PARComplexPackage} {C : CrumbsComplexPackage} {S : ScribbleComplexPackage}
    {F : PolarityFeedbackPackage P C S} (E : CellPolarityEstablishmentPackage P C S F) where
  initialCueClosed : E.initialCue
  symmetryBreakingClosed : E.symmetryBreaking
  domainFormationClosed : E.domainFormation
  polarityMaintenanceClosed : E.polarityMaintenance

def CellPolarityEstablishmentClosed {P : PARComplexPackage} {C : CrumbsComplexPackage} {S : ScribbleComplexPackage}
    {F : PolarityFeedbackPackage P C S} (E : CellPolarityEstablishmentPackage P C S F) : Prop :=
  E.initialCue ∧ E.symmetryBreaking ∧ E.domainFormation ∧ E.polarityMaintenance

theorem cell_polarity_establishment_closed_from_evidence {P : PARComplexPackage} {C : CrumbsComplexPackage} {S : ScribbleComplexPackage}
    {F : PolarityFeedbackPackage P C S} (E : CellPolarityEstablishmentPackage P C S F)
    (Ev : CellPolarityEstablishmentEvidence E) : CellPolarityEstablishmentClosed E :=
  And.intro Ev.initialCueClosed (And.intro Ev.symmetryBreakingClosed (And.intro Ev.domainFormationClosed Ev.polarityMaintenanceClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse