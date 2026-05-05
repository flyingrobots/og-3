# AIΩN Observer Geometry III

LaTeX source for **Observer Geometry III**.

Observer Geometry III studies path-sensitive support transport: endpoint
agreement is not support agreement, and claim status depends on the support
obligations carried, compressed, verified, opened, blocked, redacted, or lost
along an observer path.

## Status

Draft manuscript scaffold.

Papers I and II are treated as published fixed interfaces. This repository is
the working home for porting the OG-III outline into the canonical Observer
Geometry paper template.

## Files

- `observer_geometry_3.tex`: main manuscript source
- `observer_geometry_3.refs.bib`: bibliography database
- `.zenodo.json`: draft Zenodo deposition metadata
- `CITATION.cff`: draft citation metadata
- `source/OG-III-paper-outline.md`: working outline snapshot
- `source/OG-Ideas.md`: idea parking lot snapshot
- `Makefile`: build pipeline for PDF and text exports

## Build Pipeline

### Requirements

- `pdflatex`
- `biber`
- `pandoc` (only required for `make txt`)

### Commands

```bash
make pdf txt
```

## License

Licensed under Creative Commons Attribution 4.0 International (`CC BY 4.0`).
See [`LICENSE`](./LICENSE).

Copyright © 2026 James Ross.
