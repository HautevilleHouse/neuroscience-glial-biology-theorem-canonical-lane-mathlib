import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  networkConnectivity : Prop
  graphTheoreticMetrics : Prop
  smallWorldProperty : Prop
  hierarchicalModularity : Prop
  structuralFunctionalCoupling : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  networkConnectivityClosed : C.networkConnectivity
  graphTheoreticMetricsClosed : C.graphTheoreticMetrics
  smallWorldPropertyClosed : C.smallWorldProperty
  hierarchicalModularityClosed : C.hierarchicalModularity
  structuralFunctionalCouplingClosed : C.structuralFunctionalCoupling

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.networkConnectivity ∧ C.graphTheoreticMetrics ∧ C.smallWorldProperty ∧ C.hierarchicalModularity ∧ C.structuralFunctionalCoupling

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.networkConnectivityClosed
    (And.intro E.graphTheoreticMetricsClosed
      (And.intro E.smallWorldPropertyClosed
        (And.intro E.hierarchicalModularityClosed E.structuralFunctionalCouplingClosed)))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse
