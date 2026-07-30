import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure ConnectomicsReconstructionPackage {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    {Q : ConnectomicsModelPackage N} {C : CanonicalNeuralFieldPackage Q}
    (U : SynapticSurgeryPackage C) where
  finitePlasticityAlternative : Prop
  structuralFunctionalDecomposition : Prop
  networkModulesClassified : Prop
  fullyConnectedCaseForcesFunctionalNetwork : Prop

structure ConnectomicsReconstructionEvidence {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    {Q : ConnectomicsModelPackage N} {C : CanonicalNeuralFieldPackage Q}
    {U : SynapticSurgeryPackage C} (Z : ConnectomicsReconstructionPackage U) where
  finitePlasticityAlternativeClosed : Z.finitePlasticityAlternative
  structuralFunctionalDecompositionClosed : Z.structuralFunctionalDecomposition
  networkModulesClassifiedClosed : Z.networkModulesClassified
  fullyConnectedCaseForcesFunctionalNetworkClosed : Z.fullyConnectedCaseForcesFunctionalNetwork

def ConnectomicsReconstructionClosed {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    {Q : ConnectomicsModelPackage N} {C : CanonicalNeuralFieldPackage Q}
    {U : SynapticSurgeryPackage C} (Z : ConnectomicsReconstructionPackage U) : Prop :=
  Z.finitePlasticityAlternative ∧ Z.structuralFunctionalDecomposition ∧
  Z.networkModulesClassified ∧ Z.fullyConnectedCaseForcesFunctionalNetwork

theorem connectomics_reconstruction_closed_from_evidence
    {M : HodgkinHuxleyPackage} {F : NeuralFieldPDEPackage M}
    {S : ShortTimeExistencePackage F} {Epkg : HebbianLearningPackage S}
    {N : NoncollapsingPackage Epkg} {Q : ConnectomicsModelPackage N}
    {C : CanonicalNeuralFieldPackage Q} {U : SynapticSurgeryPackage C}
    (Z : ConnectomicsReconstructionPackage U) (E : ConnectomicsReconstructionEvidence Z) :
    ConnectomicsReconstructionClosed Z := by
  exact And.intro E.finitePlasticityAlternativeClosed
    (And.intro E.structuralFunctionalDecompositionClosed
      (And.intro E.networkModulesClassifiedClosed
        E.fullyConnectedCaseForcesFunctionalNetworkClosed))

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse