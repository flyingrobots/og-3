# Observer Geometry Style Guide

This guide records tone, voice, style, and structure patterns from the published
OG-I and OG-II manuscripts:

- `~/git/aion-og-1/observer_geometry_1.tex`
- `~/git/aion-og-2/observer_geometry_2.tex`

It is intended as a drafting guide for OG-III and later papers, not as a
general academic-writing manual.

## High-Level Voice

The Observer Geometry voice is technical, direct, and scoped. It does not sell
the model by hype; it earns force by naming a concrete failure mode, giving
finite structure for it, and then stating exactly what the theorem does and does
not prove.

The papers sound confident, but their confidence comes from careful restriction:

- "We prove this under these hypotheses."
- "This does not claim the stronger thing."
- "The failed case moves outside the theorem and into an explicit obstruction."
- "The quantity is useful, not uniquely canonical."

This is the core voice discipline: strong conceptual claims, conservative formal
claims.

## Opening Pattern

Both OG-I and OG-II begin with a concrete systems contrast before the abstract
apparatus appears.

OG-I opens with two replicas that end at the same visible state while differing
in conflict history. The immediate point is state/provenance separation.

OG-II opens with two replicas that end with the same booking record while
differing in causal frontier, bounded site, retained conflict witness, and
authored intent. The immediate point is state convergence versus observer
convergence.

The pattern is:

1. Start with a small concrete witness.
2. Name the surface where equality holds.
3. Name the observer surface where equality fails.
4. State the broken assumption.
5. Only then introduce the series lineage and formal machinery.

For OG-III, the analogous opening should remain:

```text
same endpoint document
same target observer
same visible state
different transported support
different justified claim-status
```

Do not start OG-III by explaining OG-I and OG-II. Start by making endpoint
agreement fail in the reader's hands.

## Thesis Style

Each paper has one load-bearing broken assumption:

- OG-I: scalar distance is necessary but not sufficient.
- OG-II: state convergence is not observer convergence.
- OG-III: endpoint agreement is not path neutrality / support agreement.

The thesis should be written as a compact obstruction, not as a broad manifesto.
The strongest form is a negative implication:

```text
same terminal state does not imply same provenance support
state convergence does not imply observer convergence
same endpoint state does not imply same transported support
```

For OG-III, prefer "justified claim-status" or "support status" in formal prose.
Use "truth" only when making the informal series-level point, and immediately
bind it back to support obligations.

## Series Lineage

The papers cite prior installments as interfaces, not as homework assignments.
They do not re-prove the whole AION/WARP stack. Instead, they import a small
contract and tell the reader how to read it conservatively.

OG-I imports deterministic histories, replayable boundary encodings, and the
WARP-IV distance interface.

OG-II imports deterministic WARP histories, causal frontiers, witnessed updates,
policy frames, and OG-I observer signatures. It also gives a conservative
translation into state-machine, transition-system, causal-history, and
abstract-interpretation language.

For OG-III:

- Import OG-I terms as structural observer coordinates: projection, basis,
  accumulation, aperture, degeneracy, insufficiency, bias gap, and signatures.
- Import OG-II terms as distributed transport surfaces: frontier-indexed
  replicas, witnessed updates, policy closure, suffix transport, obstruction,
  retained/erased witness structure, and state convergence versus observer
  convergence.
- Keep the import section short in the main text.
- Move full glossary and notation concordance to an appendix.

## Scope Management

Both papers explicitly prevent overreading.

OG-I says its quantities are useful coordinate families, not uniquely canonical
endpoints. It also defers noisy, adversarial, and social observer theory.

OG-II says the confluence theorem is not a universal merge procedure, not a
Byzantine protocol, not a liveness theorem, and not a performance claim. Missing
evidence, partitions, resource exhaustion, and failed cells move the system
outside the theorem.

OG-III should keep this same discipline:

- It does not prove metaphysical truth relativism.
- It does not define honesty, culpability, accountability, or rights.
- It does not survey cryptography.
- It does not assume smooth manifolds, infinitesimal connections, or global
  metrics.
- It does not claim every path can preserve support.
- It classifies what happened to support along a declared path.

The useful phrasing is:

```text
The theorem does not claim X. It says the narrower thing Y.
If condition Z fails, the case is outside the theorem and enters status W.
```

## Formal Voice

Definitions are concise and operational. They usually introduce a named object,
then immediately state how the object is used.

Theorems are finite and constructive whenever possible. Proofs often follow this
shape:

1. "It suffices to exhibit..."
2. Define a finite probe family.
3. Define two observers, policies, paths, or surfaces.
4. Show equality on one coordinate.
5. Show separation on another coordinate.
6. State the consequence in observer-geometric language.

This finite-witness style is central to the series. It keeps the math checkable
and prevents the geometric language from becoming decorative.

For OG-III, prefer proofs that construct:

- two paths with the same source and target;
- the same endpoint visible state;
- different carried support ledgers;
- different justified claim-statuses.

## Sentence Rhythm

The prose uses clear declarative sentences and then formalizes them. Common
sentence forms:

- "The question is therefore whether..., and what..."
- "The main object is..."
- "The contribution replaces X with Y."
- "This theorem is the precise observer-geometric version of..."
- "This is not a pathology. It is a structural feature..."
- "The point is X. The consequence is Y."

This rhythm is worth preserving. It lets the paper state conceptual stakes
without losing mathematical control.

Avoid casual jokes, slang, and winking phrases in the manuscript. The working
notes can be wild; the paper voice is sober.

## Anti-Pattern Scan Policy

Use the user's banned-style list as a drafting scanner for canonical prose.
The transferable targets for Observer Geometry are:

- negative-depth formulas: `not X, but Y`, `not only... but`, `not merely`;
- fake range language: abstract `from X to Y` spans with no shared scale;
- narrator-as-analyst participles: `highlighting`, `underscoring`,
  `showcasing`, `reflecting`, `emphasizing` as editorial explanation;
- AI-default importance words: `pivotal`, `crucial`, `vital`, `profound`,
  `compelling`, `notably`, `ultimately`, `fundamentally`, `inherently`;
- AI-default verbs: `delve`, `unpack`, `navigate`, `foster`, `garner`,
  `enhance`, `underscore`, `showcase`, `highlight`;
- decorative abstractions: figurative `tapestry`, `landscape`, `interplay`,
  `intricacies`, `multifaceted`, and generic `nuanced`;
- promotional puffery: `stands as a testament`, `serves as a reminder`,
  `lasting legacy`, `indelible mark`, `cannot be overstated`, `boasts`;
- decorative metaphor clusters: gravity, magnetism, anchors, tethers, roots,
  blows, ripples, silence hanging, and temperature-as-emotion language;
- mechanical rhythm: repeated trailing participles, triple-beat fragments,
  staccato verb triplets, `, then` action pairs, and standalone `Because`
  fragments.

For OG papers, a few words are formal terms and should be preserved when they
are doing real work: `Observer Geometry`, `support-obligation calculus`,
`framework` in cited titles, and mathematical uses of `from X to Y`. The scan
should still flag them. Keep only the instances that are technical terms or
necessary quotations.

Run this scan on the manuscript before release:

```sh
rg -n -i 'not merely|not only|not just|not simply|not .* but|, then\b|\
delv(e|es|ing)|tapestry|landscape|interplay|intricacies|multifaceted|\
pivotal|crucial|vital|profound|compelling|notably|ultimately|fundamentally|\
inherently|underscore|underscoring|highlight|highlighting|showcase|\
showcasing|enhance|navigate|unpack|stands as a testament|serves as a reminder|\
lasting legacy|indelible mark|cannot be overstated|boasts|gravity|magnetic|\
anchor(ed)?|tether(ed)?|rooted|hangs? in the air|like a blow|like a punch|\
like a stone|the world held its breath|changed everything|broke forever' \
--glob '!source/STYLE_GUIDE.md' observer_geometry_3.tex source
```

The rule is density plus function. A formal term can stay. A decorative default
gets rewritten.

## Structural Pattern

The published papers follow this broad architecture:

1. Concrete witness / motivating contrast.
2. Program lineage and imported interfaces.
3. Central formal object.
4. Core definitions.
5. Theorem spine.
6. Finite examples or witness constructions.
7. Engineering interpretation or empirical roadmap.
8. Related work or conservative reading guide.
9. Conclusion with central distinctions and limitations.
10. Appendices for worked calculations, notation, artifacts, and reading paths.

OG-I is longer and more foundational. It builds many coordinates, then proves
separation and supplies worked finite appendices.

OG-II is tighter and more systems-forward. It introduces a replica-observer
model, develops suffix transport, proves a central confluence theorem, then
shows why state convergence still leaves provenance and intent distances.

OG-III should sit between them:

- OG-I-level care with definitions and distinctions.
- OG-II-level tightness around one poster theorem.
- Appendices for witness library, glossary, proof sketches, and engineering
  artifacts.

## Section-Level Moves

Use the following moves deliberately.

### Contributions

Both papers include an explicit contribution list early. Keep it short, usually
three items.

For OG-III, a good contribution list should cover:

1. Purpose-indexed support obligations and carried-support ledgers.
2. Path-dependent support transport and witness holonomy.
3. Cryptographic witness surfaces and the validity/admissibility split.

### Proof Boundary

OG-II has a strong "Proof boundary" paragraph. OG-III should use the same move.
State what the five-result spine proves and what it leaves to OG-IV.

### Scope Management

Use a named paragraph. It is part of the style.

### Roadmap

Roadmaps are explicit and conventional. They say what each section does without
trying to be clever.

### Imported Interfaces

Use an import table or concise glossary. Do not bury the reader in prior papers.

### Central Distinctions

Both papers preserve distinctions aggressively. OG-II's conclusion explicitly
lists central distinctions. OG-III should do the same, for example:

- endpoint state versus transported support;
- support obligation versus carried support;
- unmet support versus declared loss versus witness debt;
- verification versus admission;
- unsupported report versus dishonest report.

## Figures and Tables

Figures are simple, black-and-white, and structural. They are not decorative.
Captions are explanatory and often contain the conceptual punchline.

Tables are used for:

- conservative translation into familiar terms;
- glossary/notation discipline;
- observer-coordinate comparison;
- finite witness summaries;
- support-obligation sketches.

For OG-III, figures should show:

- the two-path endpoint example;
- support obligation accounting pipeline;
- extraction from OG-I accumulation into `Carry_gamma`;
- Verify/Admit split;
- witness holonomy loop;
- debt/declared-loss/unmet relation.

Do not overload figures with too much notation. A good Observer Geometry figure
is a compact diagram plus a caption that says exactly what surface agrees and
what surface separates.

## Notation Discipline

The papers define notation before using it heavily and often provide a reader
aid:

- OG-I has a quick symbol primer, glossary, dependency map, and suggested
  reading paths.
- OG-II has glossary and notation discipline early, plus a conservative
  reading guide.

For OG-III:

- Keep the main symbol set small:
  `Obl`, `Carry`, `Unmet`, `DeclaredLoss`, `Debt`, `Sat`, `Admit`, `Just`,
  `Report`, `Val`, `PathCert`.
- Avoid overloading OG-I's `K_S`; use `Supp`, `CWit`, or `CryptSupp` for support.
- Define context in stages: base context first, path-extended context later.
- Keep statuses as finite tags rather than a global lattice.
- Define the report-strength preorder only where it is needed.

## Engineering Voice

Both papers connect the formalism to systems work, but they avoid pretending a
theorem is already an implementation benchmark.

OG-I's engineering implications are framed as architectural constraints:
vector signatures, provenance retention, degeneracy controls, accumulation as a
first-class decision.

OG-II's engineering sections are more concrete but still cautious. They describe
what a prototype should measure and repeatedly distinguish formal guarantees
from empirical performance claims.

For OG-III, engineering interpretation should say:

- systems should transport claim-support ledgers alongside state;
- `PathCert` can be a receipt, header, manifest, or proof-carrying path object;
- witness debt can become an audit metric;
- support type systems can make overreporting a check failure;
- cryptographic proof validity is not enough without observer admission.

Avoid claiming that OG-III already proves practical performance. Say what it
lets systems check.

## Crypto Voice

The crypto material must be subordinate to Observer Geometry.

The correct voice is:

```text
Cryptographic objects are finite witness surfaces that separate commitment,
verification, revelation, authority, freshness, and admission.
```

Do not write a protocol survey. Do not explain Merkle trees, IPA, Verkle, or ZK
as if the paper's job is to teach cryptography. Use each primitive only to name
which support coordinate it preserves, compresses, hides, opens, or verifies.

The most OG-style crypto distinction is:

```text
Verify(CryptSupp, ctx) = accept
does not imply
Admit_S(CryptSupp, phi, P, ctx) = accept.
```

That is the kind of distinction the series is built to make.

## Relation to Philosophy

The papers avoid broad philosophical knife-fighting. They make structural claims
that can be checked on finite witnesses.

For OG-III, avoid saying "truth is relative" without qualification. Prefer:

- "justified claim-status is path-sensitive";
- "support status depends on transported support";
- "the underlying event may be invariant; the justified claim-status need not
  be."

This keeps the paper tied to support accounting rather than metaphysical
relativism.

## Related Work Style

Related work is selective and evaluative, not exhaustive. OG-I explicitly says
related work is placed after the formal core to preserve mathematical
continuity. OG-II uses related work to explain that OT, CRDTs, CALM, Bayou, and
Dynamo act as local laws or engineering neighbors around the theorem.

For OG-III, related work should be similarly scoped:

- provenance and audit systems;
- proof-carrying data / proof-carrying authorization;
- authenticated data structures;
- commitments and ZK as witness-surface examples;
- epistemic logic only if kept bounded;
- distributed systems and transparency logs where they illuminate witness
  transport.

Avoid literature sprawl.

## Conclusion Style

Both conclusions return to the main distinction and then name the next step.

OG-I ends by saying observer geometry is not reducible to distance between
viewpoints; it includes visibility, representation, ambiguity, accumulation,
and recoverability.

OG-II ends by saying agreement on a value is not enough; a faithful system must
also say what site was judged, under which policy, with which witness, and which
observer distances were preserved or collapsed.

OG-III should end by saying endpoint agreement is not enough; a responsible
system must say what claim was made, what support was required, what the path
carried, what was compressed, what was verified, what was redacted or blocked,
and what was overreported.

Then hand off cleanly to OG-IV:

```text
OG-III asks what support exists, survives, verifies, is blocked, is stale, or is
lost. OG-IV asks what the observer claimed about that support, and whether that
claim was honest.
```

## OG-III Drafting Rules

Use these as practical checks while drafting.

1. Open each major formal section with a plain-language obstruction.
2. Define the finite object before naming the theorem.
3. Keep the theorem spine to the five primary results.
4. Treat supporting results as propositions or corollaries.
5. Use one canonical witness family repeatedly instead of inventing new examples
   for every theorem.
6. State proof boundaries before ambitious results.
7. Every geometric word must have an operational finite meaning.
8. Every crypto primitive must serve a support-coordinate role.
9. Every status distinction must remain typed; do not collapse stale, blocked,
   underdetermined, unverifiable, and refuted.
10. Keep dishonesty in OG-IV. In OG-III, discuss support-status mismatches.

## Quick Checklist

Before considering an OG-III section ready, check:

- Does it start from a concrete support failure or path distinction?
- Does it state what equality holds and what equality fails?
- Are imported assumptions explicit?
- Are definitions finite and checkable?
- Are the theorem hypotheses narrower than the prose claim?
- Is there a "does not claim" boundary where needed?
- Does the section explain the engineering consequence without overclaiming
  performance?
- Are "truth" claims restated as justified support-status claims?
- Are crypto objects described as witness surfaces, not protagonists?
- Does the section preserve the OG-I/OG-II series arc?
