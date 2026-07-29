import CellBiologyCellPolarityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CellMigrationPolarityPackage where
  frontRearAxis : Prop
  lamellipodiumFormation : Prop
  adhesionPolarity : Prop
  chemotacticSensing : Prop

structure CellMigrationPolarityEvidence (C : CellMigrationPolarityPackage) where
  frontRearAxisClosed : C.frontRearAxis
  lamellipodiumFormationClosed : C.lamellipodiumFormation
  adhesionPolarityClosed : C.adhesionPolarity
  chemotacticSensingClosed : C.chemotacticSensing

def CellMigrationPolarityClosed (C : CellMigrationPolarityPackage) : Prop :=
  C.frontRearAxis ∧ C.lamellipodiumFormation ∧
  C.adhesionPolarity ∧ C.chemotacticSensing

theorem cell_migration_polarity_closed_from_evidence
    (C : CellMigrationPolarityPackage) (E : CellMigrationPolarityEvidence C) :
    CellMigrationPolarityClosed C := by
  exact And.intro E.frontRearAxisClosed
    (And.intro E.lamellipodiumFormationClosed
      (And.intro E.adhesionPolarityClosed
        E.chemotacticSensingClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse