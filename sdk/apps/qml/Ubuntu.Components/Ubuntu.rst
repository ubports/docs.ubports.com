Provides global object with different enums.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.2          |
+---------------------+--------------------------------+

Properties
----------

-  ****`toolkitVersion </sdk/apps/qml/Ubuntu.Components/Ubuntu#toolkitVersion-prop>`__****
   : uint16
-  ****`toolkitVersionMajor </sdk/apps/qml/Ubuntu.Components/Ubuntu#toolkitVersionMajor-prop>`__****
   : uint16
-  ****`toolkitVersionMinor </sdk/apps/qml/Ubuntu.Components/Ubuntu#toolkitVersionMinor-prop>`__****
   : uint16

Methods
-------

-  uint16
   ****`version </sdk/apps/qml/Ubuntu.Components/Ubuntu#version-method>`__****\ (int
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

+--------------------------------------------------------------------------+
|        \ [read-only] toolkitVersion : uint16                             |
+--------------------------------------------------------------------------+

The property holds the version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] toolkitVersionMajor : uint16                        |
+--------------------------------------------------------------------------+

The property holds the major version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] toolkitVersionMinor : uint16                        |
+--------------------------------------------------------------------------+

The property holds the minor version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ uint16 version(int *major*, int *minor*)                        |
+--------------------------------------------------------------------------+

The function builds a version identifier using a major and minor
components.

This QML method was introduced in Ubuntu.Components 1.3.

| 
