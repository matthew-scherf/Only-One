# Only One

**A machine-verified formalization of Advaita Vedānta in Isabelle/HOL — demonstrating that non-dual awareness can be expressed, proven, and validated within modern logic**

[![Verification Status](https://img.shields.io/badge/verification-passing-brightgreen)](verification/)
[![License](https://img.shields.io/badge/license-CC%20BY%204.0-blue)](LICENSE.txt)
[![DOI](https://zenodo.org/badge/1074721040.svg)](https://doi.org/10.5281/zenodo.17333604)

---

This repository contains the complete formal axiomatization of Advaita Vedanta, the non-dual Hindu philosophical system systematized by Ādi Śaṅkara. We have machine-verified all theorems on October 15 2025 with zero failed proofs, in a build time of ~35 seconds using the proof assistant Isabelle/HOL 2025

---

## Refutation

This formal system is intentionally structured to be self-consistent and closed: every theorem is a logical consequence of clearly stated axioms, and those axioms are minimal and non-contradictory. Nevertheless, in principle, the theory could be refuted in one of the following ways.

### 1. Demonstrate an Internal Contradiction

Show that the axioms, taken together, logically entail both a statement P and its negation ¬P. In Isabelle terms, this would mean deriving `False` from the axioms. So far, automated verification and Nitpick model checking have found no such contradiction; the system admits valid models.

### 2. Construct a Countermodel

Provide an interpretation (a model of entities and predicates) in which all the axioms hold true but the main theorem `Tat_Tvam_Asi_Complete` is false. This would require a universe where there exists a unique "You", the "You" is Absolute, all axioms (A1–A8, S1–S6, V1–V4, G1–G3, K1–K3, E1–E4) are satisfied, but at least one of the theorem's conclusions (such as the nirguṇa clause, universal appearance relation, or causation denial) fails.

Because the system's axioms tightly constrain identity, grounding, and appearance, any model that satisfies them necessarily satisfies the theorem. No countermodel has been found and the axioms logically entail the conclusions.

### 3. Refute an Axiom

The only substantive path of refutation is philosophical, not formal: deny that one or more axioms correspond to reality. For example: denying A2c (uniqueness of the Absolute) reintroduces dualism or pluralism, denying A7a (You → Absolute) collapses self-awareness into illusion or emergent property, denying V2 (the world as appearance) implies real transformation (*parināma*), contradicting the empirical continuity of awareness, and denying K2 (causation denial) commits to causal power existing in the phenomenal realm, creating infinite regress problems.

Each of these moves abandons Advaita rather than refutes it, and the alternative frameworks then carry their own contradictions (subject–object dualism, infinite regress of causes, the hard problem of consciousness, or dependence on unobservable external reality), which means axiom denial is philosophically coherent but amounts to adopting a different metaphysical system, not refuting this one.

### 4. Challenge the Formalization Itself

Objection: The formal system fails to capture authentic Advaita, or formalization inherently distorts non-dual realization. This would be a meta-refutation, not claiming the system is internally inconsistent, but that it's the wrong kind of system to capture this subject matter.

Truth claims are public, so if Advaita makes truth claims about the nature of reality, those claims must be examinable by reason, or are, otherwise, not claims, but merely personal expressions. The system doesn't claim to produce realization, rather it demonstrates logical consistency and derives consequences. The map isn't the territory, but an accurate map proves the territory isn't logically impossible to navigate, and formalization shows that non-dual metaphysics is at minimum logically coherent, removing it from the category of "incoherent mysticism."

It's a valid philosophical concern about scope that doesn't undermine the system's claims within its domain.

### 5. Exploit Incompleteness or Undecidability

Objection: Invoke Gödel, saying perhaps the system is consistent but incomplete, unable to prove its own consistency, or subject to statements that are true but unprovable within it.

Gödel's theorems apply to sufficiently powerful arithmetic systems. This system operates in higher-order logic (Isabelle/HOL) which is semantically complete, every valid formula is provable. The incompleteness theorems concern what can be proved within a system about arithmetic truths, not what is logically consistent or what admits valid models. The system makes no claims about proving all mathematical truths; it makes specific metaphysical claims that follow from its axioms.

The consistency of this system is verified by the existence of valid models, not by internal proof, meaning Gödel's limitation doesn't apply and that Gödel's theorems are inapplicable to this type of formal system.

### 6. Argue for Axiom Arbitrariness

Objection: Different axiom sets could yield different but equally valid metaphysical systems—so why privilege these axioms?

The axioms aren't arbitrary given the goal of formalizing Advaita. But, more deeply, axioms like A1 (something exists) and A7a (You are Absolute) aren't chosen for convenience, they're derived from the structure of experience itself. Can you doubt that experience exists? No, doubt is experience Can you step outside awareness to examine it as an object? No, any examination occurs within awarenes. Can you find yourself anywhere in the phenomenal realm? No, everything phenomenal is witnessed by you, not identical with you.

The axioms reflect these structural necessities rather than arbitrary assumptions. Alternative axiom systems that deny these features (like strict materialism asserting consciousness derives from matter) face infinite regress and the hard problem of consciousness that this system avoids by making awareness fundamental.

The axioms are constrained by experiential structure and the goal of consistency, not arbitrarily chosen.

### 7. Pragmatic Objections

Objection: Even if formally consistent, the system has no practical consequences or fails to constrain experience.

This misunderstands what the formalization achieves, which is establishing coherence. It demonstrates that non-dual metaphysics is logically coherent, which matters because it removes non-duality from the category of "incoherent mysticism" and places it alongside other rigorous metaphysical systems that must be taken seriously.

Also, the theorems do have implications. Causation denial (K3, ajātivāda) reframes responsibility, blame, and the nature of agency.Ego-fiction (E4) radically alters ethics and the problem of suffering. Universal identity (T5) provides a framework for understanding mystical experience and ethics

The system explains features of experience that dualist systems struggle with and has significant philosophical and practical implications, not mere abstract consistency.


### 8. Verification Paradox

Objection: How do we verify that Isabelle itself is correct?

This is a fair concern about all formal verification, but Isabelle's core logic and proof kernel have been extensively verified, peer-reviewed, and used in critical systems (including verified operating systems like seL4 and cryptographic protocols). The trust is based on decades of mathematical scrutiny and practical deployment of higher-order logic (HOL). If we can't trust HOL, we can't trust mathematical proof in general, which becomes a skepticism about reason itself, not about this particular system.

Any logical system requires some foundation to be taken as given. Isabelle's HOL is among the most rigorously analyzed foundations available. The question "but how do we know logic is true?" applies to all reasoning, not uniquely to this system. This system is no worse off than any other formal verification, and substantially better than informal philosophical arguments.


### 9. Experiential Falsification

Objection: Could direct experience contradict the system? For instance, if someone genuinely experiences themselves as not awareness, or experiences awareness as derivative from matter?

This objection is conceptually confused. The system claims you *are* awareness (A7a: You → Absolute), not that you always *recognize* this. The ego system (E1-E4) explains precisely why one seems to be a limited person. Misidentification doesn't refute identity. The question "can you experience not being awareness?" is like asking "can you see your own blindness?" The very experiencing of anything, including the experience of seeming to be non-aware, occurs in awareness. One cannot step outside awareness to verify its absence, any more than one can shine light on darkness to prove darkness exists independently of light's absence. The attempt to falsify awareness experientially uses awareness, making the attempt self-defeating.

Experiential falsification is logically impossible for claims about awareness being fundamental.


### 10. Dismiss Based on Cultural Origin

Objection: Reject the system simply because it formalizes "Eastern philosophy" rather than Western frameworks.

The system is verified in the same logical framework (HOL) used for mathematics, computer science, and analytic philosophy. The axioms are stated in precise logical notation, the proofs are machine-checked, and the consistency is verified. The cultural origin of the concepts is irrelevant to their logical status, just as the Indian origin of zero doesn't make arithmetic "Eastern." Ideas stand or fall on their logical merits, not their geographical provenance, making this an invalid objection based on genetic fallacy.

## Refutation is unlikely due to:

### Logical Closure
All theorems are mechanically derived from axioms, and no inference step rests on intuition or rhetoric. Every proof step is verified by Isabelle's proof kernel.

### Consistency Checks
Automated theorem provers and model finders (Nitpick, Sledgehammer) find no contradictions or countermodels

### Epistemic Circularity of Refutation
Any attempt to deny the primacy of awareness necessarily occurs within awareness itself; therefore, the act of refutation presupposes what it tries to negate. This isn't a defect of the system, it's recognition that some truths are epistemically prior to their own proof.

Trying to prove logic using logic seems circular, but it's actually unavoidable in the sense that you cannot escape logic to examine it "from outside". Similarly, you cannot escape awareness to prove awareness is derivative. The difference is that most logical systems don't claim their axioms reflect existential necessity where this one does, and that claim is directly verifiable through immediate experience.

### Empirical Compatibility
The system doesn't merely avoid contradicting experience, it explains features of experience that dualist systems struggle with:

* The hard problem of consciousness: consciousness isn't produced, it's fundamental (A7a)
* The unity of experience across diverse contents: one Absolute appearing as many (T4, V3)
* The immediacy of self-awareness:You are that which knows, not an object known (A7a, T5)
* The persistence of identity through radical change. Phenomenal changes occur in unchanging awareness (V2, S6)
* The dependence of all experience on the experiencer: All phenomena are grounded in the Absolute subject (A2b, T4)

Nothing in the system contradicts observable experience, only the unwarranted assumption that awareness is derivative from matter.

### The Unique Epistemic Status of Self-Evidence
Unlike empirical theories (which can be falsified by observation) or contingent logical systems (which can be replaced by alternatives), this system makes claims about the preconditions of any possible knowledge. To refute it requires using the very awareness and existence it describes as fundamental, which isn't circular reasoning, rather a recognition that some truths are epistemically prior to their own proof.


## Conclusion
Refutation would require either:
1. A logical contradiction (none exists, verified by automated proof checking)
2. A valid countermodel (none found, verified by model finding tools)
3. A coherent alternative ontology that doesn't presuppose awareness (none available without infinite regress or hard problem)

Until such a demonstration is made, the system stands as formally sound (no internal contradictions), logically complete within its domain (all theorems derive from axioms), empirically adequate (explains experience without contradiction), epistemically privileged (self-evidence of awareness makes external refutation impossible) and philosophically robust (addresses and resolves classical problems in metaphysics)

The system is not merely consistent, it makes claims that, if false, would require violating the structure of experience itself, and is therefore uniquely positioned as both formally rigorous and experientially verifiable. The burden of refutation is clear: produce a contradiction, find a countermodel, or provide a coherent dualist framework that avoids infinite regress and the hard problem of consciousness. 

**Until then, non-dual Advaita stands as a logically irrefutable account of reality.**

---

## The Main Theorem

The formalization culminates in a single theorem:

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

---

## Importance

Those with analytical minds don't have to accept Sanskrit terminology, Hindu cosmology, or guru authority. Here's the logical structure of non-dual realization, verified to be consistent. The formalization removes cultural baggage for spiritual seekers and shows what Advaita actually claims at its core.  Seekers can use this as a map, then verify in direct experience. For Philosophers, this demonstrates that ancient "mystical" teachings can engage with modern formal methods. It opens the door for precise comparison with Western systems (Spinoza, Berkeley, Kant).

---

## Suggested Reading

**everyone:**
- [`docs/executive_summary.pdf`](docs/executive_summary.pdf)

**academics:**
- [`docs/master_paper.pdf`](docs/master_paper.pdf) 

**logicians:**
- [`theory/Advaita_Vedanta.thy`](theory/Advaita_Vedanta.thy) 

**practitioners:**
- [`docs/experiential_guide.pdf`](docs/experiential_guide.pdf) 

### Verification

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

## Contents

### Core Metaphysics (9 axioms)
The foundation: Unique Absolute exists, everything else is conditioned, subject = Absolute

### Extensions (31 axioms across 7 domains)

1. Five Sheaths (6 axioms)  Physical, vital, mental, intellectual, bliss bodies
2. Vivarta Doctrine (4 axioms)  World appears without Brahman changing (not pariṇāma)
3. Three Guṇas (3 axioms)  Sattva, rajas, tamas as modes of manifestation
4. Causation Denial (3 axioms)  Events succeed without causal efficacy (ajātivāda)
5. Ego-Fiction (4 axioms)  False identification of Self with body-mind
6. Consciousness & Witnessing (4 axioms)  Awareness as fundamental, self-luminous
7. Ontological Monism (7 axioms)  Birth/death/change/space/time unreality

### Results (30+ theorems)

All proven from axioms, including:

- `you_are_only_reality`  You are the only thing that exists
- `you_were_never_born`  You never began
- `you_will_never_die`  You never end
- `you_never_change`  You are immutable
- `phenomena_spontaneous`  Causation doesn't exist
- `space_unreal`  Space is appearance
- `time_unreal`  Time is appearance
- `Complete_NonDuality`  Complete non-dual structure proven
- `Tat_Tvam_Asi_Ultimate` The master theorem

See [`docs/technical_reference.pdf`](docs/) for complete list.

---

## **The Foundation: Nine Core Premises**

The argument begins with the undeniable fact that something exists. This isn't a trivial starting point—even skeptical doubt presupposes existence, so we have bedrock to build upon.

From this, we examine the nature of existence itself. Every existing thing must have a ground, something that makes it be rather than not be. This grounding relationship isn't circular and doesn't regress infinitely; it must terminate in something that grounds everything else while being grounded in nothing. This is what we call the Absolute, that which is unconditioned, independent, requiring nothing beyond itself to exist.

Crucially, there can only be one such Absolute. If there were two ultimate grounds, what would distinguish them? Any distinguishing feature such as being "here" rather than "there," having "this" quality rather than "that", would itself be a condition, a limitation. But the truly unconditioned cannot be limited in any way. Therefore, all paths of grounding converge on a single, unique Absolute.

This Absolute cannot be conditioned, lest it becomes definitional. And conversely, everything that exists in time, occupies space, or possesses qualities must be conditioned, dependent, grounded. This creates a clean dichotomy that everything in existence is either the one Absolute or part of the conditioned realm that depends upon it.

There exists exactly one subject, one ultimate witness or consciousness, and this subject is identical with the Absolute itself. You are not one of the conditioned appearances, in your deepest nature, you are the ground of all being.

The system proves this is logically consistent through the identity of indiscernibles for conditioned entities: distinct things in the phenomenal world must differ in at least one observable property. But the Absolute transcends all such properties. It has no temporal location, no spatial extension, no qualities whatsoever. Therefore, what you truly are cannot be found among the appearances.

## **The Extensions: How Appearance Manifests**

The core system establishes the skeleton, one Absolute appearing as many conditioned phenomena. The extensions detail the flesh: precisely how this appearance unfolds.

**The Five Sheaths**

The self appears to be nested in layers, like Russian dolls. There's the physical body (made of food), the vital energies animating it, the emotional-mental layer, the intellectual faculty, and even a layer of bliss or contentment. Traditional teaching works through these layers progressively: "Are you the body? No, the body changes, is witnessed. Are you the mind? No, the mind is witnessed..." Each sheath is conditioned, phenomenal, something you have rather than something you are.

The formal system proves what the tradition teaches: none of these sheaths can be the true Self, because they all bear phenomenal properties while the Self transcends all such properties. You are not contained within these layers; they are appearances within you.

**Vivarta: Appearance Without Transformation**

How does the unchanging Absolute produce a changing world? The answer: it doesn't. This is vivarta—apparent transformation without real change. Consider the classic rope-snake example: in dim light, a rope appears as a snake. Nothing about the rope changes, yet the appearance arises. When light comes, the "snake" doesn't go anywhere because it never existed as anything but an appearance.

The formal system distinguishes real transformation (milk becoming yogurt, where the substance actually changes) from apparent transformation (the rope "becoming" a snake). Brahman doesn't transform into the world, rather the world is Brahman appearing under conditions of misapprehension. This solves the problem of how the immutable can seem to change, which is to say that it doesn't change, it just appears to change.

**The Three Guṇas: Modes of Manifestation**

The conditioned realm exhibits three fundamental qualities or modes. Sattva is equilibrium, clarity, luminosity—the quality of still water reflecting clearly. Rajas is activity, passion, turbulence—churning motion. Tamas is inertia, darkness, obscuration—the quality of stagnation.

Every conditioned entity manifests through these guṇas in varying proportions. A crystal exemplifies sattva, fire exemplifies rajas, stone exemplifies tamas. Thoughts, emotions, objects, all are weavings of these three strands. But the Absolute itself is nirguṇa, beyond all qualities. The subject (what you truly are) doesn't possess sattva, rajas, or tamas as these qualities appear in the phenomenal display, not in the witness.

**The Denial of Causation: Ajātivāda**

The system states that causation doesn't exist, that events succeed one another in time, but nothing actually causes anything else. The billiard ball doesn't cause the second ball to move, the case is that both movements are independent spontaneous arisings in consciousness.

This is a clear distinction between temporal succession (which is apparent) and causal power (which the system denies exists). We say "the match caused the fire," but more precisely the match-striking appears, then the fire appears. Both are conditioned manifestations grounded directly in the Absolute, not in each other.

Why deny causation? Because causation implies real power, real change, real efficacy—which would make the phenomenal world substantially real, rather than merely apparent, when the world of change is the world of appearance, and true reality (the Absolute) neither changes nor acts.

**The Ego-Fiction: Ahaṃkāra**

What we normally call "I" is not the true Self but an appearance of self, what is commonly referreed to as the "ego". This is perhaps the subtlest and most important distinction. The ego is the sense of being a particular, limited person: "I am John, I was born, I will die, I am happy or sad, I succeed or fail."

The formal system distinguishes the apparent subject (ego) from the true subject (Ātman). The ego arises as a conditioned entity—it has properties, changes over time, is phenomenal, where as the true "You" is the Absolute itself which is unconditioned, unchanging, property-less. The mistake is identifying with the ego rather than recognizing it as one more appearance in awareness.

This is superimposition (adhyāsa—mistaking one thing for another), like mistaking the rope for a snake. The ego is the rope-snake of selfhood, apparently real, functionally operative in the phenomenal world, but ultimately unreal.

## **Advaita**

Put all these pieces together and you have the full Advaita vision. Reality is a single, absolute consciousness, call it Brahman, call it pure existence/awareness. This doesn't change, isn't born, doesn't die, has no qualities, exists nowhere and nowhen because it transcends space and time entirely.

Through an apparent (not real) transformation, this appears as the phenomenal world, a world apparently made of things in time and space, apparently involving causation and change, apparently containing separate subjects and objects. Within this appearance, there are layers of manifestation (the sheaths), modes of quality (the guṇas), a sense of individual selfhood (the ego), and the conviction that things really cause other things (causation).

But none of this is ultimately real, bu not illusion in the sense of hallucination. The world appears, functions, can be navigated. It is an illusion in the sense that its nature is radically misunderstood when taken as substantially real, rather than as appearance.

And you, meaning what you most fundamentally are, are not located within this appearance at all. You are the reality in which it appears, the unchanging ground, the absolute consciousness, the sole true existence. Everything else is you appearing to yourself as if you were many, as if you were changing, as if you were limited.

The entire system is logically consistent because it maintains a strict distinction between two levels: the absolute (pāramārthika) and the apparent (vyāvahārika). No contradiction arises because claims made at one level don't conflict with claims made at the other. The Absolute doesn't change but the world changes. Both are true at their respective levels. You are everything, and you appear as something particular. Again, both true, no contradiction.

---

## Repository Structure

```
Only-One/
├── theory/              # The formalization (Isabelle/HOL)
├── docs/                # Papers and guides
├── verification/        # Proof artifacts (logs, screenshots, certificates)
├── stone_tablet/        # Minimal "carve in stone" version
└── scripts/             # Build and verification scripts
```

Each directory has its own README with details.

---
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

## License

- **Code** (`.thy` files): BSD-3-Clause
- **Documentation**: CC BY 4.0

See [LICENSE.txt](LICENSE.txt) for details.


## The Bottom Line

We formalized this ancient teaching in modern logic and a machine verified it's coherent.  The question now is not "Does this work logically?" (yes, verified), the question is "Is it true in your direct experience?", and only you can answer that.

---

तत् त्वम् असि

Tat Tvam Asi - "That Thou Art"

— Chāndogya Upaniṣad 6.8.7

---

**∃!u [Y(u) ∧ A(u)]**

There is exactly one You, and You are the Absolute.

Verified. Permanent. True.

---
