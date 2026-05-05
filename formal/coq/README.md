# OG-III finite witness formalization

This directory contains a compact Coq/Rocq finite reference model for the
witness calculations used by the OG-III manuscript.

The file `OG3.v` mechanizes:

- finite support atoms
- support ledgers `L = (C,D,B,R)`
- admitted discharge closure for compression receipts
- obligation objects `(R_O, E_O)`
- finite satisfaction and admission examples
- unmet-support and witness-debt calculation
- executable finite witnesses for the manuscript's main separation examples
- paper-to-Coq coverage through `formal/coverage.json`

Cryptographic primitives are modeled abstractly as finite verifier facts. Path
certificate validation, extraction from native observer memory, full policy
admission, Ed25519, zero-knowledge proof systems, Merkle proofs, and
transparency logs are abstracted. The file checks the finite support-ledger
calculations that the manuscript applies to those witness surfaces.

Run:

```bash
make verify
make formal-sync
```

`make verify` requires `coqc` and `python3` on `PATH`. Homebrew provides
Coq/Rocq through the `rocq` formula. `make formal-sync` regenerates the LaTeX
coverage artifact from `formal/coverage.json` and checks that each listed paper
label and Coq object exists.
