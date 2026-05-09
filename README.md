# Observer Geometry III

**Observer Geometry III: Path Geometry and Support Obligations**

[![CI](https://github.com/flyingrobots/og-3/actions/workflows/ci.yml/badge.svg)](https://github.com/flyingrobots/og-3/actions/workflows/ci.yml)

Paper DOI: <https://doi.org/10.5281/zenodo.20046284>

Code archive concept DOI: <https://doi.org/10.5281/zenodo.20054992>

Prior code artifact DOI: <https://doi.org/10.5281/zenodo.20055508>

Initial code artifact DOI: <https://doi.org/10.5281/zenodo.20054993>

Author: James Ross, Independent Researcher

ORCID: <https://orcid.org/0009-0006-0025-7801>

This repository contains the manuscript source, generated reading copies, and
finite reference checks for **Observer Geometry III**. The paper studies
path-sensitive support transport: endpoint agreement is not support agreement,
and a claim's justified status depends on which support obligations, witnesses,
certificates, authority facts, freshness facts, losses, blocks, and refutations
survive the observer path.

OG-III follows Observer Geometry I and II. Papers I and II are treated here as
fixed published interfaces; this repository is the working and archival home for
the OG-III manuscript and its companion finite witness model.

## Main Artifacts

- `observer_geometry_3.tex` - manuscript source
- `observer_geometry_3.refs.bib` - bibliography database
- `dist/observer_geometry_3.pdf` - generated PDF reading copy
- `dist/observer_geometry_3.txt` - generated plain-text reading copy
- `formal/coq/OG3.v` - compact Coq/Rocq finite reference model
- `formal/coverage.json` - paper-to-Coq finite witness coverage map
- `formal/generated/coverage_table.tex` - generated manuscript coverage table
- `dist/observer_geometry_3-source.zip` - optional release source bundle
- `.zenodo.json` - Zenodo deposition metadata
- `CITATION.cff` - citation metadata

## Formal Reference Model

The Coq/Rocq file is a compact finite reference model for the witness
calculations used in the manuscript. It mechanizes simplified support atoms,
four-component support ledgers, obligation objects, finite satisfaction and
admission examples, unmet-support and witness-debt calculations, and the finite
separation witnesses named in the coverage table.

The model deliberately abstracts real cryptographic implementations. It does
not implement Ed25519, zero-knowledge systems, Merkle proofs, transparency logs,
full path-certificate validation, extraction from native observer memory, or
full policy admission. Cryptographic surfaces are represented as finite verifier
facts, and the manuscript supplies the mathematical interpretation.

## Build Requirements

- `pdflatex`
- `biber`
- `pandoc` for text export
- `python3` for coverage-table checks
- `coqc` for formal verification. This release was checked locally with Rocq
  Prover 9.1.1 and OCaml 5.4.1; CI pins the `rocq/rocq-prover:9.1` container.
  The Coq/Rocq file uses only the bundled standard library modules imported in
  `formal/coq/OG3.v`.

## Common Commands

Build the generated PDF and text exports:

```bash
make pdf txt
```

Check the Coq/Rocq reference model and the paper-to-Coq coverage map:

```bash
make verify
```

Regenerate the coverage table, check the Coq/Rocq file, and verify that the
generated coverage artifact is current:

```bash
make formal-sync
```

GitHub Actions runs `make verify`, validates `.zenodo.json`, renders the PDF
and text exports, builds the reproducible source bundle, checks the generated
coverage table, scans LaTeX/Biber logs, and uploads the rendered reading copies
plus source bundle as workflow artifacts.

Build the release source bundle after committing the intended release tree:

```bash
make release-bundle
```

The bundle is written to `dist/observer_geometry_3-source.zip` and is assembled
from the tracked repository tree plus the generated PDF and text reading copies.
It includes `formal/generated/coverage_table.tex`, so the TeX source rebuilds
without regenerating the coverage table first.

Remove generated build outputs:

```bash
make clean
```

## Citation

Use the DOI for this version unless a later published version supersedes it:

```text
Ross, James. Observer Geometry III: Path Geometry and Support Obligations.
Version 1.0.0. 2026. https://doi.org/10.5281/zenodo.20046284
```

Machine-readable citation metadata is available in `CITATION.cff`.

## Repository

The public repository for this work is:

<https://github.com/flyingrobots/og-3>

Versioned code archives are available through the Zenodo concept DOI and the
GitHub releases page:

<https://doi.org/10.5281/zenodo.20054992>

<https://github.com/flyingrobots/og-3/releases>

## License

Licensed under Creative Commons Attribution 4.0 International (`CC BY 4.0`).
See `LICENSE`.

Copyright © 2026 James Ross.
