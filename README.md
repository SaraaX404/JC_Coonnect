# JC Connect

The Flutter app for the Jamaica College community: students, parents, teachers/coaches and old boys. Backend: the JSC school platform API (`../jsc_be`).

## Setup

Requires [fvm](https://fvm.app) and GNU make.

```bash
fvm install        # Flutter version from .fvmrc
make get
make run          # dev (env/dev.json); in VS Code pick "JC Connect (dev)"
```

## Environments

`env/dev.json` is committed. `env/prod.json` is git-ignored: copy `env/prod.json.example` and fill in the real values.

`env/dev.json` points at the backend on `localhost:8000` (`cd ../jsc_be && make up`). The iOS simulator reaches it directly; for an Android emulator or a USB phone run `adb reverse tcp:8000 tcp:8000` once per device connection.

## Everyday commands

| Command | Does |
| --- | --- |
| `make run` / `make run-prod` | run with `env/dev.json` (debug) or `env/prod.json` (release) |
| `make check` | format check, analyze, hard-coded string check, tests (what CI runs) |
| `make test` | tests; `make test t=test/widget_test.dart` for a subset |
| `make format` | format hand-written Dart |
| `make gen` | regenerate localisation code after editing `lib/l10n/app_en.arb` |

## Layout

`lib/src/app` (app shell), `lib/src/core` (theme, shared widgets), `lib/src/features/<feature>/{domain,data,presentation}`. Strings live in `lib/l10n/app_en.arb`.

Conventions and next steps are in [CLAUDE.md](CLAUDE.md).
