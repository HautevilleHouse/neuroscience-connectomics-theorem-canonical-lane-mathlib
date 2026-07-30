import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure HodgkinHuxleyCableModel where
  membranePotential : Type
  ionChannelState : Type
  sodiumActivation : Prop
  potassiumActivation : Prop
  leakCurrent : Prop
  gatingKinetics : Prop

def HodgkinHuxleyBridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ HodgkinHuxleyCableModel.membranePotential A

theorem hodgkin_huxley_bridge_from_admissible (A : AdmissibleClass) :
    HodgkinHuxleyBridgeClosed A := by
  exact And.intro (bridge_from_admissible_class A) A.object.conclusion

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse