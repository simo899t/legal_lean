import Lawlib.DK.Faerdselsloven

/-! # Example: an AI agent answers a legal question, and Lean shows where it went wrong

Question: Emma is 14 and runs a red light on purpose. Can she be fined?
(`#guard_msgs` records the expected error, so `lake build` stays green.)
-/

namespace Lawlib.Examples
open Lawlib.DK

/-! ## The agent's answer: "Yes, she can be fined." -/

/--
error: Tactic `decide` proved that the proposition
  Straffeloven.«§ 15» 14 = false
is false
-/
#guard_msgs in
example : Faerdselsloven.«§ 118, stk. 1, nr. 1» .roedt (standsede := false) (alder := 14) = true := by
  -- Step 1 ✓ Vejafmærkning § 65, stk. 2: red means stop, so § 4, stk. 1 says she must stop.
  have step1 : Faerdselsloven.«§ 4, stk. 1» .roedt = true := by decide
  -- Step 2 ✗ Straffeloven § 15 does not apply.   <- the mistake: Lean rejects this step
  have step2 : Straffeloven.«§ 15» 14 = false := by decide
  simp [Faerdselsloven.«§ 118, stk. 1, nr. 1», step1, step2]

/-! ## The corrected answer: "No. Straffeloven § 15 applies: she is under 15." -/

example : Faerdselsloven.«§ 118, stk. 1, nr. 1» .roedt (standsede := false) (alder := 14) = false := by
  decide

end Lawlib.Examples
