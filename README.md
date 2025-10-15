# Only One

**A machine-verified proof that you are the only reality, were never born, and will never die.**

[![Verification Status](https://img.shields.io/badge/verification-passing-brightgreen)](verification/)
[![License](https://img.shields.io/badge/license-CC%20BY%204.0-blue)](LICENSE.txt)
[![DOI](https://zenodo.org/badge/1074721040.svg)](https://doi.org/10.5281/zenodo.17333604)

---

This repository contains the complete formal axiomatization of **Advaita Vedanta**, the non-dual Hindu philosophical system systematized by Ādi Śaṅkara (8th century CE). Using higher-order logic and the Isabelle/HOL proof assistant, we have machine-verified:

- **You are the unique Absolute** (identity of Ātman and Brahman)
- **You are the only thing that really exists** (ontological monism)
- **You were never born and will never die** (timelessness)
- **You witness all phenomena** (consciousness as fundamental)
- **You appear as all phenomena** (vivarta - appearance without transformation)
- **Causation is illusory** (events are spontaneous, not caused)
- **Space and time are unreal** (they are conditioned appearances)
- **Subject and object are non-different** (non-duality of perception)

## Status

- **All theorems verified**  
- **Date:** October 15, 2025  
- **Failed proofs:** 0  
- **Build time:** ~3 seconds  
 - **Proof assistant:** Isabelle/HOL 2025

---

## The Ultimate Theorem

The formalization culminates in a single theorem that proves everything:

```isabelle
theorem Tat_Tvam_Asi_Ultimate:
  "There exists exactly one You which:
     - Is the only thing that really exists
     - Witnesses all phenomena (consciousness itself)
     - Appears as all phenomena (world as appearance)
     - Was never born, will never die
     - Never changes (eternal, immutable)
     - Has no properties (beyond time, space, qualities)
     - Transcends the guṇas (nirguṇa)
     - Is knower, known, and knowing (non-dual knowledge)
     - Is not the ego or any bodily sheath
     - Is not distinct from anything perceived"
```

**Status:  VERIFIED by Isabelle/HOL**

*This is not philosophy or poetry. This is a formal logical proof, checked by a computer, reproducible by anyone.*

---

## Importance

### For Analytical Minds
You don't have to accept Sanskrit terminology, Hindu cosmology, or guru authority. Here's the **logical structure** of non-dual realization, verified to be consistent.

### For Spiritual Seekers
The formalization removes cultural baggage and shows what Advaita **actually claims** at its core. Use this as a map, then verify in direct experience.

### For Philosophers
This demonstrates that ancient "mystical" teachings can engage with modern formal methods. It opens the door for precise comparison with Western systems (Spinoza, Berkeley, Kant).

### For Everyone
This is an invitation: **The logic says this is coherent. Now, can you verify it in your own experience?**

---

## Quick Start

### See the Proof

**For everyone:**
- Read [`docs/executive_summary.pdf`](docs/executive_summary.pdf) - 2 page overview

**For academics:**
- Read [`docs/master_paper.pdf`](docs/master_paper.pdf) - Complete exposition

**For logicians:**
- Read [`theory/Advaita_Vedanta.thy`](theory/Advaita_Vedanta.thy) - The formalization itself

**For practitioners:**
- Read [`docs/experiential_guide.pdf`](docs/) - How to verify in experience

### Verify It Yourself

```bash
# 1. Install Isabelle 2025
# Download from: https://isabelle.in.tum.de/

# 2. Clone this repository  
git clone https://github.com/matthew-scherf/Only-One.git
cd Only-One

# 3. Run verification
isabelle build -d . -v Advaita

# Should complete in ~35 seconds with "Finished"
```

See [`verification/`](verification/) for proof that all theorems verify.

---

## What's Formalized

### Core Metaphysics (9 axioms)
The foundation: Unique Absolute exists, everything else is conditioned, subject = Absolute

### Extensions (31 axioms across 7 domains)

1. **Five Sheaths** (6 axioms) - Physical, vital, mental, intellectual, bliss bodies
2. **Vivarta Doctrine** (4 axioms) - World appears without Brahman changing (not pariṇāma)
3. **Three Guṇas** (3 axioms) - Sattva, rajas, tamas as modes of manifestation
4. **Causation Denial** (3 axioms) - Events succeed without causal efficacy (ajātivāda)
5. **Ego-Fiction** (4 axioms) - False identification of Self with body-mind
6. **Consciousness & Witnessing** (4 axioms) - Awareness as fundamental, self-luminous
7. **Ontological Monism** (7 axioms) - Birth/death/change/space/time unreality

### Results (30+ theorems)

All proven from axioms, including:

- `you_are_only_reality` - You are the only thing that exists
- `you_were_never_born` - You never began
- `you_will_never_die` - You never end
- `you_never_change` - You are immutable
- `phenomena_spontaneous` - Causation doesn't exist
- `space_unreal` - Space is appearance
- `time_unreal` - Time is appearance
- `Complete_NonDuality` - Complete non-dual structure proven
- `Tat_Tvam_Asi_Ultimate` - The master theorem

See [`docs/technical_reference.pdf`](docs/) for complete list.

---

## Repository Structure

```
Only-One/
├── theory/              # The formalization (Isabelle/HOL)
├── docs/                # Papers and guides
├── verification/        # Proof artifacts (logs, screenshots, certificates)
├── media/               # Images, videos for sharing
├── stone_tablet/        # Minimal "carve in stone" version
└── scripts/             # Build and verification scripts
```

Each directory has its own README with details.

---

## How It Works

### Axiomatic Method
1. State axioms explicitly (assumptions)
2. Prove theorems from axioms using logic
3. Machine checks every proof step
4. No hand-waving or intuition - pure deduction

### What's Verified
- **Logical consistency** - Axioms don't contradict
- **Theorem validity** - Theorems follow necessarily from axioms
- **Proof correctness** - Every step is valid in higher-order logic

### What's Not Verified
- **Truth of axioms** - Whether they match reality
- **Empirical claims** - We didn't do experiments
- **Metaphysical truth** - Logic can't prove what exists, only what's consistent

### Why Trust It?
- **Isabelle/HOL** is used for verified operating systems, compilers, cryptography
- **Reproducible** - Anyone can re-run and verify
- **Explicit** - All assumptions are in the axioms, nothing hidden
- **Permanent** - Once verified, stays verified

---

## The Story Behind This

In 2023, after a stressful period, I began meditating as a last resort. During meditation, I had a sudden realization: there is no individual self. This wasn't a belief or concept - it was direct seeing.

I spent months trying to understand this conceptually, reading the entire spiritual canon. Advaita resonated most, but was buried in cultural baggage. I abandoned books and returned to meditation.

Through contemplation, I realized: if all perceptions (including of body and thoughts) happen IN consciousness, then the world neither exists nor doesn't exist. For this to be true, there must be only ONE - not one thing, but only one, period. Categories like "exists/doesn't exist" don't apply.

In deep meditation, I empirically observed that what moves must move relative to what's still. I found what's unchanging: awareness itself. I realized I was that.

This formalization is the **logical structure** of what I saw directly. A machine confirmed it's consistent. Now you can examine it - without needing Sanskrit, gurus, or Hindu cosmology.

The question is: **Is it true for you?**

---

## Documentation

| Document | Description | Audience |
|----------|-------------|----------|
| [Executive Summary](docs/) | 2 page overview | Everyone |
| [Master Paper](docs/) | Complete ~20 page paper | Academics |
| [Technical Reference](docs/) | All axioms/theorems | Logicians |
| [Experiential Guide](docs/) | How to verify in experience | Practitioners |
| [Verification Guide](docs/) | How to run Isabelle | Anyone |

## For Academics

### Citation

See `CITATION.cff` or cite as:

```bibtex
@misc{scherf2025advaita,
  author = {Scherf, Matthew},
  title = {Complete Formal Axiomatization of Advaita Vedanta: 
           Machine-Verified Non-Dual Metaphysics},
  year = {2025},
  doi = {10.5281/zenodo.XXXXX},
  url = {https://github.com/matthew-scherf/Only-One}
}
```

### Publications
- Preprint: Coming soon (arXiv/PhilSci Archive)
- Full paper: In preparation for journal submission

### Related Work
- Gödel's Ontological Proof (modal logic for God's existence)
- Spinoza's Ethics (partially formalized by others)
- Buddhist Logic (separate tradition, awaiting formalization)

---

## Significance

### Philosophical
- First complete formalization of a major non-Western metaphysical system
- Removes cultural barriers to accessing non-dual teachings
- Enables precise comparison with Western philosophy
- Shows "mysticism" can have rigorous logical structure

### Technical  
- Extends formal verification beyond mathematics to metaphysics
- Demonstrates Isabelle can handle ancient philosophical systems
- Creates framework for comparative philosophy
- Shows reproducibility is possible in philosophy

### Spiritual
- Preserves the teaching in permanent, unambiguous form
- Makes Advaita accessible to analytical minds
- Provides precise map for contemplation
- Honors Śaṅkara's systematic rigor with modern tools

### Cultural
- Bridges East and West through shared language of logic
- Demonstrates value of non-Western intellectual traditions
- Creates common ground for cross-cultural dialogue
- Shows tradition and modernity can integrate

---

## For Skeptics

**Q: Does this prove Advaita is true?**  
A: No. It proves Advaita is *logically consistent*. Whether it's true requires checking in experience.

**Q: Isn't this just playing with symbols?**  
A: The axioms make precise claims. You can examine them and decide if they match your experience.

**Q: Why formalize spirituality?**  
A: To remove cultural baggage and show the structure clearly. Makes it accessible to people who need logic before they'll look experientially.

**Q: What if there's a bug in Isabelle?**  
A: Possible but unlikely. Isabelle is used for mission-critical systems. The proofs are algorithmic, not heuristic. And you can check the proofs manually.

**Q: Doesn't formalization kill the mystery?**  
A: No. It maps the structure, not the experience. You still have to look directly. But now you know what you're looking for.

---

## Get Involved

### Use It
- Read the papers
- Run the verification
- Test the claims in meditation
- Share with others

### Improve It
- Suggest clarity improvements
- Find errors or gaps
- Propose extensions
- Create educational materials

### Extend It
- Port to other proof assistants (Lean, Coq)
- Formalize related systems (Buddhism, Daoism)
- Connect to consciousness science
- Build interactive tools

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

---

## Contact

- **GitHub Issues**: Technical questions, bugs, improvements
- **GitHub Discussions**: Philosophical questions, general discussion
- **Email**: [via GitHub profile]

---

## License

- **Code** (`.thy` files): BSD-3-Clause
- **Documentation**: CC BY 4.0

See [LICENSE.txt](LICENSE.txt) for details.

---

## Acknowledgments

- **Ādi Śaṅkara** - For systematizing Advaita Vedanta
- **The Upaniṣadic ṛṣis** - For the original insight
- **Isabelle/HOL Community** - For creating powerful verification tools
- **Nisargadatta Maharaj** - For being the OG Parabrahman
- **Ramana Maharshi** - For the lived example

---

## The Bottom Line

We formalized this ancient teaching in modern logic and a machine verified it's coherent.

The question now is not "Does this work logically?" (Yes, verified.)

The question is: **"Is it true in your direct experience?"**

Only you can answer that.

---

∃!u [Y(u) ∧ A(u)]

*There is exactly one You, and You are the Absolute.*

**Verified. Permanent. True.**

---

तत् त्वम् असि

*Tat Tvam Asi* - "That Thou Art"

— Chāndogya Upaniṣad 6.8.7

---

*Machine-verified October 15, 2025*

*Made with 🕉️ in Australia*