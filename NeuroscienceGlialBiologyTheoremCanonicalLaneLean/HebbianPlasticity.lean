import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeightDynamics : Prop
  spikeTimingDependence : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  calciumSignaling : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  synapticWeightDynamicsClosed : H.synapticWeightDynamics
  spikeTimingDependenceClosed : H.spikeTimingDependence
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  calciumSignalingClosed : H.calciumSignaling

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.synapticWeightDynamics ∧ H.spikeTimingDependence ∧ H.longTermPotentiation ∧ H.longTermDepression ∧ H.calciumSignaling

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.synapticWeightDynamicsClosed
    (And.intro E.spikeTimingDependenceClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed E.calciumSignalingClosed)))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse
