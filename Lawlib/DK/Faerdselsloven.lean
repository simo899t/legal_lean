

import Lawlib.DK.Straffeloven
import Lawlib.DK.Vejafmaerkning.Signalanlæg

/-! # Færdselsloven, LBK nr. 118 af 12/01/2026 (https://www.retsinformation.dk/eli/lta/2026/118) -/

namespace Lawlib.DK.Faerdselsloven

open Lawlib.DK.Signalanlæg (Lys)

/-- § 4, stk. 1. "Trafikanter skal efterkomme de anvisninger for færdslen, som gives ved …
signalanlæg …". / Stop for rød-/
def «§ 4, stk. 1» (lys : Lys) : Bool :=
  Signalanlæg.«§ 65, stk. 2» lys

/-- § 118, stk. 1, nr. 1. "Med bøde … straffes den, der: 1) overtræder … §§ 4-8 …" -/
def «§ 118, stk. 1, nr. 1» (lys : Lys) (standsede : Bool) : Bool :=
  «§ 4, stk. 1» lys && !standsede

end Lawlib.DK.Faerdselsloven
