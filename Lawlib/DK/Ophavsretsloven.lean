import Lawlib.DK.Straffeloven     -- straffeloven § 2: the general part applies to this law too

/-!
# Ophavsretsloven (the Danish Copyright Act)

Source: Bekendtgørelse af lov om ophavsret, LBK nr. 1093 af 20. august 2023,
<https://www.retsinformation.dk/eli/lta/2023/1093>.

**Layer 2: a special law that overrides the library.** § 76 demands intent or *gross* negligence,
so straffeloven § 19's default (simple negligence is enough) does not apply. This is the "medmindre
det modsatte har særlig hjemmel" in § 19.
-/

namespace Lawlib.DK.Ophavsretsloven

open Lawlib.DK.Straffeloven (Offence)     -- ≈ `from straffeloven import Offence`

/-- **§ 76, stk. 1, nr. 1.** "Med bøde straffes den, som forsætligt eller groft uagtsomt
1) overtræder § 2 eller § 3, …"

§ 2 gives the author the exclusive right to make copies of the work and to make it available to
the public. -/
def «§ 76, stk. 1, nr. 1» : Offence where
  citation := "Ophavsretsloven § 76, stk. 1, nr. 1, jf. § 2"
  inStraffeloven := false
  specialRule := some .grossNegligence   -- overrides straffeloven § 19

end Lawlib.DK.Ophavsretsloven
