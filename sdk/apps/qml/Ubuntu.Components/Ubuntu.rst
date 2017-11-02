.. _sdk_ubuntu_components_ubuntu:
Ubuntu.Components Ubuntu
========================

Provides global object with different enums.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.2          |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`toolkitVersion <sdk_ubuntu_components_ubuntu_toolkitVersion-prop>`
   : uint16
-  :ref:`toolkitVersionMajor <sdk_ubuntu_components_ubuntu_toolkitVersionMajor-prop>`
   : uint16
-  :ref:`toolkitVersionMinor <sdk_ubuntu_components_ubuntu_toolkitVersionMinor-prop>`
   : uint16

Methods
-------

-  uint16
   **:ref:`version <sdk_ubuntu_components_ubuntu#version-method>`**\ (int
   *major*, int *minor*)

Detailed Description
--------------------

Enums
~~~~~

CaptionStyle enum
'''''''''''''''''

The enumeration configures the Captions component style.

+-----------------------+-------------------------------------------------------------------------------+
| Enum                  | Description                                                                   |
+=======================+===============================================================================+
| TitleCaptionStyle     | The Captions labels are configured to represent caption behavior.             |
+-----------------------+-------------------------------------------------------------------------------+
| SummaryCaptionStyle   | The Captions labels are configured to represent a summary-like description.   |
+-----------------------+-------------------------------------------------------------------------------+

Property Documentation
----------------------

.. _sdk_ubuntu_components_ubuntu_[read-only] toolkitVersion-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] toolkitVersion : uint16                             |
+--------------------------------------------------------------------------+

The property holds the version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

| 

.. _sdk_ubuntu_components_ubuntu_[read-only] toolkitVersionMajor-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] toolkitVersionMajor : uint16                        |
+--------------------------------------------------------------------------+

The property holds the major version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

| 

.. _sdk_ubuntu_components_ubuntu_[read-only] toolkitVersionMinor-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] toolkitVersionMinor : uint16                        |
+--------------------------------------------------------------------------+

The property holds the minor version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_ubuntu_uint16 version-method:

+--------------------------------------------------------------------------+
|        \ uint16 version(int *major*, int *minor*)                        |
+--------------------------------------------------------------------------+

The function builds a version identifier using a major and minor
components.

This QML method was introduced in Ubuntu.Components 1.3.

| 
