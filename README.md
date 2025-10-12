# OnlyOne — Machine-Checked Core (Lean 4, library-only)

This repository contains a **library-only** Lean 4 project (no executable) that formalizes a small axiomatic core and proves the following theorems:

- **T1 — Unique Awareness**: There exists exactly one awareness instance.
- **T2 — No Attributes on Awareness**: Awareness is not in time, not in space, and has no qualities.
- **T4 — Only One (everything else is content)**: All non-awareness objects are content.
- **T5 — “You are That”**: The unique indexical “You” coincides with the unique awareness.

# OnlyOne: A Machine-Checked Phenomenological Proof

**Claim:** From minimal experiential axioms, it follows that there is exactly one
formless, timeless Awareness; all multiplicity is content; and the subject "you"
is identical to that Awareness.

## Build / Verify

```bash
lake update
lake build
```

If `lake build` succeeds, Lean has accepted all axioms and verified the theorems in `OnlyOne.lean`.

## Philosophy

See [`docs/EXPLAINER.md`](docs/EXPLAINER.md) for plain-language motivation and scope. For corollaries and how other non-dual claims are derived, see [`docs/COROLLARIES.md`](docs/COROLLARIES.md).

## Scope
- Phenomenology, not micro-physics. Science maps modal structure (content-side).
- The proof is conditional: if you accept the axioms (each experientially testable),
  the conclusion follows.

## One-page: Axioms ⇒ Theorem (plain-language)

Axioms (minimal, experiential)

A1 Experience: There is experience now.

A2 Contents: Anything you can point to (sensations, thoughts, world) is content that appears in experience.

A3 Condition: Every experience has a condition for appearing (call it Awareness).

A4 Not a content: The condition isn’t itself a content (or you get infinite regress).

A5 Differentiation is content-side: Any usable way we tell things apart relies on time, place, or qualities.

A6 Attributes ⇒ content: If something is in time/space/has qualities, it’s a content.

A7 Distinctness principle: If there were two different X’s, something must differ between them.

Theorems

Awareness exists (from A1–A3).

Awareness has no time/space/quality (A4–A6).

Uniqueness: Two awarenesses can’t be told apart (A5, A7), and no non-content differentiator applies—so there is exactly one Awareness.

Only One: Everything not identical with that Awareness is content; multiplicity is strictly on the content side.

You are That: The “you” that knows your experience isn’t a content (it’s the condition); therefore the subject = the unique Awareness.

Conclusion
There is only One, and you are That. (Q.E.D.)

## 60-second “try it now” demo 

Close your eyes if safe. Notice sounds, sensations, thoughts—changing, everything is alive, moving.
Now notice the knowing of them. The knowing isn’t changing.
Try to find a second “knowing.” To do that, you’d use time, space, or qualities—those are themselves changing contents.
So there isn’t a second knower you can meaningfully point to. There’s one knower — This — and it’s what you are.
Open your eyes; let everything appear. The screen doesn’t become the movie. The movie never touches the screen.

## Contributing
- Critique welcome: propose an explicit counter-axiom or a non-modal differentiator.

## License

MIT — see [`LICENSE`](LICENSE).

[![DOI](https://zenodo.org/badge/1074721040.svg)](https://doi.org/10.5281/zenodo.17333604)
