import canonicalLaneMathlib.AdmissibleClass
import HodgkinHuxley
import HebbianPlasticity
import NeuralFieldTheory
import ConnectomeGraph

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

def ConstrainedNeuroscienceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
