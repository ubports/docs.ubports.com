#!/bin/bash
# check if virtualenv already exists
if [ -d "$HOME/ubportsdocsenv" ]; then
  echo "Build environment found"
  . ~/ubportsdocsenv/bin/activate
else
  echo "No build environment found. Creating..."
  # install prerequisites
  sudo apt install python-pip
  sudo pip install virtualenv
  # create virtualenv
  virtualenv ~/ubportsdocsenv
  . ~/ubportsdocsenv/bin/activate
  # install build tools
  sudo pip install sphinx sphinx_rtd_theme recommonmark
fi
# build
echo "Building..."
sphinx-build -Wa . _build
exit $?
