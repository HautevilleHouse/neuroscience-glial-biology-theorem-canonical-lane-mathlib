import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure ConnectomicsGraphTheoryPackage where
  neuronGraph : Prop
  edgeWeights : Prop
  smallWorldProperty : Prop
  modularity : Prop
  hubIdentification : Prop

structure ConnectomicsGraphTheoryEvidence (C : ConnectomicsGraphTheoryPackage) where
  neuronGraphClosed : C.neuronGraph
  edgeWeightsClosed : C.edgeWeights
  smallWorldPropertyClosed : C.smallWorldProperty
  modularityClosed : C.modularity
  hubIdentificationClosed : C.hubIdentification

def ConnectomicsGraphTheoryClosed (C : ConnectomicsGraphTheoryPackage) : Prop :=
  C.neuronGraph ∧ C.edgeWeights ∧ C.smallWorldProperty ∧ C.modularity ∧ C.hubIdentification

theorem connectomics_graph_theory_closed_from_evidence
    (C : ConnectomicsGraphTheoryPackage) (E : ConnectomicsGraphTheoryEvidence C) :
    ConnectomicsGraphTheoryClosed C := by
  exact And.intro E.neuronGraphClosed
    (And.intro E.edgeWeightsClosed
      (And.intro E.smallWorldPropertyClosed
        (And.intro E.modularityClosed E.hubIdentificationClosed)))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse