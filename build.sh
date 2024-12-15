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

# functions
# Function to install packages (apk)
install_via_apk() {
    echo "Detected apk"
    echo "Installing python3-pip and python3-virtualenv..."
    sudo apk add python3 py3-pip py3-virtualenv
}

# Function to install packages (pacman)
install_via_pacman() {
    echo "Detected pacman"
    echo "Installing python-pip and python-virtualenv..."
    sudo pacman -S --noconfirm python-pip python-virtualenv
}

# check if virtualenv already exists
if [ -d "$UBPORTSDOCSENV" ]; then
  echo -e "${GREEN}Build environment found in \"$UBPORTSDOCSENV\".${PLAIN}"
  source $UBPORTSDOCSENV/bin/activate
else
  echo -e "${YELLOW}Build environment not found in \"$UBPORTSDOCSENV\" ... creating it.${PLAIN}"
  echo -e "${YELLOW}Installing pip and virtualenv (using sudo).${PLAIN}"
  # Check for apk or pacman
  if command -v apk &> /dev/null; then
      install_via_apk
  elif command -v pacman &> /dev/null; then
      install_via_pacman
  else
      echo "Unsupported package manager. Please install the packages manually."
      exit 1
  fi
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