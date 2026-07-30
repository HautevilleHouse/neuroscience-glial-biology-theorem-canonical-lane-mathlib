import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceGlialBiologyTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse
