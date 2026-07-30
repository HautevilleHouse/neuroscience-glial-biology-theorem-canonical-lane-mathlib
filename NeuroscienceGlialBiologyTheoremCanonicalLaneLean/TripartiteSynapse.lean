import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure TripartiteSynapsePackage where
  presynapticTerminal : Prop
  postsynapticTerminal : Prop
  astrocyteProcess : Prop
  neurotransmitterClearence : Prop
  gliotransmitterModulation : Prop
  synapticPlasticity : Prop

structure TripartiteSynapseEvidence (T : TripartiteSynapsePackage) where
  presynapticTerminalClosed : T.presynapticTerminal
  postsynapticTerminalClosed : T.postsynapticTerminal
  astrocyteProcessClosed : T.astrocyteProcess
  neurotransmitterClearenceClosed : T.neurotransmitterClearence
  gliotransmitterModulationClosed : T.gliotransmitterModulation
  synapticPlasticityClosed : T.synapticPlasticity

def TripartiteSynapseClosed (T : TripartiteSynapsePackage) : Prop :=
  T.presynapticTerminal ∧ T.postsynapticTerminal ∧ T.astrocyteProcess ∧
  T.neurotransmitterClearence ∧ T.gliotransmitterModulation ∧ T.synapticPlasticity

theorem tripartite_synapse_closed_from_evidence
    (T : TripartiteSynapsePackage) (E : TripartiteSynapseEvidence T) :
    TripartiteSynapseClosed T := by
  exact And.intro E.presynapticTerminalClosed
    (And.intro E.postsynapticTerminalClosed
      (And.intro E.astrocyteProcessClosed
        (And.intro E.neurotransmitterClearenceClosed
          (And.intro E.gliotransmitterModulationClosed E.synapticPlasticityClosed))))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse