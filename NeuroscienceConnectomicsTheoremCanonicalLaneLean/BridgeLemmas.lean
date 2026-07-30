import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceConnectomicsTheoremCanonicalLaneLean

def ConnectomicsWitnessClosed (O : ConnectomicsAdmittedObject) : Prop :=
  O.emergentFunction

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConnectomicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end NeuroscienceConnectomicsTheoremCanonicalLaneLean
end HautevilleHouse