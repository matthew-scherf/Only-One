# FAQ

**Q: Is this “proof” a proof of reality?**
A: It’s a **machine-checked derivation** from explicit axioms. The “truth” depends on whether you accept the axioms as modeling experience appropriately.

**Q: Why no executable?**
A: This repo is library-only by design. `lake build` is sufficient to verify the proofs; CI also builds on every PR.

**Q: Can I change the axioms?**
A: Yes. Fork and modify `OnlyOne.lean`. CI will re-verify the results.

**Q: Which Lean version?**
A: See `lean-toolchain` (currently `leanprover/lean4:v4.23.0`).

**Q: How to propose a refutation?**
A: Use the “Refutation” issue template and include a concrete Lean snippet or axiom critique.
