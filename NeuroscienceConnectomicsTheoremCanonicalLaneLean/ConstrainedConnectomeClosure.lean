import canonicalLaneMathlib.AdmissibleClass
import HodgkinHuxleyBridge
import HebbianGateLayer

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

def ConstrainedConnectomeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_connectome_endgame (A : AdmissibleClass) :
    ConstrainedConnectomeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
