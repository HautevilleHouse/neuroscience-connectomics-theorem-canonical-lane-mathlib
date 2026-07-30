import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure CanonicalNeuralFieldPackage {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    (Q : ConnectomicsModelPackage N) where
  highActivityRegionCovered : Prop
  synapticBoutonDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderPlasticity : Prop

structure CanonicalNeuralFieldEvidence {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    {Q : ConnectomicsModelPackage N} (C : CanonicalNeuralFieldPackage Q) where
  highActivityRegionCoveredClosed : C.highActivityRegionCovered
  synapticBoutonDecompositionClosed : C.synapticBoutonDecomposition
  scaleCompatibilityClosed : C.scaleCompatibility
  persistenceUnderPlasticityClosed : C.persistenceUnderPlasticity

def CanonicalNeuralFieldClosed {M : HodgkinHuxleyPackage}
    {F : NeuralFieldPDEPackage M} {S : ShortTimeExistencePackage F}
    {Epkg : HebbianLearningPackage S} {N : NoncollapsingPackage Epkg}
    {Q : ConnectomicsModelPackage N} (C : CanonicalNeuralFieldPackage Q) : Prop :=
  C.highActivityRegionCovered ∧ C.synapticBoutonDecomposition ∧
  C.scaleCompatibility ∧ C.persistenceUnderPlasticity

theorem canonical_neural_field_closed_from_evidence
    {M : HodgkinHuxleyPackage} {F : NeuralFieldPDEPackage M}
    {S : ShortTimeExistencePackage F} {Epkg : HebbianLearningPackage S}
    {N : NoncollapsingPackage Epkg} {Q : ConnectomicsModelPackage N}
    (C : CanonicalNeuralFieldPackage Q) (E : CanonicalNeuralFieldEvidence C) :
    CanonicalNeuralFieldClosed C := by
  exact And.intro E.highActivityRegionCoveredClosed
    (And.intro E.synapticBoutonDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderPlasticityClosed))

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse