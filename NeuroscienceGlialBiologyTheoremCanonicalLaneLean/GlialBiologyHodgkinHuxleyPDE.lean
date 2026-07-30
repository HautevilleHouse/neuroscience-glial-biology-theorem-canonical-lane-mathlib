import NeuroscienceGlialBiologyTheoremCanonicalLaneLean.GlialBiologyAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure HodgkinHuxleyPDE where
  membranePotential : ℝ → ℝ
  ionConductances : ℝ → ℝ × ℝ × ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  equations : Prop
  initialConditions : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPDE) where
  equationsClosed : H.equations
  initialConditionsClosed : H.initialConditions

def HodgkinHuxleyClosed (H : HodgkinHuxleyPDE) : Prop :=
  H.equations ∧ H.initialConditions

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPDE)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.equationsClosed E.initialConditionsClosed

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse