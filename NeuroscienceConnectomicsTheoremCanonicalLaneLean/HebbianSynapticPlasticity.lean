import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure HebbianPlasticityRule where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  weightChange : Prop
  correlationDependence : Prop
  stabilityCondition : Prop

def HebbianClosure (A : AdmissibleClass) : Prop :=
  gateClosed A ∧ HebbianPlasticityRule.correlationDependence A

theorem hebbian_closure_from_admissible (A : AdmissibleClass) :
    HebbianClosure A := by
  exact And.intro (gate_from_admissible_class A) A.object.conclusion

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse