# OnlyOne — Machine-Checked Core (Lean 4, library-only)

This repository contains a **library-only** Lean 4 project (no executable) that formalizes a small axiomatic core and proves the following theorems:

- **T1 — Unique Awareness**: There exists exactly one awareness instance.
- **T2 — No Attributes on Awareness**: Awareness is not in time, not in space, and has no qualities.
- **T4 — Only One (everything else is content)**: All non-awareness objects are content.
- **T5 — “You are That”**: The unique indexical “You” coincides with the unique awareness.

## Layout

```
onlyone/
  onlyone/
    .github/
      workflows/ci.yml
      ISSUE_TEMPLATE/refutation.md
    docs/
      EXPLAINER.md
      FAQ.md
      COROLLARIES.md
    OnlyOne/Basic.lean           -- optional placeholder
    OnlyOne.lean                 -- library root with all axioms & theorems
    lakefile.toml                -- library-only (no exe)
    lean-toolchain               -- pinned toolchain
    .gitignore
    README.md
    LICENSE
    CONTRIBUTING.md
    CODE_OF_CONDUCT.md
    CITATION.cff
```

## Build / Verify

```bash
lake update
lake build
```

If `lake build` succeeds, Lean has accepted all axioms and verified the theorems in `OnlyOne.lean`.

## Philosophy

See [`docs/EXPLAINER.md`](docs/EXPLAINER.md) for plain-language motivation and scope. For corollaries and how other non-dual claims are derived, see [`docs/COROLLARIES.md`](docs/COROLLARIES.md).

## Contributing / Refutations

- Open a PR for improvements.
- Use **Issues → Refutation** template to propose a counterexample or challenge an axiom.
- CI builds every PR to confirm machine-checking.

## License

MIT — see [`LICENSE`](LICENSE).
