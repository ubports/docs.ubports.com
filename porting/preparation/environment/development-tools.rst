.. _development-tools:

Development Tools
=================

Essential tools for managing and debugging the build environment and development process.

Quick Reference
---------------
Key tools are::

    # Build monitoring
    watch -n1 "free -h; df -h"   # Monitor RAM/storage
    ccache -s                    # Check compile cache stats
    time make -j$(nproc)         # Track build duration
    
    # Source management
    repo status                  # Check repo tree status
    git status -uno              # Check local changes
    
    # Environment verification
    printenv | grep ANDROID      # Check Android env vars
    which adb fastboot repo      # Verify basic tools

Build Environment Tools
-----------------------

System Monitoring
^^^^^^^^^^^^^^^^^
Essential tools for tracking system resources::

    htop               # Process/CPU monitoring
    iotop              # I/O usage monitoring
    df -h              # Storage usage
    free -h            # RAM usage
    
Compilation Tools
^^^^^^^^^^^^^^^^^
Tools for managing and debugging builds::

    # ccache configuration
    export USE_CCACHE=1
    export CCACHE_DIR=~/.ccache
    ccache -M 50G
    
    # Build logging
    make showcommands  # Show compile commands
    make -j$(nproc) 2>&1 | tee build.log  # Log build output

Source Management
^^^^^^^^^^^^^^^^^
Tools for source code management::

    # Repo tools
    repo sync --force-sync # Force clean sync
    repo status            # Tree status
    repo forall -c git clean -xfd  # Clean all repos
    
    # Git tools
    git status -uno       # Local changes
    git diff --cached     # Staged changes
    gitk                  # Visual history browser

Environment Validation
----------------------

Dependency Checking
^^^^^^^^^^^^^^^^^^^
Tools to verify build dependencies::

    # Check Android build tools
    python3 --version      # Python version
    
    # Check development tools
    which make gcc g++     # Basic toolchain
    which adb fastboot     # Android tools
    which repo git         # Source control

Environment Variables
^^^^^^^^^^^^^^^^^^^^^
Essential environment checks::

    # Android build environment
    echo $ANDROID_HOME
    echo $JAVA_HOME
    echo $PATH
    
    # Build configuration
    echo $USE_CCACHE
    echo $CCACHE_DIR
    echo $OUT

Storage Management
------------------
Tools for managing build storage::

    # Clean build files
    make clean           # Clean current build
    make clobber         # Full clean
    
    # Storage analysis
    du -sh *             # Directory sizes
    ncdu                 # Interactive disk usage
    
    # Cache management
    ccache -C            # Clear ccache
    rm -rf ~/.ccache     # Remove ccache completely

.. note::
    Regular monitoring of system resources and build progress helps identify issues early.

See Also
--------
* :ref:`environment-setup` - Initial environment configuration
* :ref:`build-systems` - Understanding build systems
* :ref:`android-architecture` - Android build system details