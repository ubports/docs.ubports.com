#!/bin/bash

set -Eeou pipefail

# color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
PLAIN='\033[0m'

echo -e "${GREEN}Building...${PLAIN}"
rm -rf _build/
if [ "$(uname)" == "Linux" ]; then
  sphinx-build -Wa . _build/html -j `nproc --all` || exit $?
else
  sphinx-build -Wa . _build/html -j `sysctl -n hw.ncpu` || exit $?
fi
sphinx-build -Wab rediraffecheckdiff . _build/html

echo "Open _build/html/index.html in your browser to navigate through the docs"
