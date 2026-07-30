import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : Prop
  ionChannelConductances : Prop
  gatingVariables : Prop
  actionPotentialThreshold : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  membranePotentialClosed : H.membranePotential
  ionChannelConductancesClosed : H.ionChannelConductances
  gatingVariablesClosed : H.gatingVariables
  actionPotentialThresholdClosed : H.actionPotentialThreshold

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.membranePotential ∧ H.ionChannelConductances ∧ H.gatingVariables ∧ H.actionPotentialThreshold

theorem hodgkin_huxley_dynamics_closed_from_evidence
    (H : HodgkinHuxleyDynamicsPackage) (E : HodgkinHuxleyDynamicsEvidence H) :
    HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.membranePotentialClosed
    (And.intro E.ionChannelConductancesClosed
      (And.intro E.gatingVariablesClosed E.actionPotentialThresholdClosed))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse