# OG-III finite witness formalization

This directory contains a compact Coq/Rocq formalization of the finite witness
calculations used by the OG-III manuscript.

The file `OG3.v` mechanizes:

- finite support atoms
- support ledgers `L = (C,D,B,R)`
- obligation objects `(R_O, E_O)`
- satisfaction and admission
- unmet-support and witness-debt calculation
- executable finite witnesses for the manuscript's main separation examples
- paper-to-Coq coverage through `formal/coverage.json`

Cryptographic primitives are modeled abstractly as finite verifier facts. The
formalization does not implement or verify Ed25519, zero-knowledge proof
systems, Merkle proofs, or transparency logs. It checks the support-ledger
calculus that the manuscript applies to those witness surfaces.

Run:

```bash
make verify
make formal-sync
```

`make verify` requires `coqc` and `python3` on `PATH`. Homebrew provides
Coq/Rocq through the `rocq` formula. `make formal-sync` regenerates the LaTeX
coverage table from `formal/coverage.json` and checks that each listed paper
label and Coq object exists.
