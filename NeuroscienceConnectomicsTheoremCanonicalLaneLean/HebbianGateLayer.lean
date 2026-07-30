import canonicalLaneMathlib.AdmissibleClass
import HodgkinHuxleyBridge

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
