set_option autoImplicit true
set_option maxHeartbeats 400000

open Classical

/-!
Library-only root module `OnlyOne`.
Contains the axioms and theorems; `lake build` suffices to verify.
-/

/-- Core signatures and axioms (single-file library root `OnlyOne`). -/
axiom Obj : Type
axiom E   : Obj → Prop           -- experience
axiom C   : Obj → Prop           -- content
axiom A   : Obj → Prop           -- Awareness
axiom Ap  : Obj → Obj → Prop     -- appears-in
axiom Cond : Obj → Obj → Prop    -- is-condition-for
axiom InTime  : Obj → Prop
axiom InSpace : Obj → Prop
axiom Qual    : Obj → Prop
axiom You     : Obj → Prop
axiom Admissible : (Obj → Prop) → Prop

axiom A1 : ∃ y, E y
axiom A2a : ∀ c, C c → ∃ y, E y ∧ Ap c y
axiom A2b : ∀ y, E y → ∃ a, A a ∧ Cond a y
axiom A3  : ∀ a, A a → ¬ C a
axiom A4_time  : ∀ x, InTime  x → C x
axiom A4_space : ∀ x, InSpace x → C x
axiom A4_qual  : ∀ x, Qual    x → C x
axiom A5 : ∀ u v : Obj, u ≠ v → ∃ P : Obj → Prop, P u ∧ ¬ P v
axiom A6 : ∀ (P : Obj → Prop), Admissible P → ∀ x, P x → (InTime x ∨ InSpace x ∨ Qual x)
axiom A6' : ∀ {u v : Obj} {P : Obj → Prop}, (P u ∧ ¬ P v) → Admissible P
axiom A7_uniqueYou : ∃ u0, You u0 ∧ (∀ x, You x → x = u0)
axiom A7_youIsA    : ∀ x, You x → A x
axiom A8 : ∀ x, A x ∨ C x

/-- Awareness has no modal attributes. -/
lemma L1_no_attrs :
  ∀ a, A a → (¬ InTime a ∧ ¬ InSpace a ∧ ¬ Qual a) := by
  intro a ha
  have h1 : ¬ InTime a := by intro ht; exact (A3 a ha) (A4_time a ht)
  have h2 : ¬ InSpace a := by intro hs; exact (A3 a ha) (A4_space a hs)
  have h3 : ¬ Qual a := by intro hq; exact (A3 a ha) (A4_qual a hq)
  exact And.intro h1 (And.intro h2 h3)

/-- No admissible predicate can distinguish two Awarenesses. -/
lemma L3_no_admissible_distinguishes_awareness
  {a1 a2 : Obj} (hA1 : A a1) (hA2 : A a2) :
  ¬ ∃ P : Obj → Prop, Admissible P ∧ (P a1 ∧ ¬ P a2) := by
  intro h; rcases h with ⟨P, hAdm, ⟨hP1, _⟩⟩
  have hattr := A6 P hAdm a1 hP1
  rcases hattr with hT | hS | hQ
  · exact (L1_no_attrs a1 hA1).left hT
  · exact (L1_no_attrs a1 hA1).right.left hS
  · exact (L1_no_attrs a1 hA1).right.right hQ

/-- T1: Unique Awareness. -/
theorem T1_exists_unique_awareness :
  ∃ a0, A a0 ∧ (∀ a1, A a1 → a1 = a0) := by
  rcases A1 with ⟨y, Ey⟩
  rcases A2b y Ey with ⟨a0, hA0, _⟩
  refine ⟨a0, hA0, ?uniq⟩
  intro a1 hA1; by_contra hne
  rcases A5 a1 a0 hne with ⟨P, hP1, hnotP0⟩
  have hAdm : Admissible P := A6' ⟨hP1, hnotP0⟩
  exact L3_no_admissible_distinguishes_awareness hA1 hA0 ⟨P, hAdm, ⟨hP1, hnotP0⟩⟩

/-- T2: No attributes on Awareness. -/
theorem T2_no_attrs_on_awareness (a : Obj) (ha : A a) :
  ¬ InTime a ∧ ¬ InSpace a ∧ ¬ Qual a :=
  L1_no_attrs a ha

/-- T4: Only One (everything else is content). -/
theorem T4_only_one :
  ∃ a, A a ∧ (∀ x, x ≠ a → C x) := by
  rcases T1_exists_unique_awareness with ⟨a, hA, huniq⟩
  refine ⟨a, hA, ?all_else_content⟩
  intro x hneq
  cases A8 x with
  | inl hAx =>
      have : x = a := huniq x hAx
      exact False.elim (hneq this)
  | inr hCx => exact hCx

/-- T5: You are That. -/
theorem T5_you_are_that :
  ∃ u0, You u0 ∧ A u0 ∧ (∀ u, You u → u = u0) := by
  rcases A7_uniqueYou with ⟨u0, hYou0, hUniq⟩
  have hA0 : A u0 := A7_youIsA u0 hYou0
  exact ⟨u0, hYou0, hA0, (by intro u hu; exact hUniq u hu)⟩

  /-
  ------------------------------------------------------------
  BRIDGE AXIOMS: connecting everyday talk to "content" (modes)
  ------------------------------------------------------------
-/

-- "Perceived" (seen/heard/felt/etc.) items are contents.
constant Perceived : Obj → Prop
axiom A10_perception_is_content : ∀ x, Perceived x → C x

-- "BodyMode" marks proprioceptive/interoceptive presentations (posture, pain, heartbeat, etc.).
constant BodyMode : Obj → Prop
axiom A11_body_is_content : ∀ x, BodyMode x → C x

-- "ThoughtToken" marks judgments, narratives, inner speech/images, including "I"-tokens.
constant ThoughtToken : Obj → Prop
axiom A12_thought_is_content : ∀ x, ThoughtToken x → C x

-- "PersonAppearance" marks what we call another person (face/voice/behavior) as it appears to us,
-- including our inferences about their mind. This is about the appearance, not denying others.
constant PersonAppearance : Obj → Prop
axiom A13_person_is_content : ∀ x, PersonAppearance x → C x

/-
  ------------------------------------------------------------
  DERIVED PROPOSITIONS (non-dual corollaries)
  ------------------------------------------------------------
-/

-- World-in-consciousness: any perceived thing is a content; contents appear within experience.
-- We record the "is content" part (the appearance-in-some-experience is already A2a).
theorem P_world_in_consciousness : ∀ x, Perceived x → C x :=
  A10_perception_is_content

-- Body-as-mode: bodily presentations are contents (hence modal, not the subject/substance).
theorem P_body_is_mode : ∀ x, BodyMode x → C x :=
  A11_body_is_content

-- I-thought illusion (as subject): any I-token is a thought-content; the subject is Awareness,
-- not that token. We express this as: for any x that is a ThoughtToken, x is not identical
-- to the unique Awareness unless x is not a content. But ThoughtToken implies content, so
-- x cannot be that Awareness witness.
--
-- More formally: let a0 be the unique Awareness; then for any t, if ThoughtToken t then t ≠ a0.
theorem P_I_thought_is_not_subject :
  ∀ t, ThoughtToken t →
    (∀ a0, (A a0 ∧ (∀ a1, A a1 → a1 = a0)) → t ≠ a0) := by
  intro t ht a0 hAw
  rcases hAw with ⟨hA0, huniq⟩
  -- If t = a0 then since A a0 and A3: ¬ C a0, but ThoughtToken t → C t.
  intro hEq
  have Ct : C t := A12_thought_is_content t ht
  have : C a0 := by simpa [hEq] using Ct
  exact (A3 a0 hA0) this

-- Equivalently, packaged with your T1_exists_unique_awareness witness:
theorem P_I_thought_is_not_subject' :
  ∀ t, ThoughtToken t → (let w := Classical.choose T1_exists_unique_awareness in t ≠ w) := by
  intro t ht
  -- unpack the uniqueness of awareness
  rcases T1_exists_unique_awareness with ⟨a0, hA0, huniq⟩
  -- goal reduces to t ≠ a0
  dsimp
  -- same contradiction as above
  intro hEq
  have Ct : C t := A12_thought_is_content t ht
  have : C a0 := by simpa [hEq] using Ct
  exact (A3 a0 hA0) this

-- Shared source of apparent humans: any person-appearance is content (modal).
-- Since Awareness is unique (T1), there are many person-modes but one Awareness "behind".
-- We formulate: there exists a unique Awareness a0 such that every person-appearance is ≠ a0
-- and hence modal; thus all person-appearances "share" that same a0 as the non-modal basis.
theorem P_persons_share_same_source :
  ∃ a0, A a0 ∧ (∀ p, PersonAppearance p → p ≠ a0) := by
  rcases T1_exists_unique_awareness with ⟨a0, hA0, _⟩
  refine ⟨a0, hA0, ?allp⟩
  intro p hp
  -- If p = a0 then p would be Awareness; but PersonAppearance p → C p; A3 forbids C a0.
  intro hEq
  have Cp : C p := A13_person_is_content p hp
  have : C a0 := by simpa [hEq] using Cp
  exact (A3 a0 hA0) this

-- Ontological equivalence qua substance for heterogeneous items (cat, car, thought):
-- If x and y are contents (modes), they differ modally but share the same unique Awareness as substance.
-- We package a simple version: there exists a unique Awareness a0 such that for all contents c,
-- c ≠ a0. (Hence, qua substance, all contents are "the same" a0; they differ only as contents.)
theorem P_ontic_equivalence_qua_substance :
  ∃ a0, A a0 ∧ (∀ c, C c → c ≠ a0) := by
  rcases T1_exists_unique_awareness with ⟨a0, hA0, _⟩
  refine ⟨a0, hA0, ?allc⟩
  intro c hc
  intro hEq
  have : C a0 := by simpa [hEq] using hc
  exact (A3 a0 hA0) this
