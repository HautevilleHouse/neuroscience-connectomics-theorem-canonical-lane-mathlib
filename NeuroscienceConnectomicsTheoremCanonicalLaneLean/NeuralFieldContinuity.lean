import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure NeuralFieldPackage where
  fieldDynamics : Type
  connectivityKernel : Type
  firingRateEquations : Prop
  stationaryStates : Prop
  stabilityCondition : Prop
  firingRateEquationsClosed : firingRateEquations
  stationaryStatesClosed : stationaryStates
  stabilityConditionClosed : stabilityCondition

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  firingRateEquationsClosed : N.firingRateEquations
  stationaryStatesClosed : N.stationaryStates
  stabilityConditionClosed : N.stabilityCondition

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.firingRateEquations ∧ N.stationaryStates ∧ N.stabilityCondition

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.firingRateEquationsClosed
    (And.intro E.stationaryStatesClosed E.stabilityConditionClosed)

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
