QtLocation.location-places-backend
==================================

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QPlaceManager interface, provided to clients to allow access to
place information, depends directly on an implementation of
QPlaceManagerEngine. The engine provides the backend function
implementations which are called by the manager.

.. raw:: html

   </p>

.. raw:: html

   <p>

A places backend implementer needs to derive from QPlaceManagerEngine
and provide implementations for the virtual functions relevant for their
backend. Most of these functions are asynchronous and so implementers
will also need to derive the appropriate reply classes. The reply
objects are responsible for managing an asynchronous request; they are
used to notify when a request is complete and hold the results of that
request. QPlaceManagerEngine provides a default implementation for all
virtual functions. The default implementations for the asynchronous
functions return a reply that will emit the error() and finished()
signals at the next iteration through the event loop.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="implementing-inheriting-reply-objects">

Implementing/Inheriting Reply Objects

.. raw:: html

   </h2>

.. raw:: html

   <p>

A reply object would be inherited as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> SearchReply : <span class="keyword">public</span> <span class="type">QPlaceSearchReply</span>
   {
   <span class="keyword">public</span>:
   <span class="keyword">explicit</span> SearchReply(ManagerEngine <span class="operator">*</span>engine)
   : <span class="type">QPlaceSearchReply</span>(engine)<span class="operator">,</span> m_engine(engine){}
   <span class="operator">~</span>SearchReply();
   <span class="type">void</span> setResults(<span class="keyword">const</span> <span class="type">QList</span><span class="operator">&lt;</span><span class="type">QPlaceSearchResult</span><span class="operator">&gt;</span> <span class="operator">&amp;</span>results);
   <span class="type">void</span> setRequest(<span class="keyword">const</span> <span class="type">QPlaceSearchRequest</span> <span class="operator">&amp;</span>request);
   ...
   <span class="type">void</span> triggerDone(<span class="type">QPlaceReply</span><span class="operator">::</span>Error error <span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError<span class="operator">,</span>
   <span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>errorString <span class="operator">=</span> <span class="type">QString</span>());
   ManagerEngine <span class="operator">*</span>m_engine;
   };</pre>

.. raw:: html

   <p>

The implementation of a QPlaceManagerEngine must ensure that any signals
emitted by the reply objects are delayed until the request functions
have returned and the application code has a chance to connect those
signals to slots. The typical approach is to use
QMetaObject::invokeMethod() with a Qt::QueuedConnection to emit the
signals.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> SearchSuggestionReply<span class="operator">::</span>triggerDone(<span class="type">QPlaceReply</span><span class="operator">::</span>Error error<span class="operator">,</span>
   <span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>errorString)
   {
   <span class="keyword">if</span> (error <span class="operator">!</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError) {
   <span class="keyword">this</span><span class="operator">-</span><span class="operator">&gt;</span>setError(error<span class="operator">,</span>errorString);
   <span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(m_engine<span class="operator">,</span> <span class="string">&quot;error&quot;</span><span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>QueuedConnection<span class="operator">,</span>
   Q_ARG(<span class="type">QPlaceReply</span> <span class="operator">*</span><span class="operator">,</span><span class="keyword">this</span>)<span class="operator">,</span>
   Q_ARG(<span class="type">QPlaceReply</span><span class="operator">::</span>Error<span class="operator">,</span> error)<span class="operator">,</span>
   Q_ARG(<span class="type">QString</span><span class="operator">,</span> errorString));
   <span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(<span class="keyword">this</span><span class="operator">,</span> <span class="string">&quot;error&quot;</span><span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>QueuedConnection<span class="operator">,</span>
   Q_ARG(<span class="type">QPlaceReply</span><span class="operator">::</span>Error<span class="operator">,</span> error)<span class="operator">,</span>
   Q_ARG(<span class="type">QString</span><span class="operator">,</span> errorString));
   }
   <span class="keyword">this</span><span class="operator">-</span><span class="operator">&gt;</span>setFinished(<span class="keyword">true</span>);
   <span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(m_engine<span class="operator">,</span> <span class="string">&quot;finished&quot;</span><span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>QueuedConnection<span class="operator">,</span>
   Q_ARG(<span class="type">QPlaceReply</span> <span class="operator">*</span><span class="operator">,</span><span class="keyword">this</span>));
   <span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(<span class="keyword">this</span><span class="operator">,</span> <span class="string">&quot;finished&quot;</span><span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>QueuedConnection);
   }</pre>

.. raw:: html

   <p>

Note that the finished signals should always be emitted when a reply is
complete, even if an error has been encountered, that is, if there is an
error, both the error and finished signals should be emitted while if
there is no error, only the finished signals are emitted.

.. raw:: html

   </p>

.. raw:: html

   <p>

The protected functions of QPlaceSearchReply::setResults() and
QPlaceSearchReply::setRequest() are made publicly accessible so the
plugin can assign results and requests. Because these functions are not
publically exported, accessibility is not so much of an issue. An
alternative would have been to declare a friend class in SearchReply.

.. raw:: html

   </p>

.. raw:: html

   <p>

Typically the engine instance would be made the parent of the reply. If
the developer fails to discard the replies when finished, the engine can
clean those upon destruction. Commonly, the reply also has a pointer
reference back to the engine, which may be used to emit the
QPlaceManagerEngine::finished() and QPlaceManagerEngine::error()
signals. This is just one of many ways the reply could be implemented.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="icon-urls">

Icon URLs

.. raw:: html

   </h2>

.. raw:: html

   <p>

Icon URLs are provided through the
QPlaceManagerEngine::constructIconUrl() function. The expected behaviour
is that the engine will use the QPlaceIcon::parameters() in order to
construct an appropriate URL. When a QPlace object is returned from the
manager either from a search or a query to get place details, it is
expected the engine will correctly populate the parameters as necessary.

.. raw:: html

   </p>

.. raw:: html

   <p>

The backend is free to choose what the parameter key and values are,
however if a backend only ever has one URL per icon it is recommended
that the QPlaceIcon::SingleUrl be used as the key.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="categories">

Categories

.. raw:: html

   </h2>

.. raw:: html

   <p>

The categories of a manager engine are relatively static entities; for
engines accessing remote place datastores it may be desirable to cache
the category structure rather than querying a server every time
QPlaceManagerEngine::initializeCategories() is called. Depending on how
dynamic the categories are, always downloading the freshest set of
categories may be more appropriate.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="saving-places-to-the-manager">

Saving Places to the Manager

.. raw:: html

   </h2>

.. raw:: html

   <p>

A place generally cannot be saved directly between managers as is
because it contains manager specific data such as icons and categories.
In order to facilitate saving to one's own manager, engine implementers
should implement the QPlaceManagerEngine::compatiblePlace() function.
This function returns a copy of the input place with properties pruned
or modified as necessary such that the copy can be saved into manager.

.. raw:: html

   </p>

.. raw:: html

   <p>

Construction of a compatible place may involve ignoring certain
properties from the original place, for example if contact details are
not supported, these are left out of the compatible place. Other times
it may involve modifying certain properties, for example modifying the
icon parameters to facilitate copying or downloading of the original
place's icon to a location that the backend can access.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="cross-referencing-places-between-managers">

Cross-Referencing Places Between Managers

.. raw:: html

   </h2>

.. raw:: html

   <p>

Sometimes a situation may arise where we wish to cross-reference and
match places between managers. Such a situation may arise where one
manager provides read-only access to places (origin manager), while
another second r/w manager (destination manager) is used to save
selected favorites from the first. During a search of the origin
manager, we may want to know which ones have been 'favorited' into the
destination manager and perhaps display the customized favorite name
rather than the original name.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Alternative Identifier Cross-Referencing

.. raw:: html

   </h3>

.. raw:: html

   <p>

In order to accomplish cross-referencing, there needs to be a link
between the original place and the favorited place and this is typically
handled via an alternative identifier attribute. The favorited place
contains an alternative identifier attribute which has the identifier of
the original place.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">origin R<span class="operator">/</span>O manager(nokia)       destination R<span class="operator">/</span>W manager (places_jsondb)
   Save
   Place id: ae246         <span class="operator">-</span><span class="operator">-</span><span class="operator">-</span><span class="operator">&gt;</span>    Place id: <span class="number">0001</span>
   Attribute type: x_provider      Attribute type: x_id_nokia
   Attribute value: nokia          Attribute text value: ae246</pre>

.. raw:: html

   <p>

There are 3 prerequisites for implementing cross-referencing by
alternative identifier. The first is that the origin manager must
provide the x\_provider attribute with the value being the name of the
manager's QGeoServiceProvider. The attribute label should be kept empty,
indicating the attribute should not be displayed to users.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: It is generally expected that all managers should set the
x\_provider attribute.

.. raw:: html

   </p>

.. raw:: html

   <p>

The second is that QPlaceManager::compatiblePlace() of the destination
manager use the x\_provider attribute of the initial place and set an
alternative identifier attribute of the place to be saved. The key of
the alternative identifier attribute is x\_id\_<provider name> and the
text value is the identifier of the initial place. The x\_provider
attribute should not be passed to the compatible place. When it is
saved, the x\_provider of the saved place is considered to be the
destination manager.

.. raw:: html

   </p>

.. raw:: html

   <p>

The third is that QPlaceManager::matchingPlaces() of the destination
manager accept the QPlaceMatchRequest::AlternativeId as a parameter key
and the alternative identifier attribute key as the value, in this case
x\_id\_<provider name> would be the expected value. This indicates that
the identifiers of places in the QPlaceMatchRequest should be matched
against the x\_id\_<provider name> alternative identifier attributes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that if the destination manager is to facilitate saving and
cross-referencing from any arbitrary manager, it internally must
accommodate saving of arbitrary key value pairs since we cannot know the
provider names before hand, nor can we know what structure the ids will
be.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Other Methods of Linking

.. raw:: html

   </h4>

.. raw:: html

   <p>

If an origin manager does not supply a place id, it may be necessary to
provide some other means of cross-referencing/matching. One approach
might be to do so via the place coordinates, if the coordinate of a
place in the origin manager is identical or close to a place in the
destination manager, there is a high likelihood that they are the same
place. In this case, the manager might implement
QPlaceManager::matchingPlaces() to accept a QPlaceMatchRequest with a
parameter key of 'proximity' and a parameter value of the distance two
places must be in order to detect a match. for example if an origin
place and destination place are within 50m of each other, they can be
considered the same place.

.. raw:: html

   </p>

.. raw:: html

   <p>

Generally however it is recommended that cross referencing be
implemented via alternative identifiers as mentioned above.

.. raw:: html

   </p>

.. raw:: html

   <h4>

User Readable vs Non-User Readable Extended Attributes

.. raw:: html

   </h4>

.. raw:: html

   <p>

If an attribute is not intended to be readable by end users, the label
field should be kept empty as an indicator of this fact.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@location-places-backend.html -->
