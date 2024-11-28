Ubuntu Touch Porting Guide
==========================

Welcome to the Ubuntu Touch Porting Guide. This guide provides comprehensive information for porting Ubuntu Touch to new devices, serving both experienced developers and those new to porting.

DISCLAIMER
----------

This is not the official UBports porting guide. 
The guide you are reading here is a work-in-progress revision of the above. It is based on the original guide and on the information contained in the Halium Generic Build Tools scripts. There will almost certainly be both factual errors and important omissions at any given time during the revision process.
For more information, read porting-guide-work/README.md.

Quick Navigation
----------------

**Experienced Developers:**
  * :doc:`quick-start/index`
  * :doc:`modern-porting/standalone-kernel/index`
  * :doc:`debugging/index`
  * :doc:`finalize/index`

**New to Porting:**
  * :doc:`fundamentals/index`
  * :doc:`preparation/index`
  * :doc:`modern-porting/index`

Guide Structure
---------------

.. toctree::
   :maxdepth: 1
   :name: quickstart
   :caption: Quick Start

   quick-start/index

.. toctree::
   :maxdepth: 3
   :name: maintoc
   :caption: Main Guide

   fundamentals/index
   preparation/index
   modern-porting/index
   debugging/index
   finalize/index
   vendor-specific/index
   advanced-topics/index

.. toctree::
   :maxdepth: 2
   :name: additional
   :caption: Additional Resources

   legacy-porting/index
   resources/index

Getting Started
---------------

Choose your path based on your experience level:

**I'm an experienced developer:**
  Start with the :doc:`quick-start/index` guide for a streamlined porting process.

**I'm new to porting:**
  Begin with :doc:`fundamentals/index` to build a solid understanding of the porting process.

Contributing
------------

This guide is continuously improved by the Ubuntu Touch community. If you find any issues or want to contribute, please visit our `GitHub repository <https://github.com/ubports/docs>`_.

[The paragraph above is intended for the final published version of the guide. The version you are currently reading is not the official guide, but rather a WIP revision of it. If you wish to contribute thoughts and ideas, please consult the README.md file in the porting-guide-work/ directory.]
