Ubuntu Touch Porting Guide
==========================

Welcome to the Ubuntu Touch Porting Guide. This guide supports both experienced developers and those new to porting.

DISCLAIMER
----------

This is not the official UBports porting guide. The guide you are reading here is a work-in-progress revision of the above. It is based on the original guide and on the information contained in the Halium Generic Build Tools scripts. There will almost certainly be both factual errors and important omissions at any given time during the revision process. For more information, read porting-guide-work/README.md.

Choose Your Path
----------------

**I'm an Experienced Developer**
    Already familiar with Android development and Linux systems? Start here:

    1. :doc:`quick-start/index`
       *Quick setup and essential commands*

    2. :doc:`modern-porting/standalone-kernel/index`
       *Direct path to kernel-based porting*

    3. :doc:`debugging/troubleshooting/index`
       *Solutions for common issues*

**I'm New to Porting**
    New to mobile Linux development? Follow this path:

    1. :doc:`fundamentals/index`
       *Core concepts and architecture*

    2. :doc:`preparation/index`
       *Environment setup and device selection*

    3. :doc:`modern-porting/index`
       *Step-by-step porting process*

**I Need Specific Information**
    Looking for particular details?

    * :doc:`resources/deviceinfo-reference`
      *Complete device configuration reference*
    
    * :doc:`debugging/index`
      *Debugging and hardware configuration*
    
    * :doc:`vendor-specific/index`
      *Vendor-specific challenges and solutions*

Decision Flowchart
------------------

.. mermaid::

    flowchart TD
        A[Start Porting] -->B{Android/Linux Experience?}
        B -->|Experienced| C{Modern Device?}
        B -->|New to Porting| D[Read Fundamentals]
        C -->|Yes Android 9+| E[Quick Start Guide]
        C -->|No Pre-Android 9| F[Legacy Porting]
        D -->G[Preparation Guide]
        E -->H{GSI Compatible?}
        H -->|Yes| I[Standalone Kernel Method]
        H -->|No| J[Full System Build]
        I -->K[Debug & Configure]
        J -->K
        F -->K
        G -->K
        K -->L[Finalize Port]

    style E fill:#90EE90
    style I fill:#90EE90
    style J fill:#FFB6C1
    style F fill:#FFB6C1
    style K fill:#87CEEB

Guide Structure
---------------

.. toctree::
   :maxdepth: 1
   :name: quickstart
   :caption: Quick Start

   quick-start/index

.. toctree::
   :maxdepth: 2
   :name: maintoc
   :caption: Main Guide

   fundamentals/index
   preparation/index
   modern-porting/index
   debugging/index
   finalize/index
   vendor-specific/index

.. toctree::
   :maxdepth: 2
   :name: additional
   :caption: Additional Resources

   legacy-porting/index
   resources/index

Navigation Tips
---------------

* Use the left sidebar for section navigation
* Look for "Quick Reference" sections in each chapter for essential information
* Watch for "See Also" links at the bottom of pages for related content
* Follow "Next Steps" recommendations to progress through the guide

Getting Help
------------

If you get stuck:

1. Check the :doc:`debugging/troubleshooting/index`
2. Review relevant :doc:`vendor-specific/index` documentation
3. Search the :doc:`resources/index` section
4. Join the UBports porting community on Telegram or Matrix