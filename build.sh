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
  echo -e "${GREEN}Activating virtual build environment found in \"$UBPORTSDOCSENV\".${PLAIN}"
  source $UBPORTSDOCSENV/bin/activate
else
  echo -e "${YELLOW}Build environment not found in \"$UBPORTSDOCSENV\" ... creating it.${PLAIN}"
  echo -e "${YELLOW}Installing pip and virtualenv (using sudo).${PLAIN}"
  # Check for apt or pacman
  if command -v apk &> /dev/null; then
      echo "Detected apk"
      sudo apk add python3 py3-pip py3-virtualenv
  elif command -v apt &> /dev/null; then
      echo "Detected apt"
      sudo apt install python3-pip python3-virtualenv
  elif command -v pacman &> /dev/null; then
      echo "Detected pacman"
      sudo pacman -S --noconfirm python-pip python-virtualenv
  else
      echo "Unsupported package manager. Please install the packages and create the virtualenv manually."
      exit 1
  fi
  echo -e "${YELLOW}Creating and activating a virtual build environment in \"$UBPORTSDOCSENV\".${PLAIN}"
  virtualenv $UBPORTSDOCSENV
  source $UBPORTSDOCSENV/bin/activate
  echo -e "${YELLOW}Installing build tools and prerequisites (using pip).${PLAIN}"
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
