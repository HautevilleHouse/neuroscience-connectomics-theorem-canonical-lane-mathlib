import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

structure HodgkinHuxleyDynamics where
  membraneVoltage : ℝ → ℝ
  gatingVariables : ℝ → (ℝ × ℝ × ℝ)
  ionConductances : ℝ → (ℝ × ℝ × ℝ)
  differentialEquations : Prop
  actionPotentialGenerated : Prop

def HHClosed (H : HodgkinHuxleyDynamics) : Prop :=
  H.differentialEquations ∧ H.actionPotentialGenerated

theorem hh_closed_from_evidence (H : HodgkinHuxleyDynamics) (hdeq : H.differentialEquations) (hap : H.actionPotentialGenerated) : HHClosed H :=
  And.intro hdeq hap

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse