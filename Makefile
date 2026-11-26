# Every Flutter and Dart command goes through fvm (version pinned in .fvmrc).
# CI has Flutter on PATH already and runs `make check FVM=`.
FVM ?= fvm
FLUTTER := $(FVM) flutter
DART := $(FVM) dart
t ?= test
# Hand-written Dart only: generated files keep the generator's formatting.
SOURCES = $$(find lib test tool -name '*.dart' ! -path 'lib/l10n/generated/*' 2>/dev/null)

.PHONY: get gen api format format-check analyze test check run run-prod

get:
	$(FLUTTER) pub get

# Regenerates lib/l10n/generated from the ARB files.
gen:
	$(FLUTTER) gen-l10n

# Copies ../jsc_be/openapi.yml and regenerates packages/jc_api. Commit both.
api:
	FVM=$(FVM) tool/generate_api.sh

format:
	$(DART) format $(SOURCES)

format-check:
	$(DART) format --output=none --set-exit-if-changed $(SOURCES)

analyze:
	$(FLUTTER) analyze --fatal-infos --fatal-warnings

test:
	$(FLUTTER) test $(t)

check:
	$(MAKE) format-check
	$(MAKE) analyze
	$(DART) run tool/check_strings.dart
	$(MAKE) test

# Android emulators and USB phones reach the local backend (env/dev.json,
# localhost:8000) only through this forward; it resets when the device does.
# Ignored when no Android device is connected.
run:
	$(FLUTTER) run --dart-define-from-file=env/dev.json

run-prod:
	$(FLUTTER) run --release --dart-define-from-file=env/prod.json
