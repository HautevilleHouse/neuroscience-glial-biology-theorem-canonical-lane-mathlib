import NeuroscienceGlialBiologyTheoremCanonicalLaneLean.GlialBiologyGateLemmas

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

def ConstrainedNeuroscienceGlialBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_glial_biology_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceGlialBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse