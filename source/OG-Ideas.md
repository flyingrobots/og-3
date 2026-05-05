# Observer Geometry Ideas Parking Lot

This file tracks cool, wild, wacky, maybe-true, maybe-not-true, powerful, and GOODGOLLY ideas for the Observer Geometry series.

Purpose:

- Preserve promising ideas without bloating the active paper outline.
- Mark what belongs in OG-III, OG-IV, OG-V, engineering companion work, or later research.
- Keep speculative ideas visible while making clear they are not yet doctrine.

Status labels:

- **Core candidate:** likely belongs in a main paper after finite witnesses are found.
- **Bridge idea:** useful for connecting two papers.
- **Engineering candidate:** likely belongs in WARP/Echo/Continuum/tooling or an implementation companion.
- **Speculative:** interesting but not yet grounded enough.
- **Do not load into OG-III:** valuable, but would add mass to Paper 3.

---

## Current Anchor

OG-III should stay focused on:

> Observer-relative truth is governed by path-sensitive transport of support obligations.

Formal engine:

```text
claim + purpose + context
      -> support obligation
      -> observer path
      -> carried/compressed/redacted/blocked support
      -> observer-relative status
```

Do not add new ideas to OG-III unless they sharpen this engine.

---

## Current Triage

Tier 1 -- real theoretical contributions:

- Minimal Sufficient Witness / Witness Basis.
- Support Type Systems.
- Observer Courts / Adjudicating Observers.
- Testimony/Object Claim Separation.
- Witness Holonomy / Operational Causal Curvature.

Tier 2 -- strong but needs more formal grounding:

- Support Contamination / Claim Taint.
- Reliance Status.
- Witness Laundering Taxonomy.
- Support Expiry / Evidence Decay.
- Observer Adversarial Examples.
- Plural Support / Disagreement Without Collapse.
- Cognitive Dissonance / Auditable Rationalization.
- Suspicion as Diagnostic Scrutiny.

Tier 3 -- promising but depends on later normative or dynamic machinery:

- Right To Be Underdetermined.
- Witness Escrow / Conditional Revelation.
- Appeals / Reopening / Support Recovery.
- Counterfactual Support Obligations.
- Support Sovereignty.
- Mode, Frame, and Uptake.

Tier 4 -- park indefinitely or keep as playful speculation:

- Claim Insurance / Support Escrow Economics.
- Humor as Observer-Relative, Not Merely Subjective.

Cross-cutting cluster:

- Support Dynamics collects witness escrow, support expiry/evidence decay, and appeals/reopening. These point to support as a temporal object that can decay, be escrowed, be reopened, be revoked, or be refreshed.

---

## Best Future Threads

## 1. Support Contamination / Claim Taint

Status: **Tier 2 / core candidate**, probably OG-IV / OG-V / engineering. Dependency formalization is started but not theorem-ready.

Idea:

Unsupported, stale, caveated, or debt-bearing claims can contaminate later claims that rely on them.

Example:

```text
phi_1 = "Alice authorised edit e"
phi_2 = "therefore the release was properly approved"
phi_3 = "therefore the deployment is compliant"
```

If `phi_1` carries debt or caveats, then `phi_2` and `phi_3` inherit support risk unless they discharge the missing obligation independently.

Possible notation:

```text
Depends(phi_2, phi_1)
Debt(phi_1) > 0
=> Risk(phi_2) > 0
```

Do not collapse all taint into one bit. Track the reason:

```text
TaintedSupport_gamma(phi; reason)

reason ::= upstream_false_report
         | upstream_forged
         | upstream_laundered
         | upstream_stale
         | upstream_debt
         | upstream_authority_blocked
         | upstream_context_mismatch
```

Dependency also needs more than one relation:

```text
EvidentialDepends(Carry_S(phi), Report_L(phi))
CausalDepends(Just_S^P(phi, ctx), Report_L(phi))
EssentialDepends(Just_S^P(phi, ctx), Report_L(phi))
```

- `EvidentialDepends`: `L`'s report is present as a support atom.
- `CausalDepends`: removing or correcting `L`'s report changes `S`'s justified status.
- `EssentialDepends`: without `L`'s report, no redundant independent support discharges the obligation.

This matters for deception. If `L` lied but `S` also has independent support satisfying `Obl_P(phi, ctx)`, then `S` encountered a lie but may not be deceived about `phi`.

Good line:

> Unsupported claims do not merely fail locally; they contaminate the support graph of later claims.

Why it matters:

- AI reasoning chains.
- Audit trails.
- Legal workflows.
- Scientific citation chains.
- Software supply chains.

Do not load into OG-III except as a tiny future-work note.

## 2. Testimony/Object Claim Separation

Status: **Core candidate**, OG-III structural proposition and OG-IV bridge.

Idea:

The claim that someone reported something and the claim reported are different claim families with different support obligations.

Notation:

```text
psi_L(phi) = "L reported phi"
```

Separation:

```text
Just_S^P(psi_L(phi), ctx) = supported
Just_S^P(phi, ctx) != supported
```

The first claim may require only a transcript, signature, timestamp, speaker identity, or path from `L` to `S`. The second may require world-facing support for `phi`.

Why it matters:

- `S` can honestly report "L said phi" while being underdetermined on `phi`.
- `S` can be honest but deceived if `S`'s support for `phi` essentially depends on `L`'s overreport.
- OG-IV can distinguish lying from being lied to without collapsing the two observers.

Good line:

> Testimony support is not object support.

## 3. Witness Holonomy / Operational Causal Curvature

Status: **Tier 1 / OG-III core concept**, promoted into the active outline as Theorem 6.

Idea:

Classical analogy:

```text
curved manifold -> parallel transport -> holonomy -> curvature
```

OG-III analogue:

```text
observer space -> support transport -> witness holonomy -> operational causal curvature
```

The core separation:

```text
Def_state(gamma, phi) = 0
Def_witness(gamma, phi) = 1
```

The state coordinate closes around the observer loop, but the witness/provenance/authority/freshness coordinate does not.

Safe claim:

> OG-III defines an operational notion of support defect under closed observer transport that is structurally analogous to holonomy in curved spaces.

Unsafe claim:

> Causal space is curved in the smooth or Riemannian sense.

Do not make the unsafe claim unless a metric, connection, and curvature operator have actually been defined.

Why it matters:

- Turns provenance gaps and support loss into path-structured phenomena, not random bookkeeping failures.
- Explains why identical endpoint state does not imply identical claim status.
- Gives the "geometry" in Observer Geometry a finite witness-based invariant.
- Provides the deeper version of OG-II's state-convergence result: even closed state loops can fail to close on witness support.

Best line:

> The underlying event may be invariant; the justified claim-status is not.

Another strong line:

> Curvature in causal space is the failure of support to return unchanged after transport through observer coordinates.

Broken-assumption ladder:

```text
OG-I:   observers are not interchangeable
OG-II:  state convergence is not observer convergence
OG-III: endpoint agreement is not support agreement
OG-III: support geometry is not necessarily flat
```

Practical reading:

Any system that assumes "if state converged, truth converged" is assuming flat support geometry. OG-III gives tools for locating where that assumption fails: path dependence, closed-loop support defect, witness loss, freshness decay, authority blocking, and context mismatch.

## 4. Minimal Sufficient Witness / Witness Basis

Status: **Tier 1 / core candidate**, strong standalone future paper anchor.

Idea:

For a claim and purpose, ask for the smallest support bundle that satisfies the obligation.

Possible notation:

```text
MinSupp_P(phi, ctx)
Basis_P(phi, ctx)
```

Example:

For `phi = "Alice authorised edit e"` under audit purpose `P`, minimal support may include:

- final text hash;
- edit identifier;
- Alice identity binding;
- signature;
- policy epoch;
- non-revocation frontier;
- path certificate.

Good line:

> Reveal no more than the support obligation requires, but no less than the claim needs.

Theoretical shape:

`MinSupp_P(phi, ctx)` is a real optimization problem over support bundles: minimize revelation, transport cost, or authority exposure subject to satisfying `Obl_P(phi, ctx)`.

Why it matters:

- Least sufficient revelation.
- Privacy-preserving verification.
- ZK/capability systems.
- Claim passports and proof services.

## 5. Support Type Systems

Status: **Tier 1 / core theoretical and engineering candidate**, maybe OG-V or implementation companion.

Idea:

Make unsupported reports type errors.

This is not merely implementation detail. It is the support calculus expressed as a type system: a report at status `supported` is ill-typed unless its carried ledger discharges the corresponding support obligation.

Example:

```text
Claim<Authorship, AuditPurpose>
requires Signature + IdentityBinding + PathCert + PolicyEpoch
```

A report cannot be emitted as `supported` unless its support ledger type-checks.

Good line:

> Unsupported reports become type errors.

Why it matters:

- Compiler/checker for claim passports.
- PathCert validator for WARP/Echo-style packets, receipts, or manifests.
- Agent output contracts.
- CI/audit systems.
- Proof-carrying workflows.
- WARP/Echo/Continuum implementation track.

## 6. Observer Courts / Adjudicating Observers

Status: **Tier 1 / core candidate**, probably OG-V.

Idea:

Institutions can be modeled as observers over observer-support relations.

Possible notation:

```text
Court = Observer over support ledgers and reports
```

The court does not decide global truth directly. It decides whether a reported status was justified under declared obligations and context.

Examples:

- audit authority;
- consensus validator;
- legal court;
- review board;
- CI system;
- proof verifier;
- governance process;
- human evaluator.

Good line:

> Institutions are observers of observer-support relations.

Why it matters:

- Accountability.
- Governance.
- Multi-observer disagreement.
- Institutional trust.

## 7. Right To Be Underdetermined

Status: **Tier 3 / bridge idea**, likely OG-IV after normative machinery exists.

Idea:

Some systems should not be forced to reveal enough support to make a claim fully supported for all observers.

Examples:

- privacy;
- sealed evidence;
- protected identity;
- trade secrets;
- safety-critical redaction;
- witness protection;
- cryptographic anonymity.

Good line:

> A just observer system must sometimes preserve underdetermination.

Why it matters:

- Rights.
- Bounded revelation.
- Authority-blocked status as legitimate, not defective.
- Privacy-preserving accountability.

## 8. Reliance Status

Status: **Tier 2 / bridge idea**, OG-IV / OG-V.

Idea:

A system may not claim `phi` directly, but may rely on `phi`.

Examples:

- deployment relies on "review passed";
- legal filing relies on "signature valid";
- AI answer relies on "source says X";
- database migration relies on "schema approved".

Possible notation:

```text
ReliesOn(action, phi)
RelianceStatus(action, phi, ctx)
```

Open formal question:

Does `ReliesOn(action, phi)` create a derived support obligation, strengthen an existing obligation, or merely record exposure when `phi` later fails?

Good line:

> Harm often flows not from unsupported claims alone, but from actions that rely on them.

Why it matters:

- Accountability.
- Governance.
- Agentic systems.
- Risk propagation.

## 9. Witness Laundering Taxonomy

Status: **Tier 2 / bridge idea**, OG-IV.

Idea:

Witness laundering is more subtle than forgery. The proof/support may be real; the lie is in what caveats are erased.

Types:

- **Caveat stripping:** "verified at `F`" becomes "verified".
- **Purpose laundering:** proof for `P` reused for `Q`.
- **Authority laundering:** support valid under one policy domain presented under another.
- **Compression laundering:** compressed witness hides what coordinates it no longer supports.
- **Freshness laundering:** stale proof presented as current.
- **Path laundering:** receipt detached from the path that made it meaningful.

Good line:

> Laundering is not fabrication of support; it is purification of a support report beyond what the support permits.

Why it matters:

- OG-III defines the structural failure.
- OG-IV judges dishonesty, negligence, culpability, or policy allowance.

---

## Additional Ideas

## 10. Witness Escrow / Conditional Revelation

Status: **Tier 3 / support-dynamics bridge idea**, OG-IV / rights / governance.

Idea:

Support exists but cannot be revealed now. It is conditionally available.

Examples:

- sealed provenance;
- encrypted evidence;
- threshold-held authority proof;
- time-locked opening;
- legal warrant condition;
- audit-only disclosure;
- emergency break-glass reveal.

Possible modifiers:

```text
escrowed(condition)
openable_under(kappa)
```

Good line:

> The system can prove that support exists, bind itself to future disclosure conditions, and still avoid present revelation.

Why it matters:

- Privacy-preserving accountability.
- Rights.
- Conditional authority.

## 11. Support Expiry / Evidence Decay

Status: **Tier 2 / support-dynamics candidate**, maybe OG-IV or engineering.

Idea:

Support is not timeless. It can decay, expire, become stale, or lose admissibility.

Examples:

- keys expire;
- certificates are revoked;
- logs advance;
- witnesses become stale;
- policies change;
- authority epochs end;
- retention windows close;
- encryption keys are destroyed;
- commitments remain but openings are lost.

Possible notation:

```text
ValidUntil(Supp, F_or_t)
Decay(Supp, ctx -> ctx')
```

Good line:

> Support is not timeless; it lives at a frontier.

Why it matters:

- Freshness.
- Retention duties.
- Audit systems.
- "Verified once" is not "verified forever."

## 12. Appeals / Reopening / Support Recovery

Status: **Tier 3 / support-dynamics bridge idea**, OG-IV / engineering.

Idea:

A claim may be underdetermined now but later reopened when support appears.

Examples:

- commitment opened;
- encrypted witness decrypted;
- log mirror comes online;
- missing path certificate recovered;
- threshold quorum signs;
- redacted evidence unsealed;
- new negative witness obtained.

Transitions:

```text
underdetermined -> supported
authority_blocked -> supported
stale -> refreshed
debt -> discharged
```

Good line:

> Reopening changes present support status, not past observer history.

Why it matters:

- Appeals.
- Audit correction.
- Delayed disclosure.
- Repair workflows.

## 13. Support Dynamics

Status: **Future-paper cluster**, probably OG-IV / OG-V / engineering companion.

Idea:

Witness escrow, support expiry, and appeals/reopening are one implicit theory: support is not only a static ledger but a temporal object whose admissibility changes across frontiers, authority epochs, disclosure conditions, and recovery events.

Possible notation:

```text
Dyn(Supp, ctx -> ctx')
Decay(Supp, ctx -> ctx')
Escrow(Supp, condition)
Reopen(Supp, new_witness, ctx -> ctx')
Revoke(Supp, frontier)
Refresh(Supp, frontier')
```

The key question is how support status changes without rewriting observer history.

Examples:

- `supported -> stale` when frontier advances.
- `authority_blocked -> supported` when opening authority is granted.
- `underdetermined -> supported` when a commitment is opened.
- `supported -> refuted` when later admissible support contradicts an earlier claim.
- `debt -> discharged` when missing support is recovered and admitted.

Good line:

> Support is dynamic: it decays, opens, closes, revokes, refreshes, and re-enters judgement.

Why it matters:

- temporal audits;
- legal appeals;
- revocation and expiry;
- conditional disclosure;
- repair workflows;
- versioned claim passports.

## 14. Counterfactual Support Obligations

Status: **Tier 3 / engineering candidate**, WARP/Echo/debugging.

Idea:

For a failed or unsupported report, ask what support would have made it justified.

Possible notation:

```text
Repair(phi, Report, ctx)
MissingObl(phi, ctx)
```

Examples:

- To support "Alice authorised edit e", provide signature + identity binding + policy epoch.
- To support "no revocation", provide non-revocation witness + frontier consistency.
- To support "fresh", provide later frontier proof.
- To support "admitted", provide authority metadata.

Good line:

> The system can explain not only that a claim is unsupported, but what support would discharge it.

Why it matters:

- Diagnostics.
- AI assistants.
- Audit tools.
- CI systems.
- Proof-carrying workflows.

## 15. Observer Adversarial Examples

Status: **Tier 2 / security and applied OG candidate**.

Idea:

Given an observer aperture and support checker, craft an object that induces overreporting.

Examples:

- final state looks clean but provenance is missing;
- proof valid under wrong context;
- receipt omits caveats;
- stale support wrapped as fresh-looking support;
- absent conflict marker misread as no conflict.

Good line:

> An adversarial example is an object whose projection induces a stronger report than its support obligation permits.

Why it matters:

- Security testing.
- ML-adjacent hallucination testing.
- Audit robustness.

## 16. Plural Support / Disagreement Without Collapse

Status: **Tier 2 / core plural-governance candidate**, OG-IV / OG-V.

Idea:

Some claims may have multiple admissible but incompatible support paths.

Examples:

- two authorities accept different policies;
- two logs have conflicting roots;
- two observers admit different purposes;
- one path supports provenance, another supports privacy-preserving verification;
- one jurisdiction admits evidence another blocks.

Good line:

> Observer Geometry should distinguish unsupported claims from plurally supported claims under incompatible authority domains.

Why it matters:

- Plural governance.
- Rights.
- Authority domains.
- Multi-institution systems.

## 17. Cognitive Dissonance / Auditable Rationalization

Status: **Tier 2 / bridge idea**, OG-IV / OG-V. Sits immediately after plural support conflict.

Idea:

Cognitive dissonance is not merely conflicting support. Conflicting support is structural; dissonance is what a self-aware or motive-bearing observer does after becoming aware of that conflict.

Structural conflict:

```text
Just_S^P(phi, ctx) = supported
Just_S^P(refutes(phi), ctx) = supported
```

This is `plural_support_conflict`: the ledger can support incompatible claims or statuses under the relevant context. The observer has not yet resolved the conflict.

Dissonance:

```text
Aware_S(plural_support_conflict(phi, ctx))
Motivates_S(resolve_conflict)
```

The observer then changes its support machinery, reporting behavior, or update path in response to the tension.

Possible resolution modes:

```text
GenuineRevision_S(phi, ctx)
Rationalize_S(phi, ctx)
Avoid_S(Supp_refutes, phi, ctx)
Reframe_S(P -> P')
Discount_S(Supp_refutes, ctx)
```

Examples:

- **Genuine revision:** new admissible support changes `Just_S` and the downgrade or update is declared.
- **Discounting:** uncomfortable support is assigned a lower admission status without a legitimate policy reason.
- **Reframing:** purpose changes from `P` to `P'` so the conflict no longer appears.
- **Avoidance:** `Carry_gamma(phi, ctx)` omits uncomfortable support without declared loss.
- **Rationalization:** a path certificate, admission rule, or report is adjusted to make the omission look justified.

OG-specific contribution:

> Cognitive dissonance is the observer's experience of `plural_support_conflict`; rationalization is the observer manipulating its own support machinery to resolve that conflict without legitimate evidence revision.

Auditable distinction:

```text
GenuineRevision_S(phi, ctx)
iff changed status is backed by new admissible support, declared loss, or explicit downgrade

Rationalize_S(phi, ctx)
iff conflict is suppressed by unsupported Admit, Obl, Carry, PathCert, or Report changes
```

Good line:

> Observer Geometry makes dissonance resolution auditable: genuine revision and rationalization leave different support-ledger traces.

Why it matters:

- honest belief revision versus rationalization;
- self-inflicted witness laundering;
- motivated reasoning;
- institutional design that either surfaces or suppresses conflict;
- OG-IV negligence/dishonesty;
- OG-V courts, audits, and adversarial review.

## 18. Claim Insurance / Support Escrow Economics

Status: **Tier 4 / speculative**, future governance/economics. Park indefinitely.

Idea:

If support debt can exist, systems might price, insure, or escrow it.

Examples:

- "This claim is accepted provisionally, pending support opening."
- "This update carries witness debt of class D."
- "This proof is cheap but low-audit."
- "This path costs more because it carries stronger support."
- "This mediator charges to convert raw support into admissible receipts."

Possible notation:

```text
Cost(Carry_gamma)
Risk(Debt_gamma)
Premium(phi, P, ctx)
```

Warning:

This could get goofy fast. Park it; do not draft it into OG-III.

## 19. Support Sovereignty

Status: **Tier 3 / bridge idea**, OG-IV / rights.

Idea:

A subject may have rights over how support about them is retained, revealed, compressed, or transported.

Questions:

- Who controls opening authority?
- Who can compel revelation?
- Who can transport support across contexts?
- Who can launder or summarize witness?
- Who can attach a claim passport to a subject?
- Who can revoke capability?

Good line:

> Support is a governed object, not a neutral technical artifact.

Why it matters:

- Rights.
- Provenance sovereignty.
- Capability-scoped observers.
- Disclosure governance.

## 20. Suspicion as Diagnostic Scrutiny

Status: **Tier 2 / bridge idea**, tiny OG-III note / OG-IV duties / OG-V adjudication.

Idea:

Suspicion should not become a base support status. It is a diagnostic modifier or escalation flag over otherwise supported, partial, stale, or underdetermined claims.

Distinction:

```text
Unsupported_S^P(phi, ctx)
iff Sat(Carry_gamma(phi, ctx), Obl_P(phi, ctx)) != yes

Suspicious_S^P(phi, ctx; reason)
iff Sat(Carry_gamma(phi, ctx), Obl_P(phi, ctx)) = yes
    and Diag_S(phi, ctx) raises reason
```

Possible reasons:

```text
SuspicionReason ::= unusual_path
                  | source_low_reliance
                  | missing_redundancy
                  | incentive_mismatch
                  | distribution_shift
                  | near_expiry
                  | caveat_density
                  | prior_laundering
```

What suspicion does:

- escalates the claim to stronger `Obl_P+`;
- asks for redundancy, audit, opening, or third-party review;
- creates an OG-IV duty to disclose uncertainty or scrutiny;
- creates an OG-V institutional question about who adjudicates suspicion.

Good line:

> Suspicion is not failed support; it is a reason to demand stronger support.

## 21. Mode, Frame, and Uptake

Status: **Tier 3 / core candidate**, mostly OG-IV with OG-III obligation effects.

Idea:

Some false utterances are not lies because they are not offered in assertion mode. Jokes, fiction, hypotheticals, absurdity, games, theater, quotations, and teaching examples change the support obligation.

Possible notation:

```text
Mode_L(phi, ctx) in {assertion, joke, fiction, hypothesis, quotation, roleplay, absurdity}
Uptake_S(phi, ctx) in {assertion, joke, fiction, hypothesis, quotation, roleplay, absurdity}
Obl_{P,mode}(phi, ctx)
```

Failure pattern:

```text
Mode_L(phi, ctx) = joke
Uptake_S(phi, ctx) = assertion
```

The communicative failure is not necessarily dishonesty by `L`; it may be uptake mismatch by `S`, missing context, bad framing, or malicious recontextualization by a mediator.

Good line:

> A joke is a false sentence under a non-assertoric support obligation.

Why it matters:

- joking without malice;
- satire and parody;
- fiction;
- teaching examples;
- quoted speech;
- adversarial clipping and context stripping.

## 22. Humor as Observer-Relative, Not Merely Subjective

Status: **Tier 4 / speculative**, philosophy appendix or future essay, not OG-III.

Idea:

The humor discussion should not end with "humor is subjective" if subjective means arbitrary, private, or uncriticizable. The stronger Observer Geometry claim is that humor is observer-relative and context-sensitive.

Possible judgement:

```text
S ; Frame ; Context |- utterance u : funny
```

or:

```text
Funny_S(u, ctx; frame)
```

The support basis might include:

- surprise or incongruity;
- benign violation;
- shared background;
- timing;
- delivery;
- social relation between speaker and listener;
- mode/frame recognition;
- release of tension;
- permitted absurdity.

What can be "proved":

- not universal funniness;
- not forced laughter;
- but funniness relative to a specified observer model, frame, and criteria.

Good line:

> Humor is not merely subjective; it is structured observer-relativity with a laugh track removed.

---

## Candidate Series Placement

Possible sequence:

- **OG-III:** support transport.
- **OG-IV:** honest/dishonest support reporting, rights, accountability.
- **OG-V:** support governance, institutions, adjudicating observers.
- **Engineering companion:** claim passports, support type systems, obligation ledgers, context-bound receipts.

Useful progression:

```text
support transport -> support reporting -> support governance -> support tooling
```

## OG-IV North-Star Note

Status: **Core candidate**, OG-IV.

Seed thesis:

> A lie is not merely a false claim. In Observer Geometry, the deeper lie is a false claim about what the observer was entitled to claim.

Boundary inherited from OG-III:

- OG-III defines support-status mismatch structurally: overreport, false report, support hallucination, stale support, laundering, forged path certificates, and witness debt.
- OG-IV asks when an observer misrepresented that support situation under a reporting obligation.

Important split:

- **False claim:** `Report(phi)` while admissible support justifies `refutes(phi)`.
- **False support claim:** report "verified", "fresh", "authorised", "admitted", or "supported" when the observer's support relation does not justify that status.

This should be preserved as the OG-IV north star unless later drafting finds a sharper formulation.

---

## Current Top Picks

Do not add most of these to OG-III's main outline now. The exceptions are witness holonomy and testimony/object claim separation, both promoted into the active outline because they directly sharpen the paper's geometry and obligation algebra.

Priority:

1. Witness holonomy / operational causal curvature.
2. Minimal sufficient witness / witness basis.
3. Support type systems.
4. Observer courts / adjudicating observers.
5. Testimony/object claim separation.
6. Plural support / disagreement without collapse.
7. Cognitive dissonance / auditable rationalization.
8. Support dynamics.
9. Support contamination / claim taint.
10. Reliance status.
11. Witness laundering taxonomy.
12. Suspicion as diagnostic scrutiny.

Best standalone future-paper idea:

> Minimal sufficient witness: reveal no more than the support obligation requires, but no less than the claim needs.

Best implementation bridge:

> Support type systems: a formal language where claims cannot be emitted above the status justified by their support ledger.

Best OG-IV idea:

> Dishonesty is not merely false assertion; it is misrepresentation of one's support relation to a claim.

Best OG-V-or-later idea:

> Institutions are observers over observer-support relations.
