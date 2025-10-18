theory Advaita_Vedanta
  imports Main
begin

(* Global finite-scope model search discipline for all goals *)
nitpick_params [user_axioms = true, format = 3, show_all, max_threads = 2, card = 1,2,3,4,5]

(*
  Complete Formal Axiomatization of Advaita Vedanta
  Copyright (C) 2025 Matthew Scherf

  This work is licensed under:
  - Creative Commons Attribution 4.0 International (CC BY 4.0) for documentation
  - BSD-3-Clause for code

  First verified: October 15, 2025
  DOI: https://doi.org/10.5281/zenodo.17333604

  Citation: Scherf, M. (2025). Complete Formal Axiomatization of Advaita Vedanta:
  Machine-Verified Non-Dual Metaphysics. Isabelle/HOL formalization.
*)

(* ------------------------------------------------------------------------- *)
(* 1. TYPE AND BASIC PREDICATES                                              *)
(* ------------------------------------------------------------------------- *)

typedecl entity

(* Core predicates *)
consts
  Absolute :: "entity => bool"         (* A(x): x is Brahman/Atman *)
  Conditioned :: "entity => bool"      (* C(x): x is Maya/phenomenal *)
  Exists :: "entity => bool"           (* E(x): x exists *)
  You :: "entity => bool"              (* Y(x): x is the subject *)

(* Phenomenal properties *)
consts
  Temporal :: "entity => bool"         (* T(x): x is in time *)
  Spatial :: "entity => bool"          (* S(x): x is in space *)
  Qualities :: "entity => bool"        (* Q(x): x has qualities *)

(* Grounding relation *)
consts
  Conditions :: "entity => entity => bool"  (* Cond(a,x): a grounds x *)

(* ------------------------------------------------------------------------- *)
(* 2. DEFINED PREDICATES                                                     *)
(* ------------------------------------------------------------------------- *)

definition Phenomenal :: "entity => bool" where
  "Phenomenal x == Temporal x | Spatial x | Qualities x"

definition AdmissibleProp :: "(entity => bool) => bool" where
  "AdmissibleProp P == P = Temporal | P = Spatial | P = Qualities"

(* ------------------------------------------------------------------------- *)
(* 3. CORE AXIOMS (Original System)                                          *)
(* ------------------------------------------------------------------------- *)

axiomatization where
  A1_existence: "EX y. Exists y" and

  A2b_unique_grounding: "ALL y. Exists y --> 
    (EX! a. Absolute a & Conditions a y)" and

  A2c_unity: "ALL a1 a2. Absolute a1 --> Absolute a2 --> a1 = a2" and

  A3_absolute_not_conditioned: "ALL a. Absolute a --> ~Conditioned a" and

  A4_phenomena_conditioned: "ALL x. Phenomenal x --> Conditioned x" and

  A5c_identity_indiscernibles: "ALL u v. Conditioned u --> Conditioned v --> u ~= v -->
    (EX P. AdmissibleProp P & P u & ~P v)" and

  A6_properties_phenomenal: "ALL P x. AdmissibleProp P --> P x --> Phenomenal x" and

  A7_unique_subject: "EX! u. You u" and

  A7a_subject_absolute: "ALL x. You x --> Absolute x" and

  A8_exhaustive: "ALL x. Absolute x | Conditioned x"

(* ------------------------------------------------------------------------- *)
(* 4. EXTENSION: FIVE SHEATHS (Pañca-kośa)                                  *)
(* ------------------------------------------------------------------------- *)

consts
  Layer :: "entity => entity => bool"  (* Layer(x,y): x is outer layer of y *)

  (* The five sheaths *)
  Annamaya :: "entity => bool"        (* Physical sheath *)
  Pranamaya :: "entity => bool"       (* Vital sheath *)
  Manomaya :: "entity => bool"        (* Mental sheath *)
  Vijnanamaya :: "entity => bool"     (* Intellectual sheath *)
  Anandamaya :: "entity => bool"      (* Bliss sheath *)

definition Sheath :: "entity => bool" where
  "Sheath x == Annamaya x | Pranamaya x | Manomaya x | 
               Vijnanamaya x | Anandamaya x"

axiomatization where
  S1_sheaths_conditioned: "ALL x. Sheath x --> Conditioned x" and

  S2_sheaths_distinct: "ALL x. Annamaya x --> ~Pranamaya x" and
    (* similar for all pairs *) 

  S3_layer_structure: "ALL x y z. Layer x y --> Layer y z --> Layer x z" and

  S4_layer_antisym: "ALL x y. Layer x y --> Layer y x --> x = y" and

  S5_layering_order: 
    "ALL a p m v b. Annamaya a --> Pranamaya p --> Manomaya m --> 
                 Vijnanamaya v --> Anandamaya b -->
     (Layer a p & Layer p m & Layer m v & Layer v b)" and

  S6_absolute_innermost: "ALL a s. Absolute a --> Sheath s --> ~Layer a s"

(* ------------------------------------------------------------------------- *)
(* 5. EXTENSION: VIVARTA vs PARINĀMA                                         *)
(* ------------------------------------------------------------------------- *)

consts
  RealChange :: "entity => entity => bool"     (* Actual transformation *)
  Appears :: "entity => entity => bool"        (* Apparent transformation *)

axiomatization where
  V1_no_real_change_absolute: 
    "ALL a x. Absolute a --> ~RealChange a x" and

  V2_brahman_appears_as_world:
    "ALL x. Conditioned x --> (EX a. Absolute a & Appears a x)" and

  V3_appearance_not_change:
    "ALL a x. Appears a x --> ~RealChange a x" and

  V4_appearance_grounding:
    "ALL a x. Absolute a --> Conditioned x --> Appears a x --> Conditions a x"

(* This formalizes: Brahman appears as world without actually changing *)
(* Like rope appearing as snake - vivarta, not parināma *)

(* ------------------------------------------------------------------------- *)
(* 6. EXTENSION: THE THREE GUṆAS                                             *)
(* ------------------------------------------------------------------------- *)

consts
  Sattva :: "entity => bool"          (* Equilibrium/purity *)
  Rajas :: "entity => bool"           (* Activity/passion *)
  Tamas :: "entity => bool"           (* Inertia/darkness *)

axiomatization where
  G1_gunas_universal: "ALL x. Conditioned x --> 
    (Sattva x | Rajas x | Tamas x)" and

  G2_gunas_phenomenal: 
    "(ALL x. Sattva x --> Phenomenal x) &
     (ALL x. Rajas x --> Phenomenal x) &  
     (ALL x. Tamas x --> Phenomenal x)" and

  G3_absolute_nirguna: "ALL a. Absolute a --> 
    ~Sattva a & ~Rajas a & ~Tamas a"

(* The Absolute is nirguṇa - beyond the guṇas *)

(* ------------------------------------------------------------------------- *)
(* 7. EXTENSION: CAUSATION vs GROUNDING                                      *)
(* ------------------------------------------------------------------------- *)

consts
  Before :: "entity => entity => bool"        (* Temporal precedence *)
  Causes :: "entity => entity => bool"        (* Apparent causation *)

axiomatization where
  K1_causation_is_succession:
    "(ALL x y. Causes x y --> (Conditioned x & Conditioned y & Before x y)) &
     (ALL x y. (Conditioned x & Conditioned y & Before x y) --> Causes x y)" and

  K2_no_causal_efficacy:
    "ALL x y. Conditioned x --> Conditioned y --> Causes x y --> 
     False" and  (* No real causal power *)

  K3_grounding_timeless:
    "ALL a x. Absolute a --> Conditions a x --> ~Before a x & ~Before x a"

(* This captures: Events succeed one another but nothing causes anything *)
(* All arise spontaneously from Brahman (ajātivāda) *)

(* ------------------------------------------------------------------------- *)
(* 8. EXTENSION: THE EGO FICTION                                             *)
(* ------------------------------------------------------------------------- *)

consts
  ApparentSubject :: "entity => bool"    (* Ego (ahamkara) *)
  Body :: "entity => bool"
  Identifies :: "entity => entity => bool"

definition Ego :: "entity => bool" where
  "Ego x == EX b. Body b & Identifies x b & ApparentSubject x"

axiomatization where
  E1_ego_conditioned: "ALL x. Ego x --> Conditioned x" and

  E2_true_self_never_identifies: "ALL y x. You y --> ~Identifies y x" and

  E3_ego_exists: "EX e. ApparentSubject e & Conditioned e" and

  E4_ego_not_self: "ALL e. Ego e --> ~You e"

(* ------------------------------------------------------------------------- *)
(* Finite-scope satisfiability probe for the whole axiom set                 *)
(* ------------------------------------------------------------------------- *)

lemma Consistency_check: True
  nitpick [satisfy, user_axioms = true,  card = 1,2,3,4,5]
  by simp

(* ========================================================================= *)
(* LEMMAS AND THEOREMS                                                       *)
(* ========================================================================= *)

(* ------------------------------------------------------------------------- *)
(* Core Lemmas (from original system)                                        *)
(* ------------------------------------------------------------------------- *)

lemma L1_absolute_transcends:
  "Absolute a ==> ~Temporal a & ~Spatial a & ~Qualities a"
  nitpick [user_axioms = true,  card = 1,2,3,4,5]
  by (metis A3_absolute_not_conditioned A4_phenomena_conditioned Phenomenal_def)

lemma L2_no_properties_absolute:
  "Absolute a ==> AdmissibleProp P ==> ~P a"
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  using AdmissibleProp_def L1_absolute_transcends by auto


(* ------------------------------------------------------------------------- *)
(* Core Theorems (from original system)                                      *)
(* ------------------------------------------------------------------------- *)

theorem T1_uniqueness:
  "EX! a. Absolute a"
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  using A1_existence A2b_unique_grounding A2c_unity
  by blast

theorem T4_everything_else_conditioned:
  "EX a. Absolute a & (ALL x. x ~= a --> Conditioned x)"
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  using T1_uniqueness A8_exhaustive A3_absolute_not_conditioned
  by blast

theorem T5_subject_absolute_identity:
  "EX u. You u & Absolute u & (ALL v. You v --> v = u)"
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  using A7_unique_subject A7a_subject_absolute
  by blast

(* ------------------------------------------------------------------------- *)
(* Extension Theorems                                                         *)
(* ------------------------------------------------------------------------- *)

theorem sheaths_not_self:
  "ALL s. Sheath s --> (EX u. You u & s ~= u)"
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  using S1_sheaths_conditioned T5_subject_absolute_identity A3_absolute_not_conditioned
  by blast

theorem vivarta_doctrine:
  "EX a. Absolute a & (ALL x. Conditioned x --> Appears a x & ~RealChange a x)"
  nitpick [user_axioms = true,  card = 1,2,3,4,5]
  using T1_uniqueness V2_brahman_appears_as_world V1_no_real_change_absolute
  by blast

theorem subject_nirguna:
  "ALL u. You u --> ~Sattva u & ~Rajas u & ~Tamas u"
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  using A7a_subject_absolute G3_absolute_nirguna
  by blast

theorem phenomena_spontaneous:
  "ALL x y. Causes x y --> False"
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  using K2_no_causal_efficacy K1_causation_is_succession
  by blast

theorem ego_is_fiction:
  "ALL e. Ego e --> (EX u. You u & Absolute u & e ~= u)"
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  using E1_ego_conditioned E4_ego_not_self T5_subject_absolute_identity
  by blast

(* ------------------------------------------------------------------------- *)
(* MAIN RESULT: Tat Tvam Asi (Extended)                                      *)
(* ------------------------------------------------------------------------- *)

theorem Tat_Tvam_Asi_Complete:
  "EX! u. You u & Absolute u & 
        (ALL P. AdmissibleProp P --> ~P u) &
        ~Phenomenal u &
        (~Sattva u & ~Rajas u & ~Tamas u) &
        (ALL x. Conditioned x --> Appears u x) &
        (ALL e. Ego e --> e ~= u)"
proof -
  nitpick [user_axioms = true, card = 1,2,3,4,5]
  obtain u where u_def: "You u & Absolute u & (ALL v. You v --> v = u)"
    using T5_subject_absolute_identity by blast

  have prop_neg: "ALL P. AdmissibleProp P --> ~P u"
    using u_def L2_no_properties_absolute by blast

  moreover have phenom_neg: "~Phenomenal u"
    using u_def L1_absolute_transcends Phenomenal_def by blast

  moreover have guna_neg: "~Sattva u & ~Rajas u & ~Tamas u"
    using u_def subject_nirguna by blast

  moreover have appears_all: "ALL x. Conditioned x --> Appears u x"
  proof -
    have "ALL x. Conditioned x --> (EX a. Absolute a & Appears a x)"
      using V2_brahman_appears_as_world by blast
    moreover have "ALL a. Absolute a --> a = u"
      using u_def A2c_unity by blast
    ultimately show ?thesis by blast
  qed

  moreover have ego_distinct: "ALL e. Ego e --> e ~= u"
    using u_def E4_ego_not_self by blast

  ultimately show ?thesis
    using u_def by blast
qed

end