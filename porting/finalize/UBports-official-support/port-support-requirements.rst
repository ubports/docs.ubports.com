.. _PortSupportRequirements:

Port support requirements
==================================

This document enumerates the requirements that must be met in order for devices to be deemed ship ready for UBports releases.
To be considered ready, port maintainers MUST meet the requirements presented in this document, including any documents incorporated via reference.

The use of “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “RECOMMENDED”, “MAY”, and “OPTIONAL” is per the IETF standard defined in :RFC:`2119`.

Hardware support
****************

Audio
-----

* All devices MUST support audio playback for media content.
* Phones MUST support in-call audio.
* Phones MUST support speaker audio.
* Tablet devices capable of in-call audio/speaker audio MUST support in-call/speaker audio.

Radio Interface Layer (RIL)
---

* All devices with RIL supported in their stock OS MUST support RIL for phone calls & data.
* All devices with RIL supported in their stock OS SHOULD support emergency calling with a SIM inserted (112/911).
* All devices with RIL supported in their stock OS SHOULD support emergency calling without a SIM inserted (112/911).
* Data-only devices (defined as devices that have a RIL but do not support telephony stack due to hardware/firmware restrictions) are EXEMPTED from phone & emergency dialing requirements.

Software support
****************

CVE
---

* Devices MUST support CVE patches for “high profile” exploits and vulnerabilities.
* Devices SHOULD receive regular CVE patches to the device kernel and dependencies.

Installer
---------
* Devices MUST support installation via `UBports Installer`_.

Recovery
--------

* Devices MUST support resetting to factory defaults.
* Devices MUST support updating via OTA.

Quality of Life
***************

Commit authorship
-----------------

* All non-original commits MUST have proper authorship attribution from the source it was taken from or adapted from.

Documentation
-------------

* The device MUST be listed at the `Ubuntu Touch device page`_; the device page needs to be kept up-to-date.

Stability
---------

* The device MUST NOT have abnormal battery drain.

Workflow
--------

* Force pushing branches SHOULD be avoided.
* In the event of a force pushed branch, backup branches of the pre-forced ``HEAD`` MUST be made.

Attaining exceptions
********************

Process
-------

* Device or software deviations from our core product (as described below) MUST be approved by the devrel team.
* Device or software exceptions SHOULD be made via change request to the `docs.ubports.com repository`_.
* All device or software exceptions that are granted MUST be documented below at the `Ubuntu Touch device page`_ for all affected devices.

Exceptions
**********

All currently granted exceptions should be listed in the following table. To request an exception, please submit a change to the `docs.ubports.com repository`_.

====  ==========  ================  ======
Date  Device/OEM  Section exempted  Reason
====  ==========  ================  ======
====  ==========  ================  ======

.. _docs.ubports.com repository: https://github.com/ubports/docs.ubports.com
.. _Ubuntu Touch device page: https://devices.ubuntu-touch.io/
.. _LineageOS charter: https://github.com/LineageOS/charter
.. _UBports Installer: https://github.com/ubports/ubports-installer