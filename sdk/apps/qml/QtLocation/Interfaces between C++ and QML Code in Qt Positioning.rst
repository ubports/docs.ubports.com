.. _sdk_qtlocation_interfaces_between_c++_and_qml_code_in_qt_positioning:

QtLocation Interfaces between C++ and QML Code in Qt Positioning
================================================================



The Category.category property is used to provide an interface between C++ and QML code. First a pointer to a Category object must be obtained from C++, then use the property() and setProperty() functions to get and set the ``category`` property. The following gets the QPlaceCategory representing this object from C++:

.. code:: cpp

    QPlaceCategory category = qmlObject->property("category").value<QPlaceCategory>();

The following sets the properties of this object based on a QPlaceCategory object from C++:

.. code:: cpp

    qmlObject->setProperty("category", QVariant::fromValue(category));

The ContactDetail.contactDetail property is used to provide an interface between C++ and QML code. First a pointer to a ContactDetail object must be obtained from C++, then use the property() and setProperty() functions to get and set the ``contactDetail`` property. The following gets the QPlaceContactDetail representing this object from C++:

.. code:: cpp

    QPlaceContactDetail contactDetail = qmlObject->property("contactDetail").value<QPlaceContactDetail>();

The following sets the properties of this object based on a QPlaceContactDetail object from C++:

.. code:: cpp

    qmlObject->setProperty("contactDetail", QVariant::fromValue(contactDetail));

The Place.place property is used to provide an interface between C++ and QML code. First a pointer to a Place object must be obtained from C++, then use the property() and setProperty() functions to get and set the ``place`` property. The following gets the QPlace representing this object from C++:

.. code:: cpp

    QPlace place = qmlObject->property("place").value<QPlace>();

The following sets the properties of this object based on a QPlace object from C++:

.. code:: cpp

    qmlObject->setProperty("place", QVariant::fromValue(place));

The PlaceAttribute.attribute property is used to provide an interface between C++ and QML code. First a pointer to a PlaceAttribute object must be obtained from C++, then use the property() and setProperty() functions to get and set the ``attribute`` property. The following gets the QPlaceAttribute representing this object from C++:

.. code:: cpp

    QPlaceAttribute placeAttribute = qmlObject->property("attribute").value<QPlaceAttribute>();

The following sets the properties of this object based on a QPlaceAttribute object from C++:

.. code:: cpp

    qmlObject->setProperty("attribute", QVariant::fromValue(placeAttribute));

The Icon.icon property is used to provide an interface between C++ and QML code. First a pointer to a Icon object must be obtained from C++, then use the property() and setProperty() functions to get and set the ``icon`` property. The following gets the QPlaceIcon representing this object from C++:

.. code:: cpp

    QPlaceIcon placeIcon = qmlObject->property("icon").value<QPlaceIcon>();

The following sets the properties of this object based on a QPlaceIcon object from C++:

.. code:: cpp

    qmlObject->setProperty("icon", QVariant::fromValue(placeIcon));

The User.user property is used to provide an interface between C++ and QML code. First a pointer to a User object must be obtained from C++, then use the property() and setProperty() functions to get and set the ``user`` property. The following gets the QPlaceUser representing this object from C++:

.. code:: cpp

    QPlaceUser placeUser = qmlObject->property("user").value<QPlaceUser>();

The following sets the properties of this object based on a QPlaceUser object from C++:

.. code:: cpp

    qmlObject->setProperty("user", QVariant::fromValue(placeUser));

The Ratings.ratings property is used to provide an interface between C++ and QML code. First a pointer to a Ratings object must be obtained from C++, then use the property() and setProperty() functions to get and set the ``ratings`` property. The following gets the QPlaceRating representing this object from C++:

.. code:: cpp

    QPlaceRatings placeRatings = qmlObject->property("ratings").value<QPlaceRatings>();

The following sets the properties of this object based on a QPlaceRatings object from C++:

.. code:: cpp

    qmlObject->setProperty("ratings", QVariant::fromValue(placeRatings));

The Supplier.supplier property is used to provide an interface between C++ and QML code. First a pointer to a Supplier object must be obtained from C++, then use the property() and setProperty() functions to get and set the ``supplier`` property. The following gets the QPlaceSupplier representing this object from C++:

.. code:: cpp

    QPlaceSupplier placeSupplier = qmlObject->property("supplier").value<QPlaceSupplier>();

The following sets the properties of this object based on a QPlaceSupplier object from C++:

.. code:: cpp

    qmlObject->setProperty("supplier", QVariant::fromValue(placeSupplier));

