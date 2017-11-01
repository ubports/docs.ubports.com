Component that indicates that a transfer is active

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Content 1.1   |
+---------------------+-----------------------------+

Properties
----------

-  ****`activeTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransferHint#activeTransfer-prop>`__****
   : var

Detailed Description
--------------------

This component shows that the transfer is currently running, and the
source application is active. It blocks all input during that time.
Place this component on top of your view.

See documentation for
`ContentHub </sdk/apps/qml/Ubuntu.Content/ContentHub/>`__ to see an
example

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ activeTransfer : var                                            |
+--------------------------------------------------------------------------+

The `ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__
to monitor the status of.

This should be set to the currently active
`ContentTransfer </sdk/apps/qml/Ubuntu.Content/ContentTransfer/>`__,
which will then cause the
`ContentTransferHint </sdk/apps/qml/Ubuntu.Content/ContentTransferHint/>`__
to become visible while the transfer is in progress.

| 
