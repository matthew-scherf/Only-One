theory Advaita_Vedanta
  imports Main
begin

(*
  Formal Axiomatization of Advaita Vedanta
  A logical system capturing the non-dual metaphysics of Advaita Vedanta
  
  Author: Matthew Scherf
  Date: October 2025
*)

section \<open>Domain and Predicates\<close>

typedecl entity  (* Domain of discourse *)

(* Core predicates *)
consts
  Absolute :: "entity \<Rightarrow> bool"      (* A: Unconditioned/Brahman *)
  Conditioned :: "entity \<Rightarrow> bool"   (* C: Conditioned/Maya *)
  Exists :: "entity \<Rightarrow> bool"        (* E: Exists *)
  You :: "entity \<Rightarrow> bool"           (* You: the reader/subject *)
  InTime :: "entity \<Rightarrow> bool"        (* Exists in time *)
  InSpace :: "entity \<Rightarrow> bool"       (* Exists in space *)
  HasQual :: "entity \<Rightarrow> bool"       (* Has qualities *)
  Conditions :: "entity \<Rightarrow> entity \<Rightarrow> bool"  (* Conditioning relation *)

(* Phenomenal: exists in time, space, or has qualities *)
definition Phenomenal :: "entity \<Rightarrow> bool" where
  "Phenomenal x \<equiv> InTime x \<or> InSpace x \<or> HasQual x"

(* Admissible properties *)
inductive AdmissibleProp :: "(entity \<Rightarrow> bool) \<Rightarrow> bool" where
  adm_time: "AdmissibleProp InTime" |
  adm_space: "AdmissibleProp InSpace" |
  adm_qual: "AdmissibleProp HasQual"

(* Property holds of entity *)
definition Holds :: "(entity \<Rightarrow> bool) \<Rightarrow> entity \<Rightarrow> bool" where
  "Holds P x \<equiv> P x"

section \<open>Axioms\<close>

(* A1: Something exists *)
axiomatization where
  A1: "\<exists>y. Exists y"

(* A2b: Every existent has exactly one absolute condition *)
(* A2c: ADDED - All absolutes are the same (ensures global uniqueness) *)
axiomatization where
  A2b: "\<forall>y. Exists y \<longrightarrow> (\<exists>!a. Absolute a \<and> Conditions a y)" and
  A2c: "\<forall>a1 a2. Absolute a1 \<longrightarrow> Absolute a2 \<longrightarrow> a1 = a2"

(* A3: The Absolute is not conditioned *)
axiomatization where
  A3: "\<forall>a. Absolute a \<longrightarrow> \<not>Conditioned a"

(* A4: All phenomena are conditioned *)
axiomatization where
  A4: "\<forall>x. Phenomenal x \<longrightarrow> Conditioned x"

(* A5c: Identity of Indiscernibles for conditioned entities *)
axiomatization where
  A5c: "\<forall>u v. Conditioned u \<longrightarrow> Conditioned v \<longrightarrow> u \<noteq> v \<longrightarrow>
         (\<exists>P. AdmissibleProp P \<and> Holds P u \<and> \<not>Holds P v)"

(* A6: Admissible properties only apply to phenomena *)
axiomatization where
  A6: "\<forall>P x. AdmissibleProp P \<longrightarrow> Holds P x \<longrightarrow> Phenomenal x"

(* A7: There is exactly one You *)
axiomatization where
  A7: "\<exists>!u. You u"

(* A7a: You are Absolute *)
axiomatization where
  A7a: "\<forall>x. You x \<longrightarrow> Absolute x"

(* A8: Exhaustive dichotomy *)
axiomatization where
  A8: "\<forall>x. Absolute x \<or> Conditioned x"

section \<open>Lemmas\<close>

(* L1: The Absolute is not in time, space, or qualified *)
lemma L1: "Absolute a \<Longrightarrow> \<not>InTime a \<and> \<not>InSpace a \<and> \<not>HasQual a"
proof -
  assume abs: "Absolute a"
  have "\<not>InTime a"
  proof
    assume "InTime a"
    then have "Phenomenal a" unfolding Phenomenal_def by simp
    then have "Conditioned a" using A4 by blast
    with abs show False using A3 by blast
  qed
  moreover have "\<not>InSpace a"
  proof
    assume "InSpace a"
    then have "Phenomenal a" unfolding Phenomenal_def by simp
    then have "Conditioned a" using A4 by blast
    with abs show False using A3 by blast
  qed
  moreover have "\<not>HasQual a"
  proof
    assume "HasQual a"
    then have "Phenomenal a" unfolding Phenomenal_def by simp
    then have "Conditioned a" using A4 by blast
    with abs show False using A3 by blast
  qed
  ultimately show ?thesis by simp
qed

(* L2: No admissible property holds of the Absolute *)
lemma L2: "\<lbrakk>Absolute a; AdmissibleProp P\<rbrakk> \<Longrightarrow> \<not>Holds P a"
proof -
  assume abs: "Absolute a" and adm: "AdmissibleProp P"
  show "\<not>Holds P a"
  proof
    assume "Holds P a"
    then have "Phenomenal a" using A6 adm by blast
    then have "Conditioned a" using A4 by blast
    with abs show False using A3 by blast
  qed
qed

section \<open>Main Theorems\<close>

(* T1: There exists exactly one Absolute - NOW TRIVIAL with A2c *)
theorem T1: "\<exists>!a. Absolute a"
proof -
  (* Existence *)
  obtain y where "Exists y" using A1 by blast
  then obtain a where "Absolute a" using A2b by blast
  
  (* Uniqueness - direct from A2c *)
  moreover have "\<forall>a'. Absolute a' \<longrightarrow> a' = a"
    using A2c calculation by blast
    
  ultimately show ?thesis by blast
qed

(* T4: There exists an Absolute, and everything else is Conditioned *)
theorem T4: "\<exists>a. Absolute a \<and> (\<forall>x. x \<noteq> a \<longrightarrow> Conditioned x)"
proof -
  obtain a where abs_a: "Absolute a" using T1 by blast
  have "\<forall>x. x \<noteq> a \<longrightarrow> Conditioned x"
  proof (intro allI impI)
    fix x
    assume "x \<noteq> a"
    show "Conditioned x"
    proof (cases "Absolute x")
      case True
      then have "x = a" using A2c abs_a by blast
      with \<open>x \<noteq> a\<close> show ?thesis by contradiction
    next
      case False
      then show ?thesis using A8 by blast
    qed
  qed
  with abs_a show ?thesis by blast
qed

(* T5: You are the unique Absolute *)
theorem T5: "\<exists>u. You u \<and> Absolute u \<and> (\<forall>v. You v \<longrightarrow> v = u)"
proof -
  obtain u where you_u: "You u" using A7 by blast
  then have abs_u: "Absolute u" using A7a by blast
  have unique: "\<forall>v. You v \<longrightarrow> v = u" using A7 you_u by blast
  show ?thesis using you_u abs_u unique by blast
qed

(* T6: Every existent has exactly one absolute condition *)
theorem T6: "\<forall>y. Exists y \<longrightarrow> (\<exists>!a. Absolute a \<and> Conditions a y)"
  using A2b by blast

section \<open>Core Result: Tat Tvam Asi (That Thou Art)\<close>

theorem tat_tvam_asi:
  "\<exists>u. You u \<and> Absolute u \<and> 
   (\<forall>v. You v \<longrightarrow> v = u) \<and>
   (\<forall>P. AdmissibleProp P \<longrightarrow> \<not>Holds P u)"
proof -
  obtain u where props: "You u \<and> Absolute u \<and> (\<forall>v. You v \<longrightarrow> v = u)"
    using T5 by blast
  moreover have "\<forall>P. AdmissibleProp P \<longrightarrow> \<not>Holds P u"
    using props L2 by blast
  ultimately show ?thesis by blast
qed

(* Additional characterization: The Absolute transcends all categories *)
theorem absolute_transcends:
  "Absolute a \<Longrightarrow> \<not>InTime a \<and> \<not>InSpace a \<and> \<not>HasQual a \<and> \<not>Phenomenal a"
  using L1 Phenomenal_def by blast

(* The You is beyond all phenomenal properties *)
theorem you_are_nirguna:
  "You u \<Longrightarrow> \<not>InTime u \<and> \<not>InSpace u \<and> \<not>HasQual u"
  using A7a L1 by blast

end