.. _sdk_qtlocation_places_backend:

QtLocation Places Backend
=========================



The QPlaceManager interface, provided to clients to allow access to place information, depends directly on an implementation of QPlaceManagerEngine. The engine provides the backend function implementations which are called by the manager.

A places backend implementer needs to derive from QPlaceManagerEngine and provide implementations for the virtual functions relevant for their backend. Most of these functions are asynchronous and so implementers will also need to derive the appropriate reply classes. The reply objects are responsible for managing an asynchronous request; they are used to notify when a request is complete and hold the results of that request. QPlaceManagerEngine provides a default implementation for all virtual functions. The default implementations for the asynchronous functions return a reply that will emit the error() and finished() signals at the next iteration through the event loop.

A reply object would be inherited as follows:

.. code:: cpp

    class SearchReply : public QPlaceSearchReply
    {
    public:
        explicit SearchReply(ManagerEngine *engine)
            : QPlaceSearchReply(engine), m_engine(engine){}
        ~SearchReply();
        void setResults(const QList<QPlaceSearchResult> &results);
        void setRequest(const QPlaceSearchRequest &request);
        ...
        void triggerDone(QPlaceReply::Error error = QPlaceReply::NoError,
                         const QString &errorString = QString());
        ManagerEngine *m_engine;
    };

The implementation of a QPlaceManagerEngine must ensure that any signals emitted by the reply objects are delayed until the request functions have returned and the application code has a chance to connect those signals to slots. The typical approach is to use QMetaObject::invokeMethod() with a Qt::QueuedConnection to emit the signals.

.. code:: cpp

    void SearchSuggestionReply::triggerDone(QPlaceReply::Error error,
                             const QString &errorString)
    {
        if (error != QPlaceReply::NoError) {
            this->setError(error,errorString);
            QMetaObject::invokeMethod(m_engine, "error", Qt::QueuedConnection,
                                      Q_ARG(QPlaceReply *,this),
                                      Q_ARG(QPlaceReply::Error, error),
                                      Q_ARG(QString, errorString));
            QMetaObject::invokeMethod(this, "error", Qt::QueuedConnection,
                                      Q_ARG(QPlaceReply::Error, error),
                                      Q_ARG(QString, errorString));
        }
        this->setFinished(true);
        QMetaObject::invokeMethod(m_engine, "finished", Qt::QueuedConnection,
                                  Q_ARG(QPlaceReply *,this));
        QMetaObject::invokeMethod(this, "finished", Qt::QueuedConnection);
    }

Note that the ``finished`` signals should always be emitted when a reply is complete, even if an error has been encountered, that is, if there is an error, both the ``error`` and ``finished`` signals should be emitted while if there is no error, only the ``finished`` signals are emitted.

The protected functions of QPlaceSearchReply::setResults() and QPlaceSearchReply::setRequest() are made publicly accessible so the plugin can assign results and requests. Because these functions are not publically exported, accessibility is not so much of an issue. An alternative would have been to declare a friend class in SearchReply.

Typically the engine instance would be made the ``parent`` of the reply. If the developer fails to discard the replies when finished, the engine can clean those upon destruction. Commonly, the reply also has a pointer reference back to the engine, which may be used to emit the QPlaceManagerEngine::finished() and QPlaceManagerEngine::error() signals. This is just one of many ways the reply could be implemented.

Icon URLs are provided through the QPlaceManagerEngine::constructIconUrl() function. The expected behaviour is that the engine will use the QPlaceIcon::parameters() in order to construct an appropriate URL. When a QPlace object is returned from the manager either from a search or a query to get place details, it is expected the engine will correctly populate the parameters as necessary.

The backend is free to choose what the parameter key and values are, however if a backend only ever has one URL per icon it is recommended that the QPlaceIcon::SingleUrl be used as the key.

The categories of a manager engine are relatively static entities; for engines accessing remote place datastores it may be desirable to cache the category structure rather than querying a server every time QPlaceManagerEngine::initializeCategories() is called. Depending on how dynamic the categories are, always downloading the freshest set of categories may be more appropriate.

A place generally cannot be saved directly between managers as is because it contains manager specific data such as icons and categories. In order to facilitate saving to one's own manager, engine implementers should implement the QPlaceManagerEngine::compatiblePlace() function. This function returns a copy of the input place with properties pruned or modified as necessary such that the copy can be saved into manager.

Construction of a compatible place may involve ignoring certain properties from the original place, for example if contact details are not supported, these are left out of the compatible place. Other times it may involve modifying certain properties, for example modifying the icon parameters to facilitate copying or downloading of the original place's icon to a location that the backend can access.

Sometimes a situation may arise where we wish to cross-reference and match places between managers. Such a situation may arise where one manager provides read-only access to places (origin manager), while another second r/w manager (destination manager) is used to save selected favorites from the first. During a search of the origin manager, we may want to know which ones have been 'favorited' into the destination manager and perhaps display the customized favorite name rather than the original name.

In order to accomplish cross-referencing, there needs to be a link between the original place and the favorited place and this is typically handled via an alternative identifier attribute. The favorited place contains an alternative identifier attribute which has the identifier of the original place.

.. code:: cpp

    origin R/O manager(nokia)       destination R/W manager (places_jsondb)
                            Save
    Place id: ae246         --->    Place id: 0001
    Attribute type: x_provider      Attribute type: x_id_nokia
    Attribute value: nokia          Attribute text value: ae246

There are 3 prerequisites for implementing cross-referencing by alternative identifier. The first is that the origin manager must provide the x\_provider attribute with the value being the name of the manager's QGeoServiceProvider. The attribute label should be kept empty, indicating the attribute should not be displayed to users.

**Note:** It is generally expected that all managers should set the ``x_provider`` attribute.

The second is that QPlaceManager::compatiblePlace() of the destination manager use the ``x_provider`` attribute of the initial place and set an alternative identifier attribute of the place to be saved. The key of the alternative identifier attribute is ``x_id_<provider`` name> and the text value is the identifier of the initial place. The ``x_provider`` attribute should not be passed to the compatible place. When it is saved, the x\_provider of the saved place is considered to be the destination manager.

The third is that QPlaceManager::matchingPlaces() of the destination manager accept the QPlaceMatchRequest::AlternativeId as a parameter key and the alternative identifier attribute key as the value, in this case ``x_id_<provider`` name> would be the expected value. This indicates that the identifiers of places in the QPlaceMatchRequest should be matched against the ``x_id_<provider`` name> alternative identifier attributes.

Note that if the destination manager is to facilitate saving and cross-referencing from any arbitrary manager, it internally must accommodate saving of arbitrary key value pairs since we cannot know the provider names before hand, nor can we know what structure the ids will be.

If an origin manager does not supply a place id, it may be necessary to provide some other means of cross-referencing/matching. One approach might be to do so via the place coordinates, if the coordinate of a place in the origin manager is identical or close to a place in the destination manager, there is a high likelihood that they are the same place. In this case, the manager might implement QPlaceManager::matchingPlaces() to accept a QPlaceMatchRequest with a parameter key of 'proximity' and a parameter value of the distance two places must be in order to detect a match. for example if an origin place and destination place are within 50m of each other, they can be considered the same place.

Generally however it is recommended that cross referencing be implemented via alternative identifiers as mentioned above.

If an attribute is not intended to be readable by end users, the label field should be kept empty as an indicator of this fact.

