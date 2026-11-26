# JC Connect

The Flutter app for the Jamaica College community: students, parents, teachers/coaches and old boys. Backend: the JSC school platform API (`../jsc_be`).

## Setup

Requires [fvm](https://fvm.app) and GNU make.

```bash
fvm install        # Flutter version from .fvmrc
make get
make run
```

## Everyday commands

| Command | Does |
| --- | --- |
| `make check` | format check, analyze, hard-coded string check, tests (what CI runs) |
| `make test` | tests; `make test t=test/widget_test.dart` for a subset |
| `make format` | format hand-written Dart |
| `make gen` | regenerate localisation code after editing `lib/l10n/app_en.arb` |

## Layout

`lib/src/app` (app shell), `lib/src/core` (theme, shared widgets), `lib/src/features/<feature>/{domain,data,presentation}`. Strings live in `lib/l10n/app_en.arb`.

Conventions and next steps are in [CLAUDE.md](CLAUDE.md).
