import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure AstrocyteCalciumSignalingPackage where
  ip3ReceptorActivation : Prop
  calciumRelease : Prop
  calciumWavePropagation : Prop
  gliotransmitterRelease : Prop
  neurovascularCoupling : Prop

structure AstrocyteCalciumSignalingEvidence (A : AstrocyteCalciumSignalingPackage) where
  ip3ReceptorActivationClosed : A.ip3ReceptorActivation
  calciumReleaseClosed : A.calciumRelease
  calciumWavePropagationClosed : A.calciumWavePropagation
  gliotransmitterReleaseClosed : A.gliotransmitterRelease
  neurovascularCouplingClosed : A.neurovascularCoupling

def AstrocyteCalciumSignalingClosed (A : AstrocyteCalciumSignalingPackage) : Prop :=
  A.ip3ReceptorActivation ∧ A.calciumRelease ∧ A.calciumWavePropagation ∧
  A.gliotransmitterRelease ∧ A.neurovascularCoupling

theorem astrocyte_calcium_signaling_closed_from_evidence
    (A : AstrocyteCalciumSignalingPackage) (E : AstrocyteCalciumSignalingEvidence A) :
    AstrocyteCalciumSignalingClosed A := by
  exact And.intro E.ip3ReceptorActivationClosed
    (And.intro E.calciumReleaseClosed
      (And.intro E.calciumWavePropagationClosed
        (And.intro E.gliotransmitterReleaseClosed E.neurovascularCouplingClosed)))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse