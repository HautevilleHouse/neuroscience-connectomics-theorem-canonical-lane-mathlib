import canonicalLaneMathlib.AdmissibleClass
import NeuralFieldContinuity

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure ConnectivityTopologyPackage (N : NeuralFieldPackage) where
  moduleDetection : Prop
  smallWorldProperty : Prop
  hierarchicalModules : Prop
  degreeDistribution : Prop
  smallWorldPropertyClosed : smallWorldProperty
  hierarchicalModulesClosed : hierarchicalModules
  degreeDistributionClosed : degreeDistribution

structure ConnectivityTopologyEvidence (N : NeuralFieldPackage)
    (C : ConnectivityTopologyPackage N) where
  smallWorldPropertyClosed : C.smallWorldProperty
  hierarchicalModulesClosed : C.hierarchicalModules
  degreeDistributionClosed : C.degreeDistribution

def ConnectivityTopologyClosed (N : NeuralFieldPackage)
    (C : ConnectivityTopologyPackage N) : Prop :=
  C.smallWorldProperty ∧ C.hierarchicalModules ∧ C.degreeDistribution

theorem connectivity_topology_closed_from_evidence
    (N : NeuralFieldPackage) (C : ConnectivityTopologyPackage N)
    (E : ConnectivityTopologyEvidence N C) : ConnectivityTopologyClosed N C := by
  exact And.intro E.smallWorldPropertyClosed
    (And.intro E.hierarchicalModulesClosed E.degreeDistributionClosed)

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
