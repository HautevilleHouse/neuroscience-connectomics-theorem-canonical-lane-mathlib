import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure ConnectomicsNetworkTopology where
  nodes : Type u
  edges : Type v
  connectivityMatrix : nodes → nodes → Prop
  smallWorldProperty : Prop
  modularStructure : Prop

def ConnectomeClosed (C : ConnectomicsNetworkTopology) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure

theorem connectome_closed_from_evidence (C : ConnectomicsNetworkTopology) (hsw : C.smallWorldProperty) (hmod : C.modularStructure) : ConnectomeClosed C :=
  And.intro hsw hmod

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse