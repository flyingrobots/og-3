# OG-III: Path Geometry and Support Obligations
### Working subtitle: Witness Transport and Observer-Relative Claim Status

---

## Status Lock

Papers 1 and 2 are published. OG-III treats them as fixed public interfaces, not drafts to retrofit.

- **OG-I import:** structural observers, projection, basis, accumulation, aperture, degeneracy, insufficiency floors, bias gaps, and observer signatures.
- **OG-II import:** distributed observer fields, witnessed updates, policy-closed sites, suffix transport, certified confluence, and the central result that state convergence is not observer convergence.
- **OG-III move:** endpoint comparison is still insufficient. Claim support depends on the path by which the claim, witness, authority, and context are transported.

North-star thesis:

> Observer-relative truth is governed by path-sensitive transport of support obligations.

Operational thesis:

> A claim survives transport only when the path preserves, compresses, verifies, opens, or explicitly declares the loss, blocking, staleness, or redaction of the support required for that claim.

Guardrail:

> The underlying event may be invariant; the justified claim-status is not.

Style constraints:

- Keep the theory finite, discrete, and witness-based.
- Do not imply smooth observer manifolds, infinitesimal geometry, or differential connections.
- Use curvature/holonomy language only in the operational finite sense: path-dependent support transport and nonzero closed-path witness defect.
- Treat cryptography as a witness laboratory, not as the protagonist.
- Keep OG-III structural. OG-IV owns dishonesty, accountability, rights, and intentional misrepresentation.

---

## Core Contribution

OG-III gives Observer Geometry a finite calculus of claim-support transport.

The paper's formal engine is:

```text
claim + purpose + context
      -> support obligation
      -> observer path
      -> carried/compressed/redacted/blocked support
      -> observer-relative status
```

The main contribution is not merely "path geometry". Path geometry is the transport medium. The contribution is **support-obligation accounting over observer paths**.

Series ladder:

```text
OG-I:   observers are not interchangeable
OG-II:  state convergence is not observer convergence
OG-III: endpoint agreement is not support agreement
OG-III: support geometry is not necessarily flat
```

Each paper breaks one more assumption that distributed systems and audit systems often rely on implicitly.

Key objects:

- `phi`: claim.
- `P`: purpose or claim family.
- `ctx`: support context.
- `Obl_P(phi, ctx)`: support obligation required to responsibly report `phi` for purpose `P`.
- `Carry_gamma(phi, ctx)`: finite ledger of support carried, compressed, verified, opened, redacted, blocked, or lost along path `gamma`.
- `Unmet_gamma^P(phi, ctx)`: portion of the obligation not satisfied by carried/compressed/admissible support.
- `DeclaredLoss_gamma^P(phi, ctx)`: portion explicitly declared redacted, stale, blocked, unavailable, or intentionally withheld.
- `Debt_gamma^P(phi, ctx, Report)`: unmet support that the endpoint report treats as if it were satisfied.

Important distinction:

```text
unmet obligation != witness debt
```

If support is absent but explicitly declared absent, stale, redacted, blocked, or unavailable, the status should be downgraded. Debt appears when the report behaves as if the missing support had been carried or discharged.

---

## Cryptographic Role

Cryptography belongs in OG-III because cryptographic objects are finite witness surfaces that separate:

- commitment;
- verification;
- revelation;
- authority;
- freshness;
- admission.

Primitive roles:

| Primitive | OG-III role |
|---|---|
| Hash / Merkle root | Compact commitment to witness or history structure |
| Signature | Authorship, authority, and frontier binding |
| Commitment | Bound-but-hidden future decidability |
| Authenticated data structure | Portable membership, exclusion, or update witness |
| Vector/poly commitment / IPA | Compact relational witness over committed structure |
| ZK proof | Verification without payload revelation |
| Capability / encryption | Authority-gated revelation |
| Threshold signature | Collective authority or reintegration example |
| Transparency log | Anti-equivocation and frontier discipline |

Key crypto line:

> Raw cryptographic validity is not observer admissibility.

Preferred verification form:

```text
Verify(CryptSupp, ctx) = accept
Admit_S(CryptSupp, phi, P, ctx) = accept | reject | underdetermined | authority_blocked
```

Here `CryptSupp` includes the primitive-specific public inputs, statement encoding, parameters, transcript roots, commitments, signatures, metadata, and proof object required for verification. The `ctx` term records the observer-geometric support context.

Avoid context-free claims such as `Verify(proof)=accept`.

---

## Recommended Main Structure

## I. Endpoint Agreement Is Not Path Neutrality

Opening example:

- Two paths deliver the same final document to the same endpoint.
- Path `gamma_cert` carries a signed edit receipt.
- Path `gamma_raw` carries only final text.
- State claim: "the document says X" is supported along both paths.
- Provenance claim: "Alice authorised edit e" is supported along `gamma_cert` and underdetermined along `gamma_raw`.

Core sentence:

> Endpoint equality is not path neutrality.

Introduction goals:

- State the north-star thesis.
- Explain why OG-II's "state convergence is not observer convergence" leads directly to path-relative claim support.
- Promise finite constructions, finite witnesses, and no smooth geometry claims.
- State that false, unsupported, stale, blocked, or overstrong reports are treated structurally here; dishonesty belongs to OG-IV.

Math needed:

```text
gamma_cert, gamma_raw : S0 -> S1
pi_S1(gamma_cert(x)) = pi_S1(gamma_raw(x))
Val_gamma_cert^{P,ctx}(phi) != Val_gamma_raw^{P,ctx}(phi)
```

## II. Imported Interfaces From OG-I and OG-II

Keep this short. Do not re-teach the prior papers.

From OG-I:

- structural observer;
- projection;
- basis;
- accumulation;
- aperture;
- degeneracy;
- insufficiency;
- bias gap;
- observer signatures.

From OG-II:

- frontier-indexed replica observers;
- witness-bearing updates;
- transport;
- policy-closed sites;
- certified confluence;
- state convergence does not imply observer convergence.

Statement:

> OG-III treats OG-I and OG-II as fixed interfaces and studies how claims, support obligations, and witness surfaces move through observer paths.

Minimal imported glossary:

| Term | Source | Imported meaning | OG-III use |
|---|---|---|---|
| Observer | OG-I | Structured observer, not scalar point | Endpoint or node of support transport |
| Projection | OG-I | Visible state under observer aperture | Endpoint equality condition |
| Basis | OG-I | Representational coordinate frame | Claim/status interpretation |
| Accumulation | OG-I | Observer memory/update state | Source for `Extract(... M_S ...)` |
| Aperture | OG-I | What can be observed, retained, checked, or revealed | Support and revelation limits |
| Degeneracy | OG-I | Distinct histories collapse to same projection | Source of witness sensitivity |
| Insufficiency floor | OG-I | Irreducible missing information | Base case for underdetermination |
| Bias gap | OG-I | Structural misalignment in interpretation | Status/admission mismatch |
| Observer signature | OG-I | Observer-specific response profile | Path/status fingerprint |
| Replica observer | OG-II | Frontier-indexed distributed observer | Source of path/worldline examples |
| Witnessed update | OG-II | Update with retained support surface | Raw material for `Carry_gamma` |
| Frontier | OG-II | Causal, log, policy, or freshness boundary | Freshness and negative witnesses |
| Policy-closed site | OG-II | Local closure under policy frame | Authority/admission context |
| Suffix transport | OG-II | Transport of witnessed suffixes | Precursor to proof-carrying paths |
| State convergence | OG-II | Endpoint visible state agreement | Explicitly not support agreement |

Publication note:

- Cite the exact public OG-II version when drafting. If local files still show `0.9.0-rc.1`, verify final public metadata before bibliography work.

## III-A. Claims, Contexts, and Statuses

This section now comes before paths. A path cannot be judged adequate until the paper defines what the claim requires.

Definitions:

- `phi`: claim.
- `P`: purpose, task, or claim family.
- `ctx_base = (P, F, alpha, disclosure, expiry)`.
- `ctx_gamma = (ctx_base, gamma)` once a transport path is fixed.
- `F`: frontier, log root, causal boundary, policy epoch, or freshness boundary.
- `alpha`: authority or policy domain.
- `disclosure`: what is revealed, sealed, redacted, or authority-blocked.

Judgements:

```text
S ; Supp |-_{P,ctx} phi : status
gamma ; Carry |-_{P,ctx} phi : status
Val_S^{P,ctx}(phi) : status
Val_gamma^{P,ctx}(phi) : status
```

Avoid `Val_S(phi)` without purpose/context.

Refutation:

- Use `refutes(phi)` for typed contradiction or refutation support.
- For simple Boolean claims, `refutes(phi)` may be `not phi`.
- For authority, admissibility, freshness, liveness, or policy claims, refutation may be typed and should not be forced into Boolean negation.

Base statuses:

```text
supported
refuted
underdetermined
unverifiable
authority_blocked
```

Status modifiers:

```text
committed
stale
fresh_at(F)
context_mismatch
redacted
compressed
proof_valid
admission_failed
```

Notes:

- `committed` is not a sixth base status. It is a typed refinement of underdetermination:

```text
committed(c) ::= underdetermined and bound_for_future_opening(c)
```

- `authority_blocked` is not simply "less true" than `underdetermined`; it is a different failure mode.
- `stale` should remain distinct from `refuted`, `underdetermined`, and `authority_blocked`.

## III-B. Support Obligations and the Obligation Algebra

This section defines the support accounting layer after claims/statuses are introduced and before paths are judged.

Support bundles:

- Use `Supp_S(phi)` for ordinary support.
- Use `CryptSupp_S(phi)` or `CWit_S(phi)` for cryptographic support.
- Avoid `K_S(phi)` because OG-I already uses `K_S` in the structural observer tuple.

Support obligations:

```text
Obl_P(phi, ctx)
```

The obligation may require:

- state support;
- provenance support;
- intent support;
- authority support;
- witness or receipt support;
- negative witness;
- frontier/freshness evidence;
- verification interface;
- revelation/opening authority;
- admission policy.

Support ledger semantics:

```text
Carry_gamma(phi, ctx)
Unmet_gamma^P(phi, ctx)
DeclaredLoss_gamma^P(phi, ctx)
Debt_gamma^P(phi, ctx, Report)
```

- `Carry_gamma` is the path-indexed ledger of support entries that arrive, verify, compress, open, block, redact, or declare loss.
- `Unmet_gamma` is the part of the obligation not discharged by admissible carried support.
- `DeclaredLoss_gamma` is the part of the unmet obligation explicitly downgraded as lost, stale, blocked, unavailable, redacted, or withheld.
- `Debt_gamma` is the part of the unmet obligation that the endpoint report nevertheless treats as discharged.

This quartet is the paper's accounting core.

Relation to OG-I accumulation:

OG-III does not replace OG-I's accumulation state `M_S`. It adds a claim-indexed support view over accumulated observer memory and declared path evidence.

Let `M_{S1}^gamma` denote the endpoint observer's native accumulated memory after receiving object/update material along path `gamma`. Then:

```text
Carry_gamma(phi, ctx)
  = Extract_{S1}^{P,ctx}(phi, M_{S1}^gamma, PathCert(gamma, phi, P, ctx))
```

where `Extract` returns a finite support ledger containing:

- support retained in `M_{S1}^gamma`;
- support represented by admissible receipts, proofs, commitments, openings, or certificates;
- declared losses, redactions, blocked coordinates, stale frontiers, or unavailable support.

Thus `Carry_gamma` is not identical to `M_S`. It is a path-indexed, claim-purpose-context view of accumulated memory plus checkable path declarations. If no path certificate is available, `Extract` can only use the endpoint's native accumulation and any locally admissible support; missing path support remains missing rather than inferred.

Support atoms, optional finite algebra:

```text
a ::= state(x)
    | provenance(e)
    | intent(i)
    | authority(alpha)
    | membership(x,r)
    | nonmembership(x,r)
    | frontier(F)
    | freshness(F,t)
    | signature(sigma)
    | commitment(c)
    | opening(o)
    | proof(zeta)
    | capability(kappa)
    | redaction(reason)
    | policy(policy_id)
```

Evidence statuses:

```text
carried
compressed
verified
committed
opened
declared_redacted
authority_blocked
missing
stale
context_mismatch
```

Algebra discipline:

- Treat support ledgers as typed finite objects, not as unstructured bags.
- Independent support atoms at a fixed context may combine by commutative union.
- Dependent atoms should form a support DAG or ordered ledger because openings, signatures, frontiers, policy epochs, and context bindings can depend on one another.
- Transport composition is generally noncommutative:

```text
T_2 o T_1 != T_1 o T_2
```

- The order of mediators can therefore be a source of path dependence and witness holonomy.

Lemma candidate -- Noncommutative Support Transport:

There exist translators `T_1`, `T_2`, a claim `phi`, and a context `ctx` such that both composite paths are defined but:

```text
Carry_{T_2 o T_1}(phi, ctx) != Carry_{T_1 o T_2}(phi, ctx)
```

Example witness:

- `T_1` compresses a signed history into a receipt while retaining authority metadata.
- `T_2` redacts identity metadata under a disclosure policy.
- Compress-then-redact and redact-then-compress need not preserve the same authorship or authority support.

This is one finite mechanism behind Theorem 3 and Nonzero Witness Holonomy.

Caveats:

```text
caveat ::= stale(F)
         | authority_blocked(alpha)
         | redacted(reason)
         | context_mismatch(ctx, ctx')
         | partial(obligation_part)
         | compressed(coord_set)
         | unverifiable(interface)
```

Caveats make laundering finite and checkable rather than vibes-based.

This keeps obligations finite and avoids fake continuous geometry.

Claim-family table to draft:

| Claim family | Example claim | Typical obligation |
|---|---|---|
| State | "document says X" | state projection or current root |
| Provenance | "Alice authored edit e" | signed edit witness, identity binding, path certificate |
| Absence | "no revocation existed at F" | negative witness, frontier, log consistency |
| Authority | "update admitted under policy alpha" | authority metadata, policy epoch, signature or capability |
| Verification | "predicate P(x) verified" | proof, public inputs, context binding |
| Freshness | "state is current at F'" | frontier proof, consistency or freshness bound |
| Testimony | "L reported phi" | report provenance, speaker identity, utterance context, path from L to S |

Proposition -- Testimony/Object Claim Separation:

Let:

```text
psi_L(phi) = "L reported phi"
```

Then `Obl_P(psi_L(phi), ctx)` and `Obl_P(phi, ctx)` are generally distinct. An observer may be supported in asserting the testimony claim while underdetermined or refuted on the object claim:

```text
Just_S^P(psi_L(phi), ctx) = supported
Just_S^P(phi, ctx) != supported
```

This is a structural OG-III distinction, not yet a dishonesty judgement. It is the formal basis for the later OG-IV case where `S` reports honestly from testimony while the upstream reporter `L` overreported, lied, laundered, or fabricated support.

## IV. Observer Paths and Support Transport

Define paths after obligations.

Observer transport graph:

```text
G_obs = (Obj, Trans)
```

Objects are observers. Directed edges are admissible translators.

Path:

```text
gamma = T_n o ... o T_1
```

Path ledger:

```text
Carry_gamma(phi, ctx)
```

Typed entries may include:

- direct witness;
- compressed witness;
- commitment;
- proof;
- opening;
- negative witness;
- authority metadata;
- freshness/frontier evidence;
- redaction declaration;
- blocked or restricted support;
- path certificate.

Path certificate:

```text
PathCert(gamma, phi, P, ctx)
```

`PathCert` can be read two ways:

- Formal interface: a checkable certificate that the path carried, compressed, transformed, or declared loss for the support required by `Obl_P(phi, ctx)`.
- Engineering artifact: a receipt, header, manifest, or proof-carrying path object that a WARP/Echo-style system can validate.

The certificate explains how support was:

- carried;
- compressed;
- transformed;
- verified;
- opened;
- redacted;
- blocked;
- lost.

Path adequacy:

```text
Sat(Carry_gamma(phi, ctx), Obl_P(phi, ctx)) -> yes | no | partial | authority_blocked
```

Separate `Sat` from `Admit`:

- `Sat(Carry, Obl)` checks whether the support ledger structurally satisfies the obligation.
- `Admit_S(Supp, phi, P, ctx)` checks whether observer `S` accepts that support under its purpose, policy, authority domain, and aperture.

Useful failure patterns:

- `Sat = yes`, `Admit != accept`: structurally sufficient support exists, but the observer cannot or will not admit it.
- `Verify = accept`, `Sat != yes`: a proof verifies but does not satisfy the full support obligation.
- `Sat = partial`, `Report = supported`: witness debt / overreport.

Residual accounting:

```text
Unmet_gamma^P(phi, ctx)
DeclaredLoss_gamma^P(phi, ctx)
Debt_gamma^P(phi, ctx, Report)
```

Definitions:

- `Unmet`: obligation not satisfied by admissible carried/compressed support.
- `DeclaredLoss`: unmet support explicitly declared as redacted, stale, unavailable, blocked, or withheld.
- `Debt`: unmet support treated by the endpoint report as satisfied.

This is the OG-III to OG-IV bridge:

> Debt is structural. Dishonesty is reporting as if debt were discharged.

Proof-carrying path principle:

- A path can support a claim not merely by transporting evidence for `phi`, but by transporting evidence that the path itself preserved, compressed, or explicitly downgraded the relevant support obligation.

Proposition -- Path Certificate Adequacy:

`PathCertAdeq(gamma, phi, P, ctx)` holds when the certificate's carried, compressed, redacted, blocked, and lost entries are sufficient to check `Carry_gamma(phi, ctx)` against `Obl_P(phi, ctx)`.

The practical distinction:

- `gamma_cert` has a checkable certificate of support transformation.
- `gamma_raw` has no such certificate.

Mediation strategies:

- **Preservation:** support remains in a form admissible at the endpoint.
- **Format translation:** source support is transformed into a new receipt, proof, certificate, or support form that the endpoint admits.

Theorem 2 should use the second strategy explicitly: the mediator receives the same source material available at `S_sig` and translates signature/history support into an admissible receipt for `S_recv`.

## V. Witness Sensitivity and Path-Dependent Support Transport

Use one canonical finite witness family across several results.

Canonical observers:

- `S_sig`: text plus signed edit history.
- `S_log`: text plus edit log / receipt authority.
- `S_text`: final text only.
- `S_recv`: final text plus compact receipt.

Paths:

```text
gamma_raw  = S_sig -> S_text
gamma_cert = S_sig -> S_log -> S_recv
```

Claim:

```text
phi = "Alice authorised edit e"
```

Purpose:

```text
P = audit / authorship verification
```

Theorem 1 -- Witness Sensitivity:

There exist observers, support bundles, and claims such that equal projection does not determine equal support status.

Sketch:

```text
pi_S(O1) = pi_S(O2)
S ; Supp  |-_{P,ctx} phi : supported
S ; Supp' |-_{P,ctx} phi : underdetermined
```

Proof idea:

- Construct two histories with the same final text.
- One retains signed provenance.
- One retains final text only.
- The state claim is projection-visible.
- The authorship claim is witness-dependent.

Theorem 2 -- Mediated Support Translation / Improvement:

There exist observers `S0`, `M`, `S1`, a claim `phi`, and a purpose `P` such that a mediator receiving the same source material as the direct path can translate support into an endpoint-admissible form that direct transport loses or fails to provide.

Sketch:

```text
Val_{S0->S1}^{P,ctx}(phi) = underdetermined
Val_{S0->M->S1}^{P,ctx}(phi) = supported
```

Proof idea:

- Direct export sends final state only.
- Mediator receives source signature/history and converts it into an admissible receipt or path certificate.
- Same endpoint-visible document.
- Different support status for authorship.

Theorem 3 -- Path-Dependent Support Transport:

This is the flagship theorem.

There exist two observer paths with the same source, same target, and same endpoint visible state, but different justified statuses for the same claim.

Sketch:

```text
gamma_a, gamma_b : S0 -> S1
pi_S1(gamma_a(x)) = pi_S1(gamma_b(x))
Val_gamma_a^{P,ctx}(phi) != Val_gamma_b^{P,ctx}(phi)
```

Canonical instance:

```text
Val_gamma_cert^{P,ctx}(phi) = supported
Val_gamma_raw^{P,ctx}(phi)  = underdetermined
```

This is the paper's poster result. It turns snapshot equality into an audit question rather than a truth guarantee.

Drafting line:

> Snapshot-only systems are context graveyards: they preserve visible state while burying the path that made stronger claims admissible.

## VI. Cryptographic Witness Surfaces

Organize this section around the aperture quartet, not around protocols.

Aperture quartet:

```text
A_S(phi) = (A_obs, A_wit, A_ver, A_rev)
```

- `A_obs`: what can be directly inspected.
- `A_wit`: what evidence can be retained/requested.
- `A_ver`: what can be checked.
- `A_rev`: what can be learned/opened.

Support compression:

```text
Comp_P : Supp(phi) -> SuppCompressed(phi, P)
```

Partiality matters:

```text
Comp_P(Supp) supports phi for P
does not imply
Comp_Q(Supp) supports psi for Q
```

No injectivity or surjectivity is assumed. `Comp_P` is a purpose-labelled partial support replacement, not a reversible encoding unless a separate opening/reconstruction witness is carried.

Primitive roles:

- Merkle proof compresses membership, not authorship.
- Signature compresses authorship/authority under key context, not non-revocation.
- Commitment preserves future decidability, not present revealed support.
- IPA/vector or polynomial commitment gives compact relational support over committed structure.
- ZK proof supports predicate verification without revelation.
- Capability/encryption controls lawful revelation.
- Transparency log supports frontier discipline, anti-equivocation, and negative witnesses.

Context binding:

```text
ctx_base = (P, F, alpha, disclosure, expiry)
ctx_gamma = (ctx_base, gamma)
Verify(CryptSupp, ctx) = accept
Admit_S(CryptSupp, phi, P, ctx) = accept | reject | underdetermined | authority_blocked
```

Principle:

> A cryptographic proof supports an observer claim only inside the support context to which it is bound.

Theorem 4 -- Verification/Revelation Separation:

There exist cryptographic witness surfaces where:

```text
A_ver(S, phi) > 0
A_rev(S, phi) = 0
Verify(CryptSupp, ctx) = accept
```

The observer verifies a predicate while revelation remains bounded.

Proof idea:

- Use a commitment to hidden payload `x`.
- Provide a proof that predicate `P(x)` holds.
- Verifier checks the proof and public context.
- The payload remains outside revelation aperture.

Theorem 5 -- Validity/Admissibility Separation:

There exist cryptographic objects such that:

```text
Verify(CryptSupp, ctx) = accept
Admit_S(CryptSupp, phi, P, ctx) != accept
```

because policy, authority, frontier, purpose, or disclosure obligations are not satisfied.

Proof idea:

- A ZK proof establishes that some member of committee `C` approved update `u`.
- Observer `S` must know whether the signer belongs to a stricter authority domain for site `F`.
- The proof verifies cryptographically.
- The support bundle lacks policy/authority metadata required by `S`.
- Therefore observer admission fails or is authority-blocked.

Proposition -- Commitment Degeneracy Reduction:

A commitment can preserve future decidability while present projection remains degenerate. A valid opening reduces degeneracy without rewriting the original observer history.

Proposition -- Context-Bound Replay Failure:

A proof valid for one claim, purpose, path, or frontier need not support another.

Examples:

- A signature over final state is replayed as if it were a signature over authorial intent.
- A non-revocation proof at log root `r` is reused after later frontier `r'`.
- An IPA opening for `p(t)=v` is cited as support for a different evaluation or policy predicate.

## VII. Witness Holonomy, Freshness, and Negative Witnesses

Witness holonomy gives the paper geometric teeth without smooth geometry. OG-III does not assume a metric, tangent space, smooth manifold, or differential connection. It defines an operational finite analogue: closed observer transport may return to the same visible state while failing to return the same witness, provenance, authority, or freshness support.

Closed path:

```text
gamma : S -> S
```

Coordinate defect:

```text
Def_c(gamma, phi) in {0, partial, 1}
```

where:

- `0`: coordinate status preserved;
- `partial`: a specific typed subset of the coordinate obligation is unmet, caveated, weakened, stale, or frontier-shifted;
- `1`: coordinate support lost or materially changed.

The binary `{0,1}` version is the first approximation. Freshness/frontier examples may need the `partial` value.

Typed partiality:

```text
Def_c(gamma, phi) = partial
```

only when the defect points to a finite obligation component:

```text
Unmet_{gamma,c}^P(phi, ctx) != empty
Unmet_{gamma,c}^P(phi, ctx) != Obl_{P,c}(phi, ctx)
```

or to a named caveat such as `stale(F)`, `context_mismatch(ctx,ctx')`, `partial(authority)`, or `partial(freshness)`. `partial` should not be used as an untyped middle state.

Theorem 6 -- Nonzero Witness Holonomy:

There exists a closed observer path such that:

```text
Def_state(gamma, phi) = 0
Def_witness(gamma, phi) = 1
```

Endpoint state is restored; witness/provenance/authority support is not.

Interpretation:

```text
state loop closes
witness loop does not
```

This is the discrete support-transport analogue of holonomy: a coordinate carried around a loop returns changed. Here the coordinate is not a tangent vector but the support status of a claim under a purpose and context.

Examples:

- final state returns, provenance lost;
- root preserved, opening capability lost;
- commitment retained, proof stripped;
- policy epoch changes, proof becomes stale.

Negative witnesses:

```text
NegSupp_S(phi_abs; A, F, P)
```

An absence claim requires support relative to aperture `A`, frontier `F`, and purpose `P`.

Important line:

> "I did not see a conflict" is not "no conflict occurred."

Proposition -- Negative Witness Fragility:

Absence claims require negative witnesses relative to aperture and frontier.

Example:

```text
phi_abs = "key k was not revoked at signing time"
```

Support requires:

- log root/frontier;
- non-membership or non-revocation witness;
- consistency proof or freshness relation;
- authority domain;
- expiry/freshness bound.

Proposition -- Frontier/Freshness Shift:

Some support judgements are valid at one frontier and underdetermined, stale, or refuted at another.

## VIII. Support Soundness, Witness Debt, and False Reports Without Dishonesty

This section defines support failures structurally. It does not assign dishonesty, culpability, or accountability.

Philosophical boundary:

> OG-III does not ask whether a claim is metaphysically true in an inaccessible global history. It asks what status an observer may justify for that claim after a declared path has transported, compressed, withheld, blocked, or lost the support required by the claim's purpose.

Definitions:

```text
Just_S^P(phi, ctx)
Report_S^P(phi, ctx)
```

- `Just`: strongest status justified by admissible support.
- `Report`: status emitted by the observer or system.

Support soundness:

```text
SupportSound_S^P(phi, ctx)
```

holds when the report does not exceed justified admissible support.

Report-strength relation:

```text
status_1 <=_P status_2
```

means `status_2` authorizes at least as strong a report as `status_1` for purpose `P`.

Use this as a local preorder, not a total order or global lattice. Examples:

- `underdetermined <=_P supported`
- `unverifiable <=_P supported`
- `authority_blocked <=_P supported`
- `stale <=_P fresh_at(F')` only under a declared freshness relation.
- `underdetermined`, `unverifiable`, and `authority_blocked` need not be mutually comparable.

Pointwise support soundness:

```text
SupportSound_S^P(phi, ctx)
iff Report_S^P(phi, ctx) <=_P Just_S^P(phi, ctx)
```

Pathwise support soundness:

```text
SupportSound_P(gamma)
```

holds when, for all `phi` in purpose family `P`, endpoint reports do not exceed justified status from `Carry_gamma(phi, ctx)`.

Theorem 7 -- Support-Soundness Failure / Witness Debt:

There exist observer paths where:

```text
Report_S1^P(phi, ctx) = supported
Sat(Carry_gamma(phi, ctx), Obl_P(phi, ctx)) != yes
```

The endpoint report exceeds transported admissible support.

`Sat != yes` covers distinct structural cases:

- `no`: required support is absent or incompatible with the obligation.
- `partial`: required support is incomplete, caveated, stale, or only partly compressed/admissible.
- `authority_blocked`: support may exist or be committed, but the observer lacks lawful aperture or authority to inspect, reveal, or admit it.

Theorem 7 should pick one concrete witness for the proof, usually `partial` or `no`. The `authority_blocked` case is still a support-soundness failure if reported as `supported`, but it is not ordinary missing-support debt; it is better treated as blocked or suspended obligation unless the endpoint report erases the block.

Witness debt mechanism:

- `Unmet_gamma^P(phi, ctx)` records what support was not satisfied.
- `DeclaredLoss_gamma^P(phi, ctx)` records what was explicitly downgraded, redacted, blocked, stale, or withheld.
- `Debt_gamma^P(phi, ctx, Report)` records unmet support treated by the report as satisfied.

Overreport:

```text
OverReport_S^P(phi, ctx)
```

iff `Report_S^P(phi, ctx)` is strictly stronger than `Just_S^P(phi, ctx)` under the local report-strength preorder `<=_P`.

Support hallucination:

```text
Hallucinate_S^P(phi, ctx)
```

iff:

```text
Report_S^P(phi, ctx) = supported
Sat(Carry_gamma(phi, ctx), Obl_P(phi, ctx)) != yes
```

Relationship:

```text
Hallucinate_S^P(phi, ctx) subset OverReport_S^P(phi, ctx)
```

Hallucination is the supported-claim case of overreport: the observer reports `supported` while carried support fails the obligation. Not every overreport is a hallucination. For example, reporting `fresh_at(F')` when the justified status is merely `stale` is an overreport but not necessarily a hallucinated supported claim.

False report:

```text
FalseReport_S^P(phi, ctx)
```

iff:

```text
Report_S^P(phi, ctx) = supported
Just_S^P(refutes(phi), ctx) = supported
```

Here `refutes(phi)` is typed refutation support, not necessarily Boolean negation. For ordinary Boolean claims it may coincide with `not phi`; for authority, admissibility, freshness, liveness, or policy claims it should be defined by the relevant claim family.

Typed refutation example:

```text
phi_auth = "update u was admitted under policy alpha at epoch e"
```

Then `refutes(phi_auth)` may be supported by a policy contradiction witness:

```text
policy(alpha,e) requires signer k in committee C
signature(u,k) is the carried authority witness
nonmembership(k,C,e) is admitted at frontier F
```

This refutes the authority claim without treating `phi_auth` as a simple Boolean sentence. The refutation is a typed support bundle: policy rule, signer binding, committee frontier, and nonmembership witness.

Boundary statement:

> OG-III analyzes false, unsupported, stale, blocked, laundered, and overstrong reports as support-status mismatches. It does not yet assign dishonesty, culpability, or accountability. Those require reporting norms and an observer model of what was known, knowable, declared, withheld, or intentionally falsified; these are the subject of OG-IV.

Witness laundering:

```text
Launder_gamma(phi, ctx)
```

occurs when qualified, stale, partial, or authority-blocked support is transformed into an apparently unqualified report.

Checkable laundering condition:

- input support has nonempty caveat set `C`;
- output report omits relevant caveats in `C`;
- output report appears unqualified or stronger under `<=_P`.

Worked example:

- Source support says "verified at frontier `F`, signer hidden, revocation status checked only up to root `r`, opening authority blocked."
- Mediator emits "verified."
- Caveats vanish.
- This is not necessarily cryptographic forgery; it is semantic laundering of witness status.

Structural failure modes:

| Failure mode | OG-III status |
|---|---|
| Support absent | underdetermined / unverifiable |
| Support stale | stale modifier |
| Support exists but access is blocked | authority_blocked |
| Support compressed for wrong purpose | context_mismatch / underdetermined |
| Support redacted and declared | declared loss |
| Support redacted but caveat omitted | laundering / debt |
| Support fabricated | invalid witness / forged path certificate |
| Support contradicts claim | refuted |

Forgery note:

- `InvalidWitness`, `ForgedPathCert`, and `FabricatedSupport` are structural categories in OG-III.
- OG-IV handles culpability, fraud, and accountability for those categories.

Keep AI short:

- Define hallucination formally here.
- Put one AI example in engineering interpretation.
- Do not turn OG-III into an LLM hallucination essay.

## IX. Purpose-Indexed Equivalence and Robustness

Short section. Useful, but no longer a headline theorem.

Purpose-indexed equivalence:

```text
S ~=_P S'
```

iff for all `phi in P`, the observers agree on support status under the declared support class.

Proposition -- Purpose-Indexed Equivalence:

Equivalence for state claims does not imply equivalence for provenance, intent, authority, verification, or freshness claims.

Robustness:

```text
Robust_P(phi; S0, S1, Gamma)
```

iff all admissible paths in `Gamma(S0,S1)` preserve the relevant justified status.

Fragility:

```text
Fragile_P(phi; S0, S1, Gamma)
```

iff two admissible paths with the same endpoints induce different justified statuses.

## X. Engineering Interpretation

Strong line:

> Systems should not merely transport state; they should transport claim-support ledgers.

Engineering artifacts:

- obligation ledgers;
- context-bound receipts;
- path certificates;
- PathCert validators;
- claim passports;
- support compression registries;
- witness debt counters;
- freshness/frontier checks;
- authority-blocked status;
- laundering detectors.

Audit line:

> High witness debt is audit risk: the system has reports whose visible state survived farther than their admissible support.

Claim passport as engineering artifact, not core theory:

```text
Pass(phi) =
(phi, P, origin, gamma, Supp, CryptSupp, PathCert,
 Obl_P(phi, ctx), Carry_gamma(phi, ctx),
 alpha, frontier, disclosure, expiry, status)
```

Do not make passports mandatory formal infrastructure unless they simplify proofs.

Examples:

- stateless client validates state transition from compact witness;
- audit system verifies signed provenance receipt;
- proof service verifies predicate while payload remains sealed;
- context-bound receipt rejects replay at wrong frontier or purpose;
- PathCert validator checks whether a WARP/Echo-style packet carried, compressed, blocked, or declared loss for each required support coordinate;
- witness-debt counter flags state-only transport before provenance claims are made;
- AI answer cites unsupported provenance path.

## XI. Bridge to OG-IV

OG-III:

> What support exists, survives, verifies, is blocked, is stale, or is lost?

OG-IV:

> What did the observer claim about that support, and was that claim honest?

Core handoff:

```text
Debt_gamma^P(phi, ctx, Report) > 0
```

is structural.

Dishonesty begins when an observer reports as if that debt were discharged under a reporting obligation.

Important distinction:

- Error: report is wrong, but no intention implied.
- Hallucination / overreport: observer asserts support not transported.
- Laundering: mediator emits clean report hiding caveats.
- Lie / dishonesty: observer misrepresents claim or support status under a reporting obligation.

False claim versus false support claim:

- Lie about the world: report `phi` while admissible support justifies `refutes(phi)`.
- Lie about support: report "verified", "fresh", "authorised", or "admitted" when the support relation does not justify that status.

OG-IV thesis seed:

> A lie is not merely a false claim. In Observer Geometry, the deeper lie is a false claim about what the observer was entitled to claim.

Conclusion contrast to preserve:

```text
OG-III: what support exists, survives, verifies, is blocked, is stale, or is lost?
OG-IV: what did the observer claim about that support, and was that claim honest?
```

## Main Theorem Spine

Primary formal spine, in priority order:

- **Witness Sensitivity:** equal projection does not determine equal support status.
- **Path-Dependent Support Transport:** same source, same target, same endpoint visible state, different justified status.
- **Nonzero Witness Holonomy:** closed path restores state but not witness/provenance/authority support.
- **Validity/Admissibility Separation:** cryptographic validity does not imply observer admissibility.
- **Support-Soundness Failure / Witness Debt:** report exceeds transported admissible support.

Major supporting results:

- **Mediated Support Translation / Improvement:** a mediator can translate source support into an endpoint-admissible form that direct transport loses or fails to provide.
- **Verification/Revelation Separation:** verification aperture can be nonzero while revelation aperture is bounded.

Keep these two in the paper, but let the five-result spine carry the formal load.

Demoted to propositions, lemmas, or examples:

- Commitment Degeneracy Reduction.
- Purpose-Indexed Equivalence.
- Negative Witness Fragility.
- Frontier/Freshness Shift.
- Context-Bound Replay Failure.
- Support Compression Principle.
- Path Certificate Adequacy.
- Compact Relational Witness / IPA example.
- Witness Laundering Failure Mode.
- Status Report-Strength Preorder.

Proof discipline:

- Prefer finite constructions over abstract existence proofs.
- Use the signed-edit witness family for Theorems 1-3 when possible.
- Do not add a new canonical example for every theorem.
- Do not prove cryptographic security. Cite primitives and use them as witness-surface examples.
- Keep the status system tagged, not a forced lattice.
- Draft the local report-strength preorder before proving Theorem 7.

## Anti-Goals

- Do not retrofit OG-I or OG-II.
- Do not make OG-III a cryptography survey.
- Do not over-center IPA or Verkle.
- Do not treat `Verify(proof)=accept` as meaningful without context/public inputs.
- Do not collapse stale, blocked, underdetermined, unverifiable, and refuted.
- Do not let hallucination become an AI essay.
- Do not make claim passports mandatory formal infrastructure.
- Do not use smooth curvature/connection language unless explicitly qualified as finite/discrete analogy.
- Do not treat witness debt as moral failure. OG-IV handles honesty and accountability.
- Do not hard-code Boolean negation where `refutes(phi)` is the right typed notion.
- Do not use "honesty" language inside OG-III definitions; use declared loss, declared downgrade, or explicit redaction.

## Immediate Drafting Order

1. Draft the opening signed-edit example.
2. Draft OG-I/OG-II import interfaces briefly.
3. Draft claims, contexts, and statuses.
4. Draft support obligations and the obligation algebra.
5. Draft observer paths and support transport.
6. Draft Theorems 1-3 using the same finite witness family, with Theorem 2 explicitly using support translation.
7. Draft cryptographic witness surfaces around the aperture quartet.
8. Draft Theorems 4-6 and the demoted crypto propositions.
9. Draft witness holonomy, freshness, and negative witness section.
10. Draft the local report-strength preorder, then support soundness, witness debt, and false reports without dishonesty.
11. Draft engineering interpretation and OG-IV bridge.
12. Add figure captions/placeholders before polishing diagrams.
13. Move extra examples, glossary material, and proof details to appendices.

## Figure Plan

Use figures at conceptual hinge points. Keep captions precise; finished diagrams can come after prose stabilizes.

| Figure | Placement | Purpose |
|---|---|---|
| Fig. 1. Series ladder | Introduction / Core Contribution | Show the broken-assumption arc from OG-I through OG-IV |
| Fig. 2. Canonical two-path example | Introduction | Make endpoint equality vs support disagreement immediately visible |
| Fig. 3. Support accounting pipeline | III-B | Display `claim + purpose + context -> Obl -> Carry -> status` |
| Fig. 4. `M_S` to `Carry_gamma` extraction | III-B | Show `Carry_gamma` as claim-context view over accumulation plus `PathCert` |
| Fig. 5. Unmet / DeclaredLoss / Debt | IV or VIII | Separate legitimate downgrade from witness debt |
| Fig. 6. Witness holonomy loop | VII | Show state loop closes while witness loop does not |
| Fig. 7. Verify / Admit split | VI | Show cryptographic validity versus observer admissibility |

Caption stubs:

- **Fig. 1:** OG-I breaks observer interchangeability; OG-II breaks state/observer convergence; OG-III breaks endpoint/support agreement; OG-IV studies honest and dishonest support reporting.
- **Fig. 2:** `gamma_cert` and `gamma_raw` deliver the same final document to `S1`, but only `gamma_cert` carries enough support for the authorship claim.
- **Fig. 3:** Support status is produced by obligation accounting, not by endpoint state alone.
- **Fig. 4:** `Carry_gamma` is not `M_S`; it is extracted from endpoint accumulation plus checkable path declarations.
- **Fig. 5:** Unmet support becomes witness debt only when the report treats it as discharged.
- **Fig. 6:** `Def_state(gamma, phi)=0` while `Def_witness(gamma, phi)=1`.
- **Fig. 7:** `Verify(CryptSupp, ctx)=accept` does not imply `Admit_S(CryptSupp, phi, P, ctx)=accept`.

## Appendix A. Finite Witness Library

Keep the main text lean. Use this appendix for finite witnesses and construction details.

Canonical witnesses:

1. **Signed edit / silent merge:** same final text, different provenance support.
2. **Direct versus mediated support:** direct path loses witness; mediator emits admissible receipt.
3. **Path-dependent support transport:** same source, target, and endpoint state; different claim status.
4. **Witness holonomy:** state returns, witness status changes.
5. **Commitment opening:** `underdetermined + committed` becomes supported/refuted after valid opening.
6. **Verification/revelation split:** proof verifies predicate without revealing payload.
7. **Validity/admissibility split:** proof verifies but fails local authority/policy/frontier admission.
8. **Negative witness:** non-revocation or non-membership requires aperture/frontier support.
9. **Freshness/frontier shift:** support valid at `F`, stale at `F'`.
10. **Witness laundering:** caveats dropped from a mediated receipt.
11. **Typed authority refutation:** policy, signer binding, and nonmembership witness refute an authority claim.
12. **Noncommutative support transport:** compress-then-redact differs from redact-then-compress.
13. **`M_S` to `Carry_gamma` extraction:** endpoint accumulation plus path certificate yields claim-indexed support ledger.

Standard table:

```text
Claim | Purpose | Context | Obligation | Carry | DeclaredLoss | Debt | Status
```

Path table:

```text
Path | Endpoint projection | PathCert | Support carried | Support lost | Status
```

## Appendix B. Glossary and Notation Concordance

Purpose: prevent three-paper vocabulary from becoming reader debt.

Sections:

- `B.1` OG-I imported terms.
- `B.2` OG-II imported terms.
- `B.3` OG-III new terms.
- `B.4` Symbol table.
- `B.5` Statuses and modifiers.
- `B.6` Support atoms and caveats.
- `B.7` Claim families and typical obligations.

Required OG-III entries:

- `Obl_P(phi, ctx)`
- `Carry_gamma(phi, ctx)`
- `Unmet_gamma^P(phi, ctx)`
- `DeclaredLoss_gamma^P(phi, ctx)`
- `Debt_gamma^P(phi, ctx, Report)`
- `Supp_S(phi)`
- `CryptSupp_S(phi)` / `CWit_S(phi)`
- `PathCert(gamma, phi, P, ctx)`
- `Sat(Carry, Obl)`
- `Admit_S(Supp, phi, P, ctx)`
- `Just_S^P(phi, ctx)`
- `Report_S^P(phi, ctx)`
- `OverReport`
- `Hallucinate`
- `FalseReport`
- `Launder`
- `Def_c(gamma, phi)`
- `Val_gamma^{P,ctx}(phi)`
- `refutes(phi)`

## Appendix C. Diagrammatic Summary

Collect all figures with one-paragraph explanations:

- series ladder;
- canonical two-path example;
- support accounting pipeline;
- `M_S` / `Carry_gamma` extraction;
- unmet / declared loss / witness debt;
- witness holonomy loop;
- Verify / Admit split;
- OG-III to OG-IV bridge.

## Appendix D. Extended Proof Sketches

Keep main-text proofs concise. Put finite constructions and longer proof sketches here.

Primary proof sketches:

- `D.1` Witness Sensitivity.
- `D.2` Path-Dependent Support Transport.
- `D.3` Nonzero Witness Holonomy.
- `D.4` Validity/Admissibility Separation.
- `D.5` Support-Soundness Failure / Witness Debt.

Supporting proof sketches:

- `D.6` Mediated Support Translation.
- `D.7` Verification/Revelation Separation.
- `D.8` Noncommutative Support Transport.
- `D.9` Typed Refutation for Authority Claims.

## Appendix E. Engineering Artifacts

Translate theory into system objects without making them core formal infrastructure.

Entries:

- `E.1` Claim passport schema.
- `E.2` PathCert schema.
- `E.3` Obligation registry.
- `E.4` Support ledger validator.
- `E.5` Witness-debt counter.
- `E.6` Support status report.
- `E.7` Typed support checker / support type system sketch.
- `E.8` WARP/Echo-style PathCert validator sketch.
