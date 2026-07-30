import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  correlationDetected : Prop
  synapticWeightUpdated : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  correlationDetectedClosed : H.correlationDetected
  synapticWeightUpdatedClosed : H.synapticWeightUpdated
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.correlationDetected ∧
  H.synapticWeightUpdated ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_synaptic_plasticity_closed_from_evidence
    (H : HebbianSynapticPlasticityPackage) (E : HebbianSynapticPlasticityEvidence H) :
    HebbianSynapticPlasticityClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.correlationDetectedClosed
        (And.intro E.synapticWeightUpdatedClosed
          (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse