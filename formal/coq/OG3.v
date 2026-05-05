From Stdlib Require Import List.
From Stdlib Require Import Bool.Bool.

Import ListNotations.
Open Scope bool_scope.

(* A compact mechanization of the finite witness library used in OG-III.
   Cryptographic primitives are abstracted as finite verifier facts. *)

Inductive atom : Set :=
| SX
| SigmaA
| IA
| PAlpha
| FF
| RAuth
| CommitC
| PiZk
| FF0
| SigmaK
| IK
| AAlphaK
| RefNonMember.

Definition atom_eq_dec : forall x y : atom, {x = y} + {x <> y}.
Proof.
  decide equality.
Defined.

Definition mem_atom (a : atom) (xs : list atom) : bool :=
  if in_dec atom_eq_dec a xs then true else false.

Definition any_in (xs ys : list atom) : bool :=
  existsb (fun a => mem_atom a ys) xs.

Record ledger : Set := Ledger {
  carried : list atom;
  declared : list atom;
  blocked : list atom;
  refuted : list atom
}.

Record obligation : Set := Obligation {
  required : list atom;
  alternatives : list (list atom)
}.

Inductive sat : Set :=
| Yes
| No
| Partial
| AuthorityBlockedSat.

Inductive status : Set :=
| Supported
| Underdetermined
| AuthorityBlocked.

Definition discharged (L : ledger) (a : atom) : bool :=
  mem_atom a (carried L).

Definition all_discharged (L : ledger) (xs : list atom) : bool :=
  forallb (fun a => discharged L a) xs.

Definition some_alternative_discharged (L : ledger) (O : obligation) : bool :=
  existsb (fun alt => all_discharged L alt) (alternatives O).

Definition blocked_required (L : ledger) (O : obligation) : bool :=
  any_in (required O) (blocked L).

Definition partial_required (L : ledger) (O : obligation) : bool :=
  existsb (fun a => discharged L a || mem_atom a (declared L)) (required O).

Definition satisfy (L : ledger) (O : obligation) : sat :=
  if some_alternative_discharged L O then Yes
  else if blocked_required L O then AuthorityBlockedSat
  else if partial_required L O then Partial
  else No.

Definition admit (L : ledger) (O : obligation) : status :=
  match satisfy L O with
  | Yes => Supported
  | AuthorityBlockedSat => AuthorityBlocked
  | Partial => Underdetermined
  | No => Underdetermined
  end.

Definition unmet (L : ledger) (O : obligation) : list atom :=
  filter (fun a => negb (discharged L a)) (required O).

Definition debt (L : ledger) (O : obligation) (reported : status) : list atom :=
  match reported with
  | Supported => unmet L O
  | Underdetermined => []
  | AuthorityBlocked => []
  end.

Definition overreport (reported justified : status) : bool :=
  match justified, reported with
  | Underdetermined, Supported => true
  | AuthorityBlocked, Supported => true
  | _, _ => false
  end.

Definition auth_atoms : list atom := [SigmaA; IA; PAlpha; FF].

Definition O_auth : obligation :=
  Obligation
    auth_atoms
    [auth_atoms; [RAuth]].

Definition L_cert : ledger :=
  Ledger [SX; SigmaA; IA; PAlpha; FF] [] [] [].

Definition L_raw : ledger :=
  Ledger [SX] [] [] [].

Definition L_mediated : ledger :=
  Ledger [SX; RAuth] [] [] [].

Inductive visible_state : Set :=
| X.

Record packet : Set := Packet {
  visible : visible_state;
  support : ledger
}.

Definition P_cert : packet := Packet X L_cert.
Definition P_raw : packet := Packet X L_raw.

Example witness_sensitivity :
  visible P_cert = visible P_raw /\
  admit L_cert O_auth = Supported /\
  admit L_raw O_auth = Underdetermined.
Proof.
  repeat split; reflexivity.
Qed.

Example mediated_support_translation :
  admit L_raw O_auth = Underdetermined /\
  admit L_mediated O_auth = Supported.
Proof.
  repeat split; reflexivity.
Qed.

Definition redacts_identity_signature (a : atom) : bool :=
  if atom_eq_dec a SigmaA then true
  else if atom_eq_dec a IA then true
  else false.

Definition T_r (L : ledger) : ledger :=
  if mem_atom RAuth (carried L)
  then L
  else Ledger (filter (fun a => negb (redacts_identity_signature a)) (carried L))
              (declared L)
              (blocked L)
              (refuted L).

Definition L_compressed : ledger :=
  Ledger [SX; RAuth] [] [] [].

Definition T_c (L : ledger) : ledger :=
  if mem_atom SigmaA (carried L) && mem_atom IA (carried L)
  then L_compressed
  else L.

Definition L_redacted_before_compress : ledger :=
  Ledger [SX; PAlpha; FF] [] [] [].

Example noncommutative_support_transport :
  T_r (T_c L_cert) = L_compressed /\
  T_c (T_r L_cert) = L_redacted_before_compress.
Proof.
  repeat split; reflexivity.
Qed.

Inductive crypt_surface : Set :=
| SealedPredicate
| FreshAtF
| FreshAtF0
| SignedAuthority.

Definition verify (_ : crypt_surface) : bool := true.

Definition verification_aperture (c : crypt_surface) : nat :=
  match c with
  | SealedPredicate => 1
  | _ => 1
  end.

Definition revelation_aperture (c : crypt_surface) : nat :=
  match c with
  | SealedPredicate => 0
  | _ => 1
  end.

Example verification_revelation_separation :
  verify SealedPredicate = true /\
  verification_aperture SealedPredicate = 1 /\
  revelation_aperture SealedPredicate = 0.
Proof.
  repeat split; reflexivity.
Qed.

Definition O_proof_admission : obligation :=
  Obligation [PAlpha] [[PAlpha]].

Definition L_wrong_binding : ledger :=
  Ledger [CommitC; PiZk] [] [] [].

Example validity_admissibility_separation :
  verify SealedPredicate = true /\
  admit L_wrong_binding O_proof_admission = Underdetermined.
Proof.
  repeat split; reflexivity.
Qed.

Definition O_fresh : obligation :=
  Obligation [FF] [[FF]].

Definition L_F : ledger :=
  Ledger [CommitC; PiZk; FF] [] [] [].

Definition L_F0 : ledger :=
  Ledger [CommitC; PiZk; FF0] [FF] [] [].

Example cryptographic_freshness_separation :
  verify FreshAtF = true /\
  verify FreshAtF0 = true /\
  satisfy L_F O_fresh = Yes /\
  satisfy L_F0 O_fresh = Partial.
Proof.
  repeat split; reflexivity.
Qed.

Definition O_authority : obligation :=
  Obligation [SigmaK; IK; AAlphaK] [[SigmaK; IK; AAlphaK]].

Definition L_blocked_authority : ledger :=
  Ledger [SigmaK; IK] [] [AAlphaK] [].

Example cryptographic_authority_separation :
  verify SignedAuthority = true /\
  admit L_blocked_authority O_authority = AuthorityBlocked.
Proof.
  repeat split; reflexivity.
Qed.

Definition L_holonomy : ledger :=
  Ledger [SX] [SigmaA; IA; PAlpha; FF] [] [].

Definition state_loop_closed (_ : ledger) : bool := true.

Definition witness_loop_closed (L : ledger) : bool :=
  all_discharged L auth_atoms.

Example nonzero_witness_holonomy :
  state_loop_closed L_holonomy = true /\
  witness_loop_closed L_holonomy = false.
Proof.
  repeat split; reflexivity.
Qed.

Example support_soundness_failure :
  admit L_raw O_auth = Underdetermined /\
  overreport Supported (admit L_raw O_auth) = true /\
  debt L_raw O_auth Supported = auth_atoms.
Proof.
  repeat split; reflexivity.
Qed.

Definition O_state : obligation :=
  Obligation [SX] [[SX]].

Definition L_refuted_authority : ledger :=
  Ledger [SX; SigmaK] [] [] [RefNonMember].

Example typed_false_report_separates_state_and_authority :
  admit L_refuted_authority O_state = Supported /\
  mem_atom RefNonMember (refuted L_refuted_authority) = true.
Proof.
  repeat split; reflexivity.
Qed.
