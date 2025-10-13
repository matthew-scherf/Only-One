## OnlyOne: A Formal Proof of Monistic Idealism in Lean 4
This repository contains a formal, computationally-verified proof of a monistic idealist ontology, developed in the Lean 4 proof assistant.

The system, OnlyOne.lean, begins with a set of self-evident axioms about the nature of experience and reality. From these axioms, it logically derives a series of profound theorems, demonstrating with deductive certainty that Awareness is singular, universal, and the sole underlying subject of all experience.

## Core Theses
The system provides formal proofs for the following core theorems:

T1: Unique Awareness: There exists one and only one Awareness. The concept of multiple, separate subjects is a logical contradiction.

T4: Only One: There is one Awareness, and everything else that exists—every thought, perception, sensation, and object—is necessarily the Content of that Awareness.

T5: You Are That: The "You" that is the subject of your experience is provably identical to the one, universal Awareness.

## Academic Paper & Source Code
A detailed exposition of the system, its axioms, theorems, and its far-reaching implications for philosophy, science, and ethics can be found in the full academic paper.

Read the Full Paper Here

View the Lean 4 Proof File

## Verification
The validity of the proofs in this system is not a matter of opinion; it is guaranteed by the Lean 4 proof assistant. You can verify the entire logical chain yourself.

## Prerequisites:

Install Lean 4 and Lake

## Instructions:

Clone the repository:

git clone [https://github.com/matthew-scherf/Only-One.git](https://github.com/matthew-scherf/Only-One.git)
cd Only-One

Build the project and verify the proofs:

lake build

If the process completes without errors, the theorems are proven.

## The Axiomatic System
The strength of the proof rests on the plausibility of its foundational axioms. Each axiom is intended to be a self-evident truth about the nature of experience, accessible through direct introspection. The debate, if there is one, is not about the proofs, but about these starting assumptions.

## Foundational Predicates
Obj: The universe of all existing entities.

A(x): x is Awareness (the subject, the witness).

C(x): x is Content (any object of experience: a thought, sight, feeling).

E(x): x is an Experience (a holistic field of phenomenal presence).

## The Axioms
Axiom 1: ∃ y, E y

Justification: Experience is happening. This is the bedrock, undeniable truth.

Axiom 2a: ∀ c, C c → ∃ y, E y ∧ Ap c y

Justification: All Content appears in an experience. A thought cannot exist without being thought; a sight cannot exist without being seen.

Axiom 2b: ∀ y, E y → ∃ a, A a ∧ Cond a y

Justification: All experience is conditioned by Awareness. Experience implies a witness; phenomena imply a field of presence in which they appear.

Axiom 3: ∀ a, A a → ¬ C a

Justification: Awareness is not Content. The subject can never be the object. The screen is not the images projected upon it. Awareness is the context, not a thing within the context.

Axiom 4 (Time, Space, Qualia): ∀ x, InTime x → C x (etc.)

Justification: Anything with phenomenal attributes is Content. If an object can be located in time, situated in space, or described with qualities (color, sound, texture), it is an object of perception and therefore Content.

Axiom 5: ∀ u v, u ≠ v → ∃ P, P u ∧ ¬ P v

Justification: Leibniz's Law (The Identity of Indiscernibles). If two objects are truly distinct, there must be some property to tell them apart.

Axiom 6 & 6': (P u ∧ ¬ P v) ↔ Admissible P and Admissible P → ...

Justification: Any real, distinguishing property is a phenomenal (modal) attribute. The only way we can fundamentally distinguish between objects is by their properties as they appear: their location, duration, or qualities.

Axiom 7 (You): ∃ u0, You u0 ∧ ... and ∀ x, You x → A x

Justification: There is a unique, singular referent for "I," and this fundamental sense of self is Awareness itself, not the body or mind (which are Content).

Axiom 8: ∀ x, A x ∨ C x

Justification: The foundational ontological dichotomy. Everything that exists is either the Awareness to which things appear, or the Content that appears. There is no third category.

## The Argument in Brief
The central proof for the uniqueness of Awareness (T1) proceeds by reductio ad absurdum.

Assume for contradiction that two distinct Awarenesses, a1 and ``a2`, exist.

By Leibniz's Law (A5), there must be some property P that distinguishes them.

Our axioms state that any such distinguishing property must be rooted in phenomenal attributes like time, space, or qualia (A6).

Therefore, at least one of the Awarenesses must possess a phenomenal attribute.

But our axioms also state that anything with a phenomenal attribute is, by definition, Content (A4).

This leads to a contradiction, as a1 or a2 would be both Awareness and Content, which is forbidden by our most crucial axiom (A3: A a → ¬ C a).

The contradiction proves that the initial assumption—that two Awarenesses could exist—is false. Therefore, Awareness is singular.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

[![DOI](https://zenodo.org/badge/1074721040.svg)](https://doi.org/10.5281/zenodo.17333604)
