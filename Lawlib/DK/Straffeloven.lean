/-! # Straffeloven, LBK nr. 1294 af 7/11/2025 (https://www.retsinformation.dk/eli/lta/2025/1294) -/

namespace Lawlib.DK.Straffeloven

/-- § 15. "Handlinger foretagne af børn under 15 år straffes ikke." -/
def «§ 15» (alder : Nat) : Bool :=
  alder < 15

end Lawlib.DK.Straffeloven
