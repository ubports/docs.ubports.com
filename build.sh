#!/bin/bash

set -Eeou pipefail

# color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
PLAIN='\033[0m'

# check if virtualenv already exists
if [ -d "$HOME/ubportsdocsenv" ]; then
  echo -e "${GREEN}Build environment found.${PLAIN}"
  . ~/ubportsdocsenv/bin/activate
else
  echo -e "${RED}No build environment found.${PLAIN}"
  echo -e "${YELLOW}Installing pip and virtualenv.${PLAIN}"
  sudo apt install python3-pip
  sudo -H pip3 install virtualenv
  echo -e "${YELLOW}Creating a virtual environment in ${HOME}/ubportsdocsenv.${PLAIN}"
  virtualenv ~/ubportsdocsenv
  . ~/ubportsdocsenv/bin/activate
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
