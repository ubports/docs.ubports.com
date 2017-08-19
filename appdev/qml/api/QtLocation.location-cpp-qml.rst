QtLocation.location-cpp-qml
===========================

.. raw:: html

   <h3>

Category - QPlaceCategory

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Category.category property is used to provide an interface between
C++ and QML code. First a pointer to a Category object must be obtained
from C++, then use the property() and setProperty() functions to get and
set the category property. The following gets the QPlaceCategory
representing this object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceCategory</span> category <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;category&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceCategory</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

The following sets the properties of this object based on a
QPlaceCategory object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;category&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(category));</pre>

.. raw:: html

   <h3>

ContactDetail - QDeclarativeContactDetail

.. raw:: html

   </h3>

.. raw:: html

   <p>

The ContactDetail.contactDetail property is used to provide an interface
between C++ and QML code. First a pointer to a ContactDetail object must
be obtained from C++, then use the property() and setProperty()
functions to get and set the contactDetail property. The following gets
the QPlaceContactDetail representing this object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceContactDetail</span> contactDetail <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;contactDetail&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceContactDetail</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

The following sets the properties of this object based on a
QPlaceContactDetail object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;contactDetail&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(contactDetail));</pre>

.. raw:: html

   <h3>

Place - QPlace

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Place.place property is used to provide an interface between C++ and
QML code. First a pointer to a Place object must be obtained from C++,
then use the property() and setProperty() functions to get and set the
place property. The following gets the QPlace representing this object
from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlace</span> place <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;place&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlace</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

The following sets the properties of this object based on a QPlace
object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;place&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(place));</pre>

.. raw:: html

   <h3>

PlaceAttribute - QPlaceAttribute

.. raw:: html

   </h3>

.. raw:: html

   <p>

The PlaceAttribute.attribute property is used to provide an interface
between C++ and QML code. First a pointer to a PlaceAttribute object
must be obtained from C++, then use the property() and setProperty()
functions to get and set the attribute property. The following gets the
QPlaceAttribute representing this object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceAttribute</span> placeAttribute <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;attribute&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceAttribute</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

The following sets the properties of this object based on a
QPlaceAttribute object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;attribute&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeAttribute));</pre>

.. raw:: html

   <h3>

Icon - QPlaceIcon

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Icon.icon property is used to provide an interface between C++ and
QML code. First a pointer to a Icon object must be obtained from C++,
then use the property() and setProperty() functions to get and set the
icon property. The following gets the QPlaceIcon representing this
object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceIcon</span> placeIcon <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;icon&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceIcon</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

The following sets the properties of this object based on a QPlaceIcon
object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;icon&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeIcon));</pre>

.. raw:: html

   <h3>

User - QPlaceUser

.. raw:: html

   </h3>

.. raw:: html

   <p>

The User.user property is used to provide an interface between C++ and
QML code. First a pointer to a User object must be obtained from C++,
then use the property() and setProperty() functions to get and set the
user property. The following gets the QPlaceUser representing this
object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceUser</span> placeUser <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;user&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceUser</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

The following sets the properties of this object based on a QPlaceUser
object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;user&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeUser));</pre>

.. raw:: html

   <h3>

Ratings - QPlaceRatings

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Ratings.ratings property is used to provide an interface between C++
and QML code. First a pointer to a Ratings object must be obtained from
C++, then use the property() and setProperty() functions to get and set
the ratings property. The following gets the QPlaceRating representing
this object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceRatings</span> placeRatings <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;ratings&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceRatings</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

The following sets the properties of this object based on a
QPlaceRatings object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;ratings&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeRatings));</pre>

.. raw:: html

   <h3>

Supplier - QPlaceSupplier

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Supplier.supplier property is used to provide an interface between
C++ and QML code. First a pointer to a Supplier object must be obtained
from C++, then use the property() and setProperty() functions to get and
set the supplier property. The following gets the QPlaceSupplier
representing this object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceSupplier</span> placeSupplier <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;supplier&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceSupplier</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

The following sets the properties of this object based on a
QPlaceSupplier object from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;supplier&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeSupplier));</pre>

.. raw:: html

   <!-- @@@location-cpp-qml.html -->
