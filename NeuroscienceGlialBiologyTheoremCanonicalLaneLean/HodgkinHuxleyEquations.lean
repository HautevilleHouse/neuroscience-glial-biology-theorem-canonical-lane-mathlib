import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Prop
  ionChannelConductances : Prop
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakageCurrent : Prop
  voltageClampData : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membraneCapacitanceClosed : H.membraneCapacitance
  ionChannelConductancesClosed : H.ionChannelConductances
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakageCurrentClosed : H.leakageCurrent
  voltageClampDataClosed : H.voltageClampData

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance ∧ H.ionChannelConductances ∧ H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakageCurrent ∧ H.voltageClampData

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.ionChannelConductancesClosed
      (And.intro E.sodiumCurrentClosed
        (And.intro E.potassiumCurrentClosed
          (And.intro E.leakageCurrentClosed E.voltageClampDataClosed))))

end NeuroscienceGlialBiologyTheoremCanonicalLaneLean
end HautevilleHouse
