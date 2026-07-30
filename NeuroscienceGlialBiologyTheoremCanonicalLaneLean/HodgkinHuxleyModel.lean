import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure IonChannelDynamics where
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakConductance : ℝ
  membraneCapacitance : ℝ
  restingPotential : ℝ

structure HodgkinHuxleyModel (A : AdmissibleClass) where
  ionChannels : IonChannelDynamics
  actionPotentialGenerated : Prop
  conductanceLawsValid : Prop
  actionPotentialGeneratedClosed : actionPotentialGenerated
  conductanceLawsValidClosed : conductanceLawsValid

def HodgkinHuxleyClosed (A : AdmissibleClass) (M : HodgkinHuxleyModel A) : Prop :=
  M.actionPotentialGenerated ∧ M.conductanceLawsValid

theorem hodgkin_huxley_closed_from_evidence (A : AdmissibleClass)
    (M : HodgkinHuxleyModel A) : HodgkinHuxleyClosed A M := by
  exact And.intro M.actionPotentialGeneratedClosed M.conductanceLawsValidClosed

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse