import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure GlialAdmittedObject where
  neuronPopulation : Type
  glialRegulation : Prop
  synapticPlasticity : Prop
  metabolicCoupling : Prop
  conclusion : metabolicCoupling

structure AdmissibleClass where
  object : GlialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse
