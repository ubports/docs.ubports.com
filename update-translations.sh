#!/bin/bash

source languages.sh

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
  sudo apt install python3-pip python3-virtualenv
  echo -e "${YELLOW}Creating a virtual environment in ${HOME}/ubportsdocsenv.${PLAIN}"
  python3 -m virtualenv ~/ubportsdocsenv --python=python3
  . ~/ubportsdocsenv/bin/activate
  echo -e "${YELLOW}Installing build tools and prerequisites.${PLAIN}"
  pip install sphinx sphinx_rtd_theme sphinx-intl
fi
echo -e "${GREEN}Building...${PLAIN}"
sphinx-build -Wa . locales/pot -b gettext -j `nproc --all`
echo -e "${GREEN}Building po-files${PLAIN}"
for LANGUAGE in $LANGUAGES; do
  sphinx-intl update -l $LANGUAGE || echo -e "${YELLOW}Failed to rebuild $LANGUAGE, continuing anyway${PLAIN}"
done 
