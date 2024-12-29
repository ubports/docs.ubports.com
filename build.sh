#!/bin/bash

set -Eeou pipefail

# fold me :) (in vscode vscodium etc)
#region DEFAULTS_AND_COMMAND_LINE_ARGUMENTS
# Parse command-line arguments for flags
verbose=false
UBPORTSDOCSENV=${UBPORTSDOCSENV:-"$HOME/ubportsdocsenv"}
while [[ $# -gt 0 ]]; do
  case $1 in
    --verbose)
      verbose=true
      shift
      ;;
    --env)
      # If --env flag is passed, set UBPORTSDOCSENV to the next argument value
      UBPORTSDOCSENV=${2-$UBPORTSDOCSENV}
      shift 2
      ;;
    *)
      shift
      ;;
  esac
done
#endregion DEFAULTS_AND_COMMAND_LINE_ARGUMENTS

#region VARIABLES & FUNCTIONS
#region COLOR_CODES
#region COLOR_CODES_CONSTANTS
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
PLAIN='\033[0m'

SUCCESS=$GREEN
WARNING=$YELLOW
ERROR=$RED
PLAIN_TEXT=$PLAIN
#endregion COLOR_CODES_CONSTANTS

echo_color(){
  local text="$1"
  local start_color_code="${2}"
  local end_color_code="${3:-$PLAIN}" 

  echo -e "${start_color_code}${text}${end_color_code}"
}
echo_plain(){
  local text="$1"
  echo_color "$text" "$PLAIN"
}
echo_success(){
  local text="$1"
  echo_color "$text" "$GREEN"
}
echo_warning(){
  local text="$1"
  echo_color "$text" "$YELLOW"
}
echo_error(){
  local text="$1"
  echo_color "$text" "$RED"
}
#endregion COLOR_CODES

#region INSTALL_DEPENDENCIES
# DEPENDENCIES
APK_PACKAGES="python3 py3-pip py3-virtualenv"
APT_PACKAGES="python3-pip python3-virtualenv"
PACMAN_PACKAGES="python-pip python-virtualenv"

# Function to install packages via apk (with silent installation)
install_via_apk() {
    echo_plain "Detected apk"
    
    # Check if packages are already installed
    for package in $APK_PACKAGES; do
        if ! apk info -e "$package" &> /dev/null; then
            echo_warning "Package $package is not installed. Installing..."
            # Install silently, redirecting output to /dev/null, but keep errors
            if sudo apk add "$package" &> /dev/null; then
                echo_plain "Package $package installed successfully."
            else
                echo_error "Failed to install $package."
            fi
        else
            echo_plain "$package is already installed."
        fi
    done
}

# Function to install packages via apt (with silent installation)
install_via_apt() {
    echo_plain "Detected apt"
    
    # Check if packages are already installed
    for package in $APT_PACKAGES; do
        if ! dpkg -l | grep -q "$package"; then
            echo_warning "Package $package is not installed. Installing..."
            # Install silently, redirecting output to /dev/null, but keep errors
            if sudo apt install -y "$package" &> /dev/null; then
                echo_plain "Package $package installed successfully."
            else
                echo_error "Failed to install $package."
            fi
        else
            echo_plain "$package is already installed."
        fi
    done
}

# Function to install packages via pacman (with silent installation)
install_via_pacman() {
    echo_plain "Detected pacman"
    
    # Check if packages are already installed
    for package in $PACMAN_PACKAGES; do
        if ! pacman -Qi "$package" &> /dev/null; then
            echo_warning "Package $package is not installed. Installing..."
            # Install silently, redirecting output to /dev/null, but keep errors
            if sudo pacman -S --noconfirm "$package" &> /dev/null; then
                echo_plain "Package $package installed successfully."
            else
                echo_error "Failed to install $package."
            fi
        else
            echo_plain "$package is already installed."
        fi
    done
}


# Function to install dependencies for most Linux systems
install_dependencies_for_most_linux_systems() {
  echo_success "Checking dependencies"

  if command -v apk &> /dev/null; then
      install_via_apk
  elif command -v apt &> /dev/null; then
      install_via_apt
  elif command -v pacman &> /dev/null; then
      install_via_pacman
  else
      echo_error "Unsupported package manager. Please install the packages and create the virtualenv manually."
      exit 1
  fi
}
#endregion INSTALL_DEPENDENCIES

#region PREPARE_VIRTUALENV
prepare_virtualenv_for_python(){
  # check if virtualenv already exists
  if [ -d "$UBPORTSDOCSENV" ]; then
    echo_success "Activating virtual build environment found in \"$UBPORTSDOCSENV\"."

    source $UBPORTSDOCSENV/bin/activate
  else
    echo_warning "Build environment not found in \"$UBPORTSDOCSENV\" ... creating it."
    echo_warning "Creating and activating a virtual build environment in \"$UBPORTSDOCSENV\"."

    virtualenv $UBPORTSDOCSENV
    source $UBPORTSDOCSENV/bin/activate

    echo_warning "Installing build tools and prerequisites (using pip)."

    pip3 install -r requirements.txt
  fi
}
#endregion PREPARE_VIRTUALENV

#region BUILD
wrapper_build_documentation(){
  rm -rf _build/
  if [ "$(uname)" == "Linux" ]; then
    sphinx-build -Wa . _build/html -j `nproc --all` || exit $?
  else
    sphinx-build -Wa . _build/html -j `sysctl -n hw.ncpu` || exit $?
  fi
  sphinx-build -Wab rediraffecheckdiff . _build/html
}
build_documentation(){
  echo_success "Building..."

  if [ "$verbose" = true ]; then
    wrapper_build_documentation
  else
    wrapper_build_documentation >/dev/null 2>&1
  fi

  echo_plain "Open _build/html/index.html in your browser to navigate through the docs"
}
#endregion BUILD

#endregion

install_dependencies_for_most_linux_systems
prepare_virtualenv_for_python
build_documentation


