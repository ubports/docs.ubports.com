.. _sdk_ubuntu_content_contenttransferhint:

Ubuntu.Content ContentTransferHint
==================================

Component that indicates that a transfer is active

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`activeTransfer <sdk_ubuntu_content_contenttransferhint_activeTransfer>` : var

Detailed Description
--------------------

This component shows that the transfer is currently running, and the source application is active. It blocks all input during that time. Place this component on top of your view.

See documentation for :ref:`ContentHub <sdk_ubuntu_content_contenthub>` to see an example

Property Documentation
----------------------

.. _sdk_ubuntu_content_contenttransferhint_activeTransfer:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| activeTransfer : var                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>` to monitor the status of.

This should be set to the currently active :ref:`ContentTransfer <sdk_ubuntu_content_contenttransfer>`, which will then cause the :ref:`ContentTransferHint <sdk_ubuntu_content_contenttransferhint>` to become visible while the transfer is in progress.

