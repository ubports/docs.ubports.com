.. _sdk_qtquick_qml_dynamic_view_ordering_tutorial_4_-_sorting_items:

QtQuick QML Dynamic View Ordering Tutorial 4 - Sorting Items
============================================================


Drag and drop isn't the only way items in a view can be re-ordered, using a DelegateModel it is also possible to sort items based on model data. To do that we extend our DelegateModel instance like this:

.. code:: qml

        DelegateModel {
            id: visualModel
            property var lessThan: [
                function(left, right) { return left.name < right.name },
                function(left, right) { return left.type < right.type },
                function(left, right) { return left.age < right.age },
                function(left, right) {
                    if (left.size == "Small")
                        return true
                    else if (right.size == "Small")
                        return false
                    else if (left.size == "Medium")
                        return true
                    else
                        return false
                }
            ]
            property int sortOrder: orderSelector.selectedIndex
            onSortOrderChanged: items.setGroups(0, items.count, "unsorted")
            function insertPosition(lessThan, item) {
                var lower = 0
                var upper = items.count
                while (lower < upper) {
                    var middle = Math.floor(lower + (upper - lower) / 2)
                    var result = lessThan(item.model, items.get(middle).model);
                    if (result) {
                        upper = middle
                    } else {
                        lower = middle + 1
                    }
                }
                return lower
            }
            function sort(lessThan) {
                while (unsortedItems.count > 0) {
                    var item = unsortedItems.get(0)
                    var index = insertPosition(lessThan, item)
                    item.groups = "items"
                    items.move(item.itemsIndex, index)
                }
            }
            items.includeByDefault: false
            groups: VisualDataGroup {
                id: unsortedItems
                name: "unsorted"
                includeByDefault: true
                onChanged: {
                    if (visualModel.sortOrder == visualModel.lessThan.length)
                        setGroups(0, count, "items")
                    else
                        visualModel.sort(visualModel.lessThan[visualModel.sortOrder])
                }
            }
            model: PetsModel {}
            delegate: dragDelegate
        }

Items in a DelegateModel are filtered into groups represented by the DelegateModelGroup type, normally all items in the model belong to a default items group but this default can be changed with the includeByDefault property. To implement our sorting we want items to first be added to an unsorted group from where we can transfer them to a sorted position in the items group. To do that we clear includeByDefault on the items group and set it on a new group name 'unsorted'.

.. code:: qml

            items.includeByDefault: false
            groups: VisualDataGroup {
                id: unsortedItems
                name: "unsorted"
                includeByDefault: true
            }

We sort the items by first finding the position in the items group to insert the first unsorted item and then transfer the item to the items group before moving it to the pre-determined index and repeat until the unsorted group is empty.

To find the insert position for an item we request a handle for the item from the unsorted group with the get function. Through the model property on this handle we can access the same model data that is available in a delegate instance of that item and compare against other items to determine relative position.

.. code:: qml

            function insertPosition(lessThan, item) {
                var lower = 0
                var upper = items.count
                while (lower < upper) {
                    var middle = Math.floor(lower + (upper - lower) / 2)
                    var result = lessThan(item.model, items.get(middle).model);
                    if (result) {
                        upper = middle
                    } else {
                        lower = middle + 1
                    }
                }
                return lower
            }
            function sort(lessThan) {
                while (unsortedItems.count > 0) {
                    var item = unsortedItems.get(0)
                    var index = insertPosition(lessThan, item)
                    item.groups = "items"
                    items.move(item.itemsIndex, index)
                }
            }

The lessThan argument to the sort function is a comparsion function which will determine the order of the list. In this example it can be one of the following:

.. code:: qml

            property var lessThan: [
                function(left, right) { return left.name < right.name },
                function(left, right) { return left.type < right.type },
                function(left, right) { return left.age < right.age },
                function(left, right) {
                    if (left.size == "Small")
                        return true
                    else if (right.size == "Small")
                        return false
                    else if (left.size == "Medium")
                        return true
                    else
                        return false
                }
            ]

A sort is triggered whenever new items are added to the unsorted DelegateModel which we are notified of by the onChanged handler. If no sort function is currently selected we simply transfer all items from the unsorted group to the items group, otherwise we call sort with the selected sort function.

.. code:: qml

            groups: VisualDataGroup {
                id: unsortedItems
                name: "unsorted"
                includeByDefault: true
                onChanged: {
                    if (visualModel.sortOrder == visualModel.lessThan.length)
                        setGroups(0, count, "items")
                    else
                        visualModel.sort(visualModel.lessThan[visualModel.sortOrder])
                }
            }

Finally when the selected sort order changes we can trigger a full re-sort of the list by moving all items from the items group to the unsorted group, which will trigger the onChanged handler and transfer the items back to the items group in correct order. Note that the onChanged handler will not be invoked recursively so there's no issue with it being invoked during a sort.

.. code:: qml

            property int sortOrder: orderSelector.selectedIndex
            onSortOrderChanged: items.setGroups(0, items.count, "unsorted")

Files:

-  tutorials/dynamicview/dynamicview4/ListSelector.qml
-  tutorials/dynamicview/dynamicview4/PetsModel.qml
-  tutorials/dynamicview/dynamicview4/dynamicview.qml
-  tutorials/dynamicview/dynamicview4/dynamicview4.qmlproject

`QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items </sdk/apps/qml/QtQuick/tutorials-dynamicview-dynamicview3/>`_ 
