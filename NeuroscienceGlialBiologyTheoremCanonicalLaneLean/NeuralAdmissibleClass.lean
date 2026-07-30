import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure NeuronAdmittedObject where
  neuronType : Type
  membranePotential : Type
  spikingActivity : Prop
  glialInteraction : Prop
  conclusion : spikingActivity ∧ glialInteraction

structure AdmissibleClass where
  object : NeuronAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse
