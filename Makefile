# Every Flutter and Dart command goes through fvm (version pinned in .fvmrc).
# CI has Flutter on PATH already and runs `make check FVM=`.
FVM ?= fvm
FLUTTER := $(FVM) flutter
DART := $(FVM) dart
t ?= test
# Hand-written Dart only: generated files keep the generator's formatting.
SOURCES = $$(find lib test tool -name '*.dart' ! -path 'lib/l10n/generated/*' 2>/dev/null)

.PHONY: get gen format format-check analyze test check run

get:
	$(FLUTTER) pub get

# Regenerates lib/l10n/generated from the ARB files.
gen:
	$(FLUTTER) gen-l10n

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

run:
	$(FLUTTER) run
