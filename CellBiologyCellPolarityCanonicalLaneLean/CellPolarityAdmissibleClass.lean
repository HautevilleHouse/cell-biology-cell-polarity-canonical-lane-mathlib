import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellPolarityCanonicalLaneLean

structure CellPolarityAdmittedObject where
  cellType : Type
  polarityCues : Prop
  asymmetricLocalization : Prop
  upstreamSignaling : Prop
  feedbackMechanism : Prop
  conclusion : asymmetricLocalization

structure AdmissibleClass where
  object : CellPolarityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.asymmetricLocalization) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellPolarityCanonicalLaneLean
end HautevilleHouse