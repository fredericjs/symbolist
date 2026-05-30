# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.0] - 2026-05-30

### Added

- `print-symbols` now accepts a `level:` parameter (default `2`) that controls
  the heading level of the "Latin symbols" and "Greek symbols" section titles.
  Pass `level: 1` to render them at the same size as top-level chapter
  headings, or any other depth that matches your document's hierarchy. The
  default value is unchanged, so existing documents render identically.
- `print-symbols` now accepts an `upright:` parameter (default `true`) that
  controls whether the symbol column is forced into upright (roman) math style
  via `math.upright(...)`. Pass `upright: false` to keep the math italics of
  variables (e.g. `$A_t$` stays italic). Units are always rendered upright.
  The default value preserves the previous behaviour.
- `print-symbols` now accepts a `numbering:` parameter (default `auto`) that
  is forwarded to the section-title `heading(...)` calls. The default `auto`
  inherits whatever `set heading(numbering: ...)` is in effect in the
  surrounding document (existing behaviour). Pass `numbering: none` to
  suppress the section-title numbering even when the rest of the document is
  numbered — useful for front-matter symbol lists. Any value accepted by
  `heading.numbering` is forwarded verbatim.

## [0.1.0] - 2026-03-16

Initial version
