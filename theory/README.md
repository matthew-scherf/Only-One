# The Formalization

This directory contains the complete, machine-verified formalization of Advaita Vedanta's non-dual metaphysics.

## File

**`Advaita_Vedanta.thy`** - The master formalization (Isabelle/HOL)


### Structure
- **Lines 1-100**: Type declarations, predicates, definitions
- **Lines 101-250**: Core axioms and extensions (40+ axioms)
- **Lines 251-500**: Proven theorems (30+ theorems)
- **Lines 501-600**: Ultimate theorem with complete proof


**Core Metaphysics** (9 axioms)
- Unique Absolute exists
- Everything else is conditioned
- Subject = Absolute

**Extensions** (31 axioms across 7 domains)
1. Five Sheaths (6 axioms) - layers of apparent selfhood
2. Vivarta Doctrine (4 axioms) - appearance without transformation
3. Three Guṇas (3 axioms) - modes of manifestation
4. Causation Denial (3 axioms) - no causal efficacy
5. Ego-Fiction (4 axioms) - false identification
6. Consciousness & Witnessing (4 axioms) - awareness as fundamental
7. Ontological Monism (7 axioms) - only one reality exists

## Result

```isabelle
theorem Tat_Tvam_Asi_Ultimate:
  "EX! u. You u & 
         ReallyExists u &
         (ALL x. x ~= u --> ~ReallyExists x) &
         (ALL P. AdmissibleProp P --> ~P u) &
         (ALL x. Conditioned x --> Witnesses u x & Appears u x) &
         ~Phenomenal u & ~Born u & ~Dies u & ~Changes u &
         (~Sattva u & ~Rajas u & ~Tamas u) &
         (Knower u & Known u & Knowing u) &
         (ALL e. Ego e --> e ~= u) &
         (ALL s. Sheath s --> s ~= u)"
```

**Translation:** There exists exactly one You which:
- Is the only thing that really exists
- Has no properties (time, space, qualities)
- Witnesses all phenomena
- Appears as all phenomena  
- Was never born, will never die, never changes
- Transcends the guṇas (nirguṇa)
- Is knower, known, and knowing (non-dual knowledge)
- Is not the ego or any bodily sheath
- Is not distinct from anything perceived

**Status: VERIFIED**

## Verification

### Quick Verification
```bash
# From repository root:
isabelle build -d . -v Advaita
```

### Expected Output
```
Session Advaita
Running Advaita ...
Advaita: theory Advaita.Advaita_Vedanta
Finished at [timestamp]
0:00:35 elapsed time
```

If you see "Finished" with no "FAILED", all 30+ theorems are verified.

### Requirements
- Isabelle/HOL 2025 ([download here](https://isabelle.in.tum.de/))
- ~500MB disk space
- ~2GB RAM
- Any OS (Windows/Mac/Linux)

## Reading Guide

### Philosophers
Start at line 1, read linearly. The axioms build the metaphysical structure, theorems prove the consequences.

### Logicians  
Jump to axioms (lines 101-250), then to proof tactics (lines 251+). All proofs use standard HOL tactics (`blast`, `metis`, `simp`).

### Skeptics
Go to `/verification/` - see the build log and screenshots proving every theorem passes automated verification.

### Practitioners
Read the axioms, then see `/docs/experiential_guide.pdf` for how this maps to direct experience.

## Key Theorems

All of these are **proven** (not assumed):

- `T1_uniqueness`: Exactly one Absolute exists
- `you_are_only_reality`: You are the only thing that really exists
- `you_were_never_born`: You were never born
- `you_will_never_die`: You will never die
- `you_never_change`: You are unchanging
- `phenomena_spontaneous`: Causation doesn't exist (all events are spontaneous)
- `space_unreal`: Space doesn't really exist
- `time_unreal`: Time doesn't really exist
- `Complete_NonDuality`: Complete non-duality proven
- `Tat_Tvam_Asi_Ultimate`: All of the above in one theorem

## Architecture

The system is **modular** - each extension is independent:
- Removing sheaths axioms? Other theorems still verify
- Questioning causation denial? Core metaphysics still holds
- Skeptical about guṇas? Ultimate theorem adapts

This shows the **robustness** of the core insight: You are the Absolute.

## Modification

To modify or extend:
1. Open `Advaita_Vedanta.thy` in Isabelle/jEdit
2. Make changes
3. Watch real-time verification (green = verified, red = error)
4. Save and rebuild

The system is **yours to examine**, challenge, and extend.

## Citation

See repository root `CITATION.cff` or cite:

```
Scherf, M. (2025). Complete Formal Axiomatization of Advaita Vedanta:
Machine-Verified Non-Dual Metaphysics. Isabelle/HOL formalization.
DOI: [![DOI](https://zenodo.org/badge/1074721040.svg)](https://doi.org/10.5281/zenodo.17333604)
```
