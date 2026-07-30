import NeuroscienceGlialBiologyTheoremCanonicalLaneLean.GlialBiologyAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure HebbianLearning where
  presynapticActivity : ℝ → ℝ
  postsynapticActivity : ℝ → ℝ
  synapticWeight : ℝ → ℝ
  learningRule : Prop
  weightDynamics : Prop

structure HebbianLearningEvidence (H : HebbianLearning) where
  learningRuleClosed : H.learningRule
  weightDynamicsClosed : H.weightDynamics

def HebbianLearningClosed (H : HebbianLearning) : Prop :=
  H.learningRule ∧ H.weightDynamics

theorem hebbian_learning_closed_from_evidence (H : HebbianLearning)
    (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.learningRuleClosed E.weightDynamicsClosed

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse