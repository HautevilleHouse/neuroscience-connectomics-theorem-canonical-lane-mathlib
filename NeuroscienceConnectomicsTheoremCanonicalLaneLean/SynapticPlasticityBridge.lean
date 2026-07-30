import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure SynapticPlasticityPackage where
  langevinNoise : Type
  weightDynamics : Type
  stdpRule : Prop
  homeostaticScaling : Prop
  stdpRuleClosed : stdpRule
  homeostaticScalingClosed : homeostaticScaling

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  stdpRuleClosed : S.stdpRule
  homeostaticScalingClosed : S.homeostaticScaling

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.stdpRule ∧ S.homeostaticScaling

theorem synaptic_plasticity_closed_from_evidence
    (S : SynapticPlasticityPackage) (E : SynapticPlasticityEvidence S) :
    SynapticPlasticityClosed S := by
  exact And.intro E.stdpRuleClosed E.homeostaticScalingClosed

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
