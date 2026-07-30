import NeuroscienceGlialBiologyTheoremCanonicalLaneLean.GlialBiologyAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GlialBiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse