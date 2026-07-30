import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure NeuralFieldEquation where
  firingRateField : ℝ → ℝ
  connectivityKernel : ℝ → ℝ → ℝ
  externalInput : ℝ → ℝ
  equationClosed : Prop

def NeuralFieldClosed (N : NeuralFieldEquation) : Prop :=
  N.equationClosed

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
