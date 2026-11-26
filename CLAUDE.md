# CLAUDE.md — JC Connect mobile app (Flutter)

Rules for anyone (human or AI agent) changing this repository. Read this before every task.

**JC Connect** is the community app for Jamaica College: students, parents, teachers/coaches and old boys. The backend is the JSC school platform API in `../jsc_be/` (Django + DRF, multi-tenant, OpenAPI schema in `../jsc_be/openapi.yml`). Never edit the backend from here.

Conventions follow the sibling apps `../paw-book/tailcare-mobile` (the stricter reference: read its `CLAUDE.md` when unsure) and `../TeacherManager/teacher_manager_mobile` (the `lib/src/` layout).

## Commands

Flutter and Dart run through **fvm** (version pinned in `.fvmrc`, 3.50.1).

```bash
make get        # fvm flutter pub get
make gen        # regenerate lib/l10n/generated from the ARB file
make format     # dart format (hand-written code only)
make check      # format check, analyze (infos are fatal), check_strings, tests. CI runs this.
make test       # all tests; make test t=test/some_test.dart for a subset
make run        # fvm flutter run
```

Run `make check` before you say a change is done.

## Where things are

```
lib/
  main.dart                     runApp only
  l10n/                         app_en.arb, l10n.dart (context.l10n), generated/ (committed, never edited)
  src/
    app/app.dart                MaterialApp.router: theme, localisation
    app/router.dart             GoRouter: every route and its screen
    core/                       generic building blocks, no feature knowledge
      theme/                    JcColors, JcTextStyles
      widgets/                  Jc* components used by 2+ features (JcScaffold, JcButton, JcInput, JcPanel…)
      routing/routes.dart       Routes: every path (Routes.event(id))
      utils/show_message.dart   showMessage (snackbar)
    features/<name>/
      domain/                   pure Dart types (JcRole, SignUpData, EventRecord)
      data/                     data sources; today only mock_<name>.dart demo content
      presentation/             screens; presentation/widgets/ for widgets only this feature uses
tool/check_strings.dart         fails CI on hard-coded user-facing strings
```

Features today: `auth` (welcome, login, reset password), `onboarding` (sign-up flow: role → account → verify → role details → terms → review → submitted), `events` (list, calendar, detail, donation), `education` (subjects, lesson overview).

## Rules

### Principles
- **KISS / YAGNI.** Build what the task needs, nothing "for later". No interfaces with one implementation, no use-case classes that only forward a call.
- **Smallest complete change.** Touch only what the task needs, but finish it: strings, tests, this file if a convention changed.
- **Figma is the visual truth.** File `UJQtvLPbyeS4uIIqyWYH1T` (Nexspace-Education), page "Mobile App": sections "Login" (welcome, login, MFA, password reset, system states) and "Registration Flow". Read exact values with the Figma MCP (`get_design_context`), match spacing, copy, states and field order; don't redesign. Download assets into `assets/` (icons `assets/icons/*.svg`, rendered with `flutter_svg`); never reference Figma asset URLs. The `skills/figma-onboarding-validation` workflow applies to onboarding UI.

### Structure
- Import direction: `app` → `features` → `core`. `core` never imports a feature.
- Navigate with go_router: `context.push(Routes.x)`. A feature never imports another feature's screens; add the path to `Routes` and the `GoRoute` to `app/router.dart`. Pass ids in the path, not objects (`Routes.event(id)`). Dialogs and sheets still close with `Navigator.pop`.
- A widget used by two or more features lives in `core/widgets`; otherwise in the feature's `presentation/widgets`. Search before writing a new one; extend the existing widget instead of copying it.
- One public widget or class per file (small private helpers can stay). Files `snake_case.dart`; screens end in `Screen`.
- Widgets are classes, not functions returning widgets.
- Package imports only (`package:jc_connect_app/...`). Import Material from `package:material_ui/material_ui.dart`, never `package:flutter/material.dart` (deprecated; deprecated APIs are analyzer errors).

### Localisation
- **No hard-coded user-facing strings.** Every visible or spoken string comes from `lib/l10n/app_en.arb` through `context.l10n`. `tool/check_strings.dart` fails `make check` otherwise.
- Every key has an `@key` description. Name keys `<screen><Purpose>` (`loginForgotPassword`); shared ones start with `common`, bottom nav with `nav`, roles with `role`.
- Use ICU placeholders, `plural` and `select`. Never concatenate translated pieces into a sentence.
- Logic never compares against a translated label (see `_allCategories` in `events_screen.dart`).
- Only English for now. Adding a language = one `app_<locale>.arb` file; if it needs more, the code is wrong.
- After editing the ARB file run `make gen` and commit the generated files.

### Demo data
- Content the backend will serve (events, lessons, subjects, grades, houses, classes, tracks, fundraising numbers) lives in `features/<f>/data/mock_<f>.dart`, **not** in the ARB file. It is not translated on purpose and is excluded from the string check.
- When an endpoint exists, replace the mock with real data; delete the mock constant once nothing uses it.

### Theme
- Theme lives in `core/theme/jc_theme.dart` (used by the app and `test/helpers/pump_app.dart`). Fonts are bundled: Inter is the default; page headings use Barlow Condensed via `JcTextStyles.title`; the code-screen footer uses Public Sans via `JcTextStyles.secureFooter`.
- Colours come from `JcColors`, text styles from `JcTextStyles`. A colour used in two places is a token. One-off Figma colours (avatar tints, Google blue) may stay inline next to their widget.

### Style
- Strict analysis (`strict-casts`, `strict-inference`, `strict-raw-types`), `prefer_const_*`, `require_trailing_commas`, `discarded_futures`. `make analyze` uses `--fatal-infos`.
- Comments explain **why**. No dead code, commented-out code, or TODOs without an issue link.
- Never `print`.

### Testing
- `flutter_test` (add `mocktail` when there is something to mock). Test behaviour: what the user sees and taps.
- Name tests `<what> <when> <expected>`. Every bug fix comes with a test that failed before the fix.
- Don't skip or delete a failing test to get green.

### Security
- No secrets in the repo. Tokens (once auth is wired) only in `flutter_secure_storage`.
- Never commit real personal data; fixtures use obviously fake data.

## Git
- Work on a branch, one commit per completed step, conventional messages (`feat(events): …`, `refactor: …`).
- `make check` passes before each commit.
