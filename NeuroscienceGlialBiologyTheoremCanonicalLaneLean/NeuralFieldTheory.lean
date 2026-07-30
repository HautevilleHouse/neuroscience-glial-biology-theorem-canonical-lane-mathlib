import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  populationActivity : Prop
  connectivityKernel : Prop
  wavePropagation : Prop
  patternFormation : Prop
  firingRateModel : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  populationActivityClosed : N.populationActivity
  connectivityKernelClosed : N.connectivityKernel
  wavePropagationClosed : N.wavePropagation
  patternFormationClosed : N.patternFormation
  firingRateModelClosed : N.firingRateModel

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.populationActivity ∧ N.connectivityKernel ∧ N.wavePropagation ∧ N.patternFormation ∧ N.firingRateModel

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.populationActivityClosed
    (And.intro E.connectivityKernelClosed
      (And.intro E.wavePropagationClosed
        (And.intro E.patternFormationClosed E.firingRateModelClosed)))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse
