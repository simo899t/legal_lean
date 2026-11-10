/-! # Bekendtgørelse om vejafmærkning, BEK nr. 425 af 13/04/2023 (https://www.retsinformation.dk/eli/lta/2023/425) -/

namespace Lawlib.DK.Vejafmaerkning

inductive Lys where
  | roedt | gult | groent
  deriving DecidableEq, Repr

/-- § 65, stk. 2. "Rødt lys betyder stop." -/
def «§ 65, stk. 2» (lys : Lys) : Bool :=
  lys == .roedt

end Lawlib.DK.Vejafmaerkning
