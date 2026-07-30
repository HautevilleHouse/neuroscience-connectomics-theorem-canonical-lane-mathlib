import canonicalLaneMathlib.AdmissibleClass

/-!
# Hebbian Plasticity Package
-/

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeights : Type u
  firingRates : Type v
  hebbianUpdateRule : Prop
  weightNormalization : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianUpdateRuleClosed : H.hebbianUpdateRule
  weightNormalizationClosed : H.weightNormalization
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianUpdateRule ∧ H.weightNormalization ∧
  H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.hebbianUpdateRuleClosed
    (And.intro E.weightNormalizationClosed
      (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse
