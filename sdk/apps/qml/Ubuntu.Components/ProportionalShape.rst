Extended UbuntuShape mostly used for icons and vignettes.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Detailed Description
--------------------

The
`ProportionalShape </sdk/apps/qml/Ubuntu.Components/ProportionalShape/>`__
is an extended
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__ with a
fixed aspect ratio (16:15), a relative radius and a PreserveAspectCrop
source fill mode. Changing the width implies an update of height and
radius, and changing the height implies an update of width and radius.
The goal being to keep the same proportion between width, height and
radius whatever the size.
