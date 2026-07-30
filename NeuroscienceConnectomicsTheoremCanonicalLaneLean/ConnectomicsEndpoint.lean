import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure ConnectomicsEndpointPackage {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    {Q : ConnectomicsModelPackage N} {C : CanonicalNeuralFieldPackage Q}
    {U : SynapticSurgeryPackage C} (Z : ConnectomicsReconstructionPackage U) where
  targetBrain : Type u
  targetTopology : TopologicalSpace targetBrain
  fullyConnectedFunctionalNetwork : Prop
  connectivityMatchesCognitiveFunction : Prop
  endpointMatchesConnectomicsStatement : Prop

structure ConnectomicsEndpointEvidence {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    {Q : ConnectomicsModelPackage N} {C : CanonicalNeuralFieldPackage Q}
    {U : SynapticSurgeryPackage C} {Z : ConnectomicsReconstructionPackage U}
    (Epkg2 : ConnectomicsEndpointPackage Z) where
  fullyConnectedFunctionalNetworkClosed : Epkg2.fullyConnectedFunctionalNetwork
  endpointMatchesConnectomicsStatementClosed : Epkg2.endpointMatchesConnectomicsStatement

def ConnectomicsEndpointClosed {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    {Q : ConnectomicsModelPackage N} {C : CanonicalNeuralFieldPackage Q}
    {U : SynapticSurgeryPackage C} {Z : ConnectomicsReconstructionPackage U}
    (Epkg2 : ConnectomicsEndpointPackage Z) : Prop :=
  Epkg2.fullyConnectedFunctionalNetwork ∧ Epkg2.endpointMatchesConnectomicsStatement

theorem connectomics_endpoint_closed_from_evidence
    {M : HodgkinHuxleyPackage} {F : NeuralFieldPDEPackage M}
    {S : ShortTimeExistencePackage F} {Epkg : HebbianLearningPackage S}
    {N : NoncollapsingPackage Epkg} {Q : ConnectomicsModelPackage N}
    {C : CanonicalNeuralFieldPackage Q} {U : SynapticSurgeryPackage C}
    {Z : ConnectomicsReconstructionPackage U} (Epkg2 : ConnectomicsEndpointPackage Z)
    (E : ConnectomicsEndpointEvidence Epkg2) : ConnectomicsEndpointClosed Epkg2 := by
  exact And.intro E.fullyConnectedFunctionalNetworkClosed
    E.endpointMatchesConnectomicsStatementClosed

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse