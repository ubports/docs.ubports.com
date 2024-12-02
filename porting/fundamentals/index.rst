.. _fundamentals:

Fundamentals of Ubuntu Touch Porting
====================================

This section builds the foundational knowledge needed for successful Ubuntu Touch porting. Choose your learning path based on your current understanding.

Learning Paths
--------------

.. mermaid::

    flowchart LR
        A[Start Here] --> B{Prior Knowledge?}
        B -->|Android Development| C[Hardware Abstraction]
        B -->|Linux Systems| D[Android Architecture]
        B -->|Neither| E[Complete Path]
        C --> F[Ubuntu Touch Architecture]
        D --> F
        E --> D
        E --> C
        F --> G[Build Systems]
        G --> H[Ready to Port]

Quick Start Options
-------------------

**Already Know Android Development?**
    Start with :ref:`hardware-abstraction` to understand Ubuntu Touch's hardware interface.

**Familiar with Linux Systems?**
    Begin with :ref:`android-architecture` to learn Android's role in Ubuntu Touch.

**Need Complete Background?**
    Follow the sections in order for comprehensive understanding.

Core Concepts Overview
----------------------

1. :ref:`android-architecture`

   * Android system structure
   * Hardware interfaces
   * System services
   * *Time estimate: 30 minutes*

2. :ref:`halium-overview`

   * Middleware purpose
   * Version compatibility
   * System integration
   * *Time estimate: 45 minutes*

3. :ref:`hardware-abstraction`

   * HAL concepts
   * Driver integration
   * Binary interfaces
   * *Time estimate: 1 hour*

4. :ref:`ubuntu-touch-architecture`

   * System components
   * Integration points
   * Service management
   * *Time estimate: 45 minutes*

5. :ref:`build-systems`

   * Build methods
   * Tool requirements
   * Process workflow
   * *Time estimate: 1 hour*

Next Steps
----------

After completing the fundamentals:

**Ready to start?**
    → :doc:`../preparation/index`

**Want implementation details?**
    → :doc:`../modern-porting/index`

**Need specific information?**
    → :doc:`../resources/index`

Quick Reference
---------------
Experienced developers familiar with Android internals and HAL can skip to:

- :doc:`../modern-porting/index`
- :doc:`../vendor-specific/index`

Detailed Guide
--------------
New to porting? Follow these sections in order:

.. toctree::
   :maxdepth: 2

   android-architecture
   halium-overview
   hardware-abstraction
   ubuntu-touch-architecture
   build-systems

Prerequisites
-------------
- Basic understanding of Linux systems
- Familiarity with Android devices
- Command line experience
- Basic programming knowledge

Next Steps
----------
After understanding these fundamentals, proceed to:

- :doc:`../preparation/index`
- :doc:`../modern-porting/index`
