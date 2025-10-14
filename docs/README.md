# Documentation

This directory contains all human-readable documentation for the formalization.

## Quick Navigation

**Choose your entry point based on your goal:**

| I want to... | Read this |
|--------------|-----------|
| Understand quickly (5 min) | `executive_summary.pdf` |
| Full philosophical context (1 hour) | `master_paper.pdf` |
| See all axioms/theorems | `technical_reference.pdf` |
| Verify in my experience | `experiential_guide.pdf` |
| Run the verification myself | `verification_guide.pdf` |

## Files

### Primary Documents

**`master_paper.pdf`** (~20 pages)
- Complete exposition with philosophical context
- Your realization story and motivation
- Full technical explanation
- Implications and applications
- Citations and references

**Target audience:** Academics, serious students, anyone wanting the complete story

---

**`executive_summary.pdf`** (2 pages)
- What we proved
- How we proved it
- Why it matters
- How to verify

**Target audience:** Everyone - start here if unsure

---

**`technical_reference.pdf`** (4-6 pages)
- All 40+ axioms listed clearly
- All 30+ theorems with statements
- Proof sketch overview
- Quick reference card

**Target audience:** Logicians, people checking the formal details

---

### Guides

**`experiential_guide.pdf`** (4-6 pages)
- How the logic maps to direct experience
- Meditation instructions
- What to look for
- "When you see X, that's theorem Y"
- From conceptual to experiential

**Target audience:** Practitioners, meditators, those seeking realization

---

**`verification_guide.pdf`** (3-4 pages)
- Installing Isabelle
- Running the verification
- Reading the output
- Troubleshooting
- Step-by-step with screenshots

**Target audience:** People who want to verify the proofs themselves

---

## Status

| Document | Status | Last Updated |
|----------|--------|--------------|
| master_paper.pdf | 📝 In Progress | - |
| executive_summary.pdf | 📝 In Progress | - |
| technical_reference.pdf | 📝 In Progress | - |
| experiential_guide.pdf | 📝 In Progress | - |
| verification_guide.pdf | 📝 In Progress | - |

✅ = Complete
📝 = In Progress
⏳ = Planned

## Building from Source

LaTeX sources are included for all documents:

```bash
cd docs

# Build specific document
pdflatex master_paper.tex
bibtex master_paper
pdflatex master_paper.tex
pdflatex master_paper.tex

# Or use the build script
../scripts/build_docs.sh
```

## Document Design Philosophy

### Accessibility Without Dumbing Down
- Use clear language
- Explain technical terms
- Provide examples
- But maintain rigor - no hand-waving

### Multiple Entry Points
- Not everyone needs the same depth
- Provide clear signposting
- Link between documents

### Transmission Over Achievement
- Focus: helping people realize truth
- Not: showing off complexity
- Goal: reader understands and can verify

### Honesty About Limits
- We formalized the structure
- We didn't prove it's "true" of reality
- We showed it's logically consistent
- Verification requires direct experience

## Planned Additions (Future)

- **FAQ.pdf** - Common questions answered
- **Comparison with Buddhism.pdf** - Formal comparison with Madhyamaka
- **Comparison with Western Philosophy.pdf** - Berkeley, Spinoza, etc.
- **Applications to Consciousness Science.pdf** - IIT, GWT, etc.

## Contributing

If you find errors, unclear explanations, or have suggestions:
1. Open an issue on GitHub
2. Describe the problem
3. Suggest improvement

We especially welcome:
- Clarity improvements
- Better explanations
- Additional examples
- Translations to other languages

## Citation

When citing this work, refer to the master paper:

```
Scherf, M. (2025). Complete Formal Axiomatization of Advaita Vedanta:
Machine-Verified Non-Dual Metaphysics. [Master paper with full details]
```

Or cite the specific document if relevant.

## Languages

Currently available in:
- English

Translations welcome! Contact via GitHub if interested in translating.

---

*Documentation is a pointer, not the destination.*

*The formalization shows the structure.*

*Direct experience shows the truth.*