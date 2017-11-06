.. _sdk_qtorganizer_detailfilter:

QtOrganizer DetailFilter
========================

The DetailFilter element provides a filter based around a detail value criterion.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`detail <sdk_qtorganizer_detailfilter_detail>` : Detail

Signals
-------

-  :ref:`onFilterChanged <sdk_qtorganizer_detailfilter_onFilterChanged>`\ ()

Detailed Description
--------------------

Simple example how to utilize :ref:`DetailFilter <sdk_qtorganizer_detailfilter>` element together with :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` and ListView elements:

.. code:: cpp

    Rectangle {
        height: 400; width: 400;
        OrganizerModel{
            id: organizer
            startPeriod: "2009-01-01"
            endPeriod: "2012-12-31"
            filter: todoFilter
        }
        Type {
            id: typeDetailToMatch
            type: Type.Todo
        }
        DetailFilter {
            id: todoFilter
            detail: typeDetailToMatch
        }
        ListView {
            width: parent.width; height: parent.height;
            model: organizer.items
            delegate: Text {text: displayLabel}
        }
    }

**See also** QOrganizerItemDetailFilter.

Property Documentation
----------------------

.. _sdk_qtorganizer_detailfilter_detail:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detail : :ref:`Detail <sdk_qtorganizer_detail>`                                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail instance used by this filter for matching.

Signal Documentation
--------------------

.. _sdk_qtorganizer_detailfilter_onFilterChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onFilterChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`QtOrganizer5::Filter::onFilterChanged <sdk_qtorganizer_filter_onFilterChanged>`.

