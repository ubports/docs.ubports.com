.. _ubuntu-touch-architecture:

Ubuntu Touch Architecture
=========================

Quick Reference
---------------
Key system components:

* GNU/Linux userspace with systemd
* Lomiri (Unity8) interface
* Halium hardware adaptation
* Android container for drivers
* Wayland/Mir display system
* Click package management

Essential paths::

    /usr/share/lomiri      # Interface components
    /var/lib/lxc/android   # Android container
    /opt/click.ubuntu.com  # Installed apps
    /etc/systemd          # Service configuration

Understanding Ubuntu Touch
--------------------------

System Overview
^^^^^^^^^^^^^^^
Ubuntu Touch combines a full Linux system with Android hardware support to create a mobile operating system. Think of it as having two main parts working together:

1. **Linux Side**

   * Runs your apps and interface
   * Manages your data
   * Handles user interaction
   
2. **Android Side**

   * Controls your hardware
   * Manages power
   * Handles sensors

This design lets Ubuntu Touch run standard Linux software while fully supporting mobile hardware.

System Overview
^^^^^^^^^^^^^^^
Ubuntu Touch combines a full Linux system with Android hardware support to create a mobile operating system. Think of it as having two main parts working together:

1. **Linux Side**

   * Runs your apps and interface
   * Manages your data
   * Handles user interaction
   
2. **Android Side**

   * Controls your hardware
   * Manages power
   * Handles sensors

This design lets Ubuntu Touch run standard Linux software while fully supporting mobile hardware.

System Integration Overview
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. mermaid::

   graph TB
      subgraph "Ubuntu Touch Userspace"
         A[Lomiri UI]
         B[Ubuntu Core Services]
         C[Applications]
      end
      
      subgraph "Halium Layer"
         D[libhybris]
         E[Android LXC Container]
      end
      
      subgraph "Android HAL"
         F[Hardware Services]
         G[Vendor Blobs]
         H[Device Drivers]
      end
      
      A --> B
      B --> D
      C --> B
      D --> E
      E --> F
      F --> G
      G --> H

This visual representation shows how:

* User applications and interface communicate with core services
* Core services connect to hardware through libhybris
* Android container provides hardware support
* Device drivers handle physical hardware

Core Components
---------------

1. System Foundation
^^^^^^^^^^^^^^^^^^^^
The base system provides core functionality:

**systemd Init System**
   Controls how everything starts up:

   * Manages services
   * Handles dependencies
   * Controls power states

Example service configuration::

    # /etc/systemd/system/lomiri.service
    [Unit]
    Description=Lomiri UI
    After=android-container.service

    [Service]
    Type=simple
    ExecStart=/usr/bin/lomiri

**AppArmor Security**
   Protects system and user data:

   * Confines applications
   * Controls file access
   * Manages permissions

Example profile structure::

    /etc/apparmor.d/
    ├── usr.bin.lomiri
    └── click-apps/
        └── app.name.version

2. User Interface
^^^^^^^^^^^^^^^^^
Lomiri provides the graphical interface:

**Display Server**
   * Mir handles graphics
   * Wayland protocol support
   * Hardware acceleration
   * Touch input

**Interface Components**
   * App launcher
   * System indicators
   * Notifications
   * Window management

Example configuration::

    # /etc/lomiri/display.conf
    [lomiri-display]
    scale-factor=2.0
    enable-overlays=true

3. Application System
^^^^^^^^^^^^^^^^^^^^^
Apps run in a contained environment:

**Click Packages**
   Self-contained application bundles:

   * Include all dependencies
   * Confined by AppArmor
   * Version controlled

Example package structure::

    myapp_1.0/
    ├── manifest.json
    ├── myapp.desktop
    └── lib/
        └── application files

**Content Sharing**
   Controlled data exchange:

   * Content hub
   * System services
   * Push notifications

Hardware Integration
--------------------

1. Halium Layer
^^^^^^^^^^^^^^^
Connects Linux to hardware:

* Runs Android container
* Manages hardware services
* Controls power states
* Handles updates

Example container structure::

    /var/lib/lxc/android/
    ├── config
    ├── rootfs/
    └── system.img

2. Device Adaptation
^^^^^^^^^^^^^^^^^^^^
Hardware-specific components:

* Device configuration
* Kernel modules
* Hardware quirks
* Sensor setup

Example configuration location::

    /etc/ubuntu-touch-session.d/
    └── device.conf

System Services
---------------

1. Core Services
^^^^^^^^^^^^^^^^
Essential system functions:

**Network Management**
   * WiFi control
   * Mobile data
   * Bluetooth
   * Tethering

**Power Management**
   * Battery monitoring
   * Suspend/resume
   * Thermal control
   * Performance scaling

**Media Handling**
   * Audio routing
   * Camera control
   * Video playback
   * Hardware codecs

2. User Services
^^^^^^^^^^^^^^^^
User-facing functionality:

**Account Services**
   * Online accounts
   * Sync services
   * Contact management

**Location Services**
   * GPS handling
   * Location plugins
   * Geolocation

Common Configurations
---------------------

1. Display Setup
^^^^^^^^^^^^^^^^
Configure screen properties::

    # /etc/ubuntu-touch-session.d/android.conf
    GRID_UNIT_PX=8
    QTWEBKIT_DPR=2.0
    NATIVE_ORIENTATION=portrait

2. Audio Routing
^^^^^^^^^^^^^^^^
Set up audio paths::

    # /etc/pulse/touch.pa
    load-module module-droid-card
    load-module module-droid-hidl

3. Network Configuration
^^^^^^^^^^^^^^^^^^^^^^^^
Configure networking::

    # /etc/netplan/00-touch.yaml
    network:
      version: 2
      renderer: NetworkManager

Development Considerations
--------------------------

1. Application Development
^^^^^^^^^^^^^^^^^^^^^^^^^^
Key points for app developers:

* Use Qt/QML for native apps
* Follow confinement rules
* Handle lifecycle events
* Support touch interaction

2. System Integration
^^^^^^^^^^^^^^^^^^^^^
Important for porters:

* Match HAL versions
* Configure hardware properly
* Handle power management
* Test all subsystems

3. Security Model
^^^^^^^^^^^^^^^^^
Critical security aspects:

* AppArmor profiles
* Service confinement
* Permission model
* Data protection

Troubleshooting
---------------

Common Issues
^^^^^^^^^^^^^
1. **Service Problems**

   * Check service status
   * Review logs
   * Verify permissions

2. **Hardware Integration**

   * Monitor Android container
   * Check HAL services
   * Verify drivers

3. **Performance Issues**

   * Check resource usage
   * Monitor thermal state
   * Review service timing

Debug Commands::

    # Check system status
    systemctl status lomiri
    
    # View container state
    lxc-info -n android
    
    # Monitor logs
    journalctl -f

Next Steps
----------

**Ready to build?**
    → :ref:`build-systems`

**Need to debug?**
    → :doc:`../debugging/index`

See Also
--------
* :ref:`halium-overview` - Hardware integration
* :ref:`hardware-abstraction` - HAL details
* :doc:`../debugging/configuration/display` - Display setup