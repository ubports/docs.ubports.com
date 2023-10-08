#!/bin/bash

set -Eeou pipefail

# color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
PLAIN='\033[0m'

# build directory
## use environment variable if it is set, or default value
UBPORTSDOCSENV=${UBPORTSDOCSENV-"$HOME/ubportsdocsenv"}
## use commandline parameter if it is given
UBPORTSDOCSENV=${1-$UBPORTSDOCSENV}

# check if virtualenv already exists
if [ -d "$UBPORTSDOCSENV" ]; then
  echo -e "${GREEN}Build environment found in \"$UBPORTSDOCSENV\".${PLAIN}"
  source $UBPORTSDOCSENV/bin/activate
else
  echo -e "${YELLOW}Build environment not found in \"$UBPORTSDOCSENV\" ... creating it.${PLAIN}"
  echo -e "${YELLOW}Installing pip and virtualenv (using sudo).${PLAIN}"
  sudo apt install python3-pip python3-virtualenv
  echo -e "${YELLOW}Creating a virtual environment in \"$UBPORTSDOCSENV\".${PLAIN}"
  virtualenv $UBPORTSDOCSENV
  source $UBPORTSDOCSENV/bin/activate
  echo -e "${YELLOW}Installing build tools and prerequisites.${PLAIN}"
  pip3 install -r requirements.txt
fi
echo -e "${GREEN}Building...${PLAIN}"
rm -rf _build/
if [ "$(uname)" == "Linux" ]; then
  sphinx-build -Wa . _build/html -j `nproc --all` || exit $?
else
  sphinx-build -Wa . _build/html -j `sysctl -n hw.ncpu` || exit $?
fi
sphinx-build -Wab rediraffecheckdiff . _build/html

echo "Open _build/html/index.html in your browser to navigate through the docs"
