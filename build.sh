#!/bin/bash

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
  sudo apt install python-pip
  sudo -H pip install virtualenv
  echo -e "${YELLOW}Creating a virtual environment in ${HOME}/ubportsdocsenv.${PLAIN}"
  virtualenv ~/ubportsdocsenv
  . ~/ubportsdocsenv/bin/activate
  echo -e "${YELLOW}Installing build tools and prerequisites.${PLAIN}"
  pip install -r requirements.txt
fi
echo -e "${GREEN}Building...${PLAIN}"
if [ "$(uname)" == "Darwin" ]; then
  sphinx-build -Wa . _build/html -j `sysctl -n hw.ncpu`
else
  sphinx-build -Wa . _build/html -j `nproc --all`
fi
exit $?
