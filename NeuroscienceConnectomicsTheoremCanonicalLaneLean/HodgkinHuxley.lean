import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure HodgkinHuxleyEquations where
  membranePotential : ℝ
  potassiumActivation : ℝ
  sodiumActivation : ℝ
  sodiumInactivation : ℝ
  timeConstant : ℝ
  conductance : ℝ
  equationsClosed : Prop

def HodgkinHuxleyClosed (E : HodgkinHuxleyEquations) : Prop :=
  E.equationsClosed

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
