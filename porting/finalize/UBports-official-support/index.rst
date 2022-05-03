.. _OfficialSupport:

Get your port officially supported
==================================

Having your port officially supported comes with certain benefits, such as:

* Official UBports installer support to allow easier installation of your port
* Port system images are getting built via our CI infrastructure and delivered as OTA updates
* Daily built *devel* images, which allows for easy testing of the latest state of Ubuntu Touch
* UBports takes care of hosting all of the port's different release channels and images

If you are willing to maintain the port, you can get it officially supported by UBports, if certain requirements are met.

Requirements
************

.. warning::
    Failure to comply with these requirements **will** cause your support request to get denied.

    Additionally already officially supported ports can get their official status revoked.

Port
----

Your port MUST meet the requirements of the :ref:`PortSupportRequirements`.

Maintainer
----------

Not only the port but also **you** have to meet certain requirements:

* UBports is a community project

  * You need to follow its `Code of Conduct`_ to ensure we all can work together in harmony

* Ports are never really complete, you need to provide your continued support:

  * Apply security patches
  * Fix bugs reported

* Do not overburden yourself

  * There is no strict limit, but you should not maintain a lot of different ports to ensure you do not burn yourself out
  * If you are not using a device anymore or do not find the time or motivation to work on a certain port, it is not a shame to drop official maintainer status and let someone else carry over

Submitting your port
********************

Ensure you meet the requirements and prepared the required changes for:
  - `UBports Installer config`_
  - `Ubuntu Touch device page`_

Please submit the below template filled out to `devrel@ubports.com <mailto:devrel@ubports.com?subject=[PORT SUBMISSION] for DEVICENAME>`_.

To help us out with organization, please set the subject of the mail to ``[PORT SUBMISSION] for DEVICENAME``, replacing ``DEVICENAME`` with your actual device name.

Port submission template::

    Maintainer
      - Name:
      - Email:

    Device
      - Model:
      - Codename:
      - Halium version:

    Requirements
      - Link to UBports Installer configs pull request:
      - Link to Ubuntu Touch device page pull request:

    Repositories (if existing)
      - Kernel:
      - Android device tree (Halium/Recovery):
      - UBports device tree (GSI):

If you made it this far, thank you very much for all your work and dedication!

.. toctree::
    :maxdepth: 1

    port-support-requirements.rst

.. _Code of Conduct: https://ubports.com/code-of-conduct
.. _UBports Installer config: https://github.com/ubports/installer-configs
.. _Ubuntu Touch device page: https://gitlab.com/ubports/infrastructure/devices.ubuntu-touch.io