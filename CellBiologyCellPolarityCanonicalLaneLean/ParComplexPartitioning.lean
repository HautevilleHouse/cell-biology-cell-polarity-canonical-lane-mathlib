import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure ParComplexPartitioningPackage where
  cellMembrane : Type u
  parProteins : Type v
  anteriorDomain : Prop
  posteriorDomain : Prop
  mutualExclusion : Prop
  boundaryMaintenance : Prop

structure ParComplexPartitioningEvidence (P : ParComplexPartitioningPackage) where
  anteriorDomainClosed : P.anteriorDomain
  posteriorDomainClosed : P.posteriorDomain
  mutualExclusionClosed : P.mutualExclusion
  boundaryMaintenanceClosed : P.boundaryMaintenance

def ParComplexPartitioningClosed (P : ParComplexPartitioningPackage) : Prop :=
  P.anteriorDomain ∧ P.posteriorDomain ∧ P.mutualExclusion ∧ P.boundaryMaintenance

theorem par_complex_partitioning_closed_from_evidence (P : ParComplexPartitioningPackage)
    (E : ParComplexPartitioningEvidence P) : ParComplexPartitioningClosed P := by
  exact And.intro E.anteriorDomainClosed
    (And.intro E.posteriorDomainClosed
      (And.intro E.mutualExclusionClosed E.boundaryMaintenanceClosed))

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse