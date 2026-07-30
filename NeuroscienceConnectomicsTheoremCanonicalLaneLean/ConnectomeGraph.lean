import canonicalLaneMathlib.AdmissibleClass

/-!
# Connectome Graph Package
-/

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure ConnectomeGraphPackage where
  nodeCount : Nat
  edgeSet : Set (Nat × Nat)
  weightedAdjacency : Type u
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomeGraphEvidence (C : ConnectomeGraphPackage) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomeGraphClosed (C : ConnectomeGraphPackage) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure

theorem connectome_graph_closed_from_evidence
    (C : ConnectomeGraphPackage) (E : ConnectomeGraphEvidence C) :
    ConnectomeGraphClosed C := by
  exact And.intro E.smallWorldPropertyClosed E.modularStructureClosed

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
