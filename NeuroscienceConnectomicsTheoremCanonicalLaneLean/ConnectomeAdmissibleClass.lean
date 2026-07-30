import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure ConnectomeAdmittedObject where
  neuronPopulation : Type
  connectivityMatrix : Type
  hebbianPlasticity : Prop
  firingRateModel : Type
  conclusion : hebbianPlasticity

def ConnectomeWitnessClosed (O : ConnectomeAdmittedObject) : Prop :=
  O.hebbianPlasticity

structure AdmissibleClass where
  object : ConnectomeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConnectomeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
