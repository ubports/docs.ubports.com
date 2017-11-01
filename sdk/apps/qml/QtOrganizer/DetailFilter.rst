The DetailFilter element provides a filter based around a detail value
criterion.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`detail </sdk/apps/qml/QtOrganizer/DetailFilter#detail-prop>`__****
   : Detail

Signals
-------

-  ****`onFilterChanged </sdk/apps/qml/QtOrganizer/DetailFilter#onFilterChanged-signal>`__****\ ()

Detailed Description
--------------------

Simple example how to utilize
`DetailFilter </sdk/apps/qml/QtOrganizer/DetailFilter/>`__ element
together with
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__ and
ListView elements:

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

+--------------------------------------------------------------------------+
|        \ detail : `Detail </sdk/apps/qml/QtOrganizer/Detail/>`__         |
+--------------------------------------------------------------------------+

This property holds the detail instance used by this filter for
matching.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onFilterChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`QtOrganizer5::Filter::onFilterChanged </sdk/apps/qml/QtOrganizer/Filter#onFilterChanged-signal>`__.

| 
