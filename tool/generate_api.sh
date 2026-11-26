#!/usr/bin/env bash
# Copies ../jsc_be/openapi.yml to api/openapi.yaml (when the backend is
# checked out next to this repo) and regenerates packages/jc_api from it.
# Commit the output. FVM= (empty) runs plain dart, as in CI.
set -euo pipefail
cd "$(dirname "$0")/.."
if [ -f ../jsc_be/openapi.yml ]; then cp ../jsc_be/openapi.yml api/openapi.yaml; fi
cd packages/jc_api
DART="${FVM-fvm} dart"
rm -rf lib
$DART run tool/normalize_openapi.dart ../../api/openapi.yaml ../../api/openapi.normalized.json
$DART run swagger_parser -f ../../api/swagger_parser.yaml
$DART run build_runner build
