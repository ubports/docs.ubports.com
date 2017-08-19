QtLocation.location-places-cpp
==============================

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Places API allows users to discover places/points of interest and
view details about them such as address and contact information; some
places may even have rich content such as images and reviews. The Places
API also facilitates management of places and categories, allowing users
to save and remove them.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="place-definition">

Place Definition

.. raw:: html

   </h2>

.. raw:: html

   <p>

A place is a point of interest, it could be a favorite restaurant, a
park or someone's home. A QPlace object represents a place by acting as
a container for various information about that place.

.. raw:: html

   </p>

.. raw:: html

   <p>

This information can be divided into 2 broad classifications

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Details

.. raw:: html

   </li>

.. raw:: html

   <li>

Rich content

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The place details consist of properties of the place, such as the name,
location, contact information and so on. When a place is returned during
a search, these details are filled in. Sometimes in order to save
bandwidth, there are further details about the place that can be
retrieved on an individual place by place basis, if the user is
interested. The QPlace::detailsFetched() function can be queried to see
if all available details have been fetched, and if not,
QPlaceManager::getPlaceDetails() can be used to retrieve them. Precisely
which details are populated during a search and which need to be fetched
individually may vary from provider to provider. See plugin
documentation for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

The rich content of a place consists of items such as images, reviews
and editorials. Potentially there may be many rich content items, so
they are treated separately from the place details. They can be
retrieved in a paged fashion via QPlaceManager::getPlaceContent(). If
necessary, the content may be assigned to a place so it can act as a
convenient container.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="common-operations">

Common Operations

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Initializing a Manager

.. raw:: html

   </h3>

.. raw:: html

   <p>

All places functionality is facilitated by a QPlaceManager instance. One
must specify a QGeoServiceProvider in order to create the QPlaceManager

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">//The &quot;provider name&quot; is used to select a particular provider</span>
   <span class="type">QGeoServiceProvider</span> <span class="operator">*</span>provider <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QGeoServiceProvider</span>(<span class="string">&quot;provider name&quot;</span>);
   <span class="type">QPlaceManager</span> <span class="operator">*</span>manager <span class="operator">=</span> provider<span class="operator">-</span><span class="operator">&gt;</span>placeManager();</pre>

.. raw:: html

   <h3>

Discovery/Search

.. raw:: html

   </h3>

.. raw:: html

   <p>

In order to perform a search operation we simply create a
QPlaceSearchRequest and set the desired search parameters, such as a
search term and search center.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">//instantiate request and set parameters</span>
   <span class="type">QPlaceSearchRequest</span> searchRequest;
   searchRequest<span class="operator">.</span>setSearchTerm(<span class="string">&quot;ice cream&quot;</span>);
   searchRequest<span class="operator">.</span>setSearchArea(<span class="type">QGeoCircle</span>(<span class="type">QGeoCoordinate</span>(<span class="number">12.34</span><span class="operator">,</span> <span class="number">56.78</span>)));
   <span class="comment">//send off a search request</span>
   <span class="comment">/*QPlaceSearchReply * */</span> searchReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>search(searchRequest);
   <span class="comment">//connect a slot to handle the reply</span>
   connect(searchReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleSearchReply()));</pre>

.. raw:: html

   <p>

The request is an asynchronous operation so we need a slot to handle the
completion of the request. In the handler we check that there are no
errors and that our search result type is a place. If so we can then
retrieve some of the core details of the place. At the end of the slot,
we delete the reply since they are for single use only.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> handleSearchReply() {
   <span class="keyword">if</span> (searchReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError) {
   foreach (<span class="keyword">const</span> <span class="type">QPlaceSearchResult</span> <span class="operator">&amp;</span>result<span class="operator">,</span> searchReply<span class="operator">-</span><span class="operator">&gt;</span>results()) {
   <span class="keyword">if</span> (result<span class="operator">.</span>type() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceSearchResult</span><span class="operator">::</span>PlaceResult) {
   <span class="type">QPlaceResult</span> placeResult <span class="operator">=</span> result;
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Name: &quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> placeResult<span class="operator">.</span>place()<span class="operator">.</span>name();
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Coordinate &quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> placeResult<span class="operator">.</span>place()<span class="operator">.</span>location()<span class="operator">.</span>coordinate()<span class="operator">.</span>toString();
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Street: &quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> placeResult<span class="operator">.</span>place()<span class="operator">.</span>location()<span class="operator">.</span>address()<span class="operator">.</span>street();
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Distance: &quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> placeResult<span class="operator">.</span>distance();
   }
   }
   }
   searchReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater();  <span class="comment">//discard reply</span>
   searchReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <p>

Note: Depending upon the plugin backend that was chosen, the search
results may contain places which have further details that can be
fetched on a place by place basis. To fetch these other details see
Fetching Place Details.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Recommendations

.. raw:: html

   </h4>

.. raw:: html

   <p>

Recommendations can be retrieved by supplying a place id via
QPlaceSearchRequest::setRecommendationId(). Any places similar to the
given place are retrieved.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Paging

.. raw:: html

   </h4>

.. raw:: html

   <p>

If the plugin supports paging, the limit parameter may be provided to
the search request.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceSearchRequest</span> searchRequest;
   searchRequest<span class="operator">.</span>setLimit(<span class="number">15</span>); <span class="comment">//specify how many results are to be retrieved.</span></pre>

.. raw:: html

   <h3>

Fetching Place Details

.. raw:: html

   </h3>

.. raw:: html

   <p>

A place that has been returned from a search request may have more
details that can be fetched. The following demonstrates how to check if
there are further details and if so how to request them.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">if</span> (<span class="operator">!</span>place<span class="operator">.</span>detailsFetched()) {
   <span class="comment">/*QPlaceDetailsReply * */</span> detailsReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>getPlaceDetails(place<span class="operator">.</span>placeId());
   connect(detailsReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleDetailsReply()));
   }
   ...
   ...
   <span class="type">void</span> handleDetailsReply() {
   <span class="type">QPlace</span> place;
   <span class="keyword">if</span> (detailsReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError)
   place <span class="operator">=</span> detailsReply<span class="operator">-</span><span class="operator">&gt;</span>place();
   detailsReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater(); <span class="comment">//discard reply</span>
   detailsReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <h3>

Fetching Rich Content

.. raw:: html

   </h3>

.. raw:: html

   <p>

Rich content such as images and reviews is retrieved through the manager
and then if required assigned to a place.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceContentRequest</span> request;
   request<span class="operator">.</span>setContentType(<span class="type">QPlaceContent</span><span class="operator">::</span>ImageType);
   request<span class="operator">.</span>setPlaceId(place<span class="operator">.</span>placeId());
   request<span class="operator">.</span>setLimit(<span class="number">5</span>);
   <span class="comment">/*QPlaceContentReply * */</span> contentReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>getPlaceContent(request);
   connect(contentReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleImagesReply()));</pre>

.. raw:: html

   <p>

We can handle the content request as shown below.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> handleImagesReply() {
   <span class="keyword">if</span> (contentReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError) {
   <span class="type">QMapIterator</span><span class="operator">&lt;</span><span class="type">int</span><span class="operator">,</span> <span class="type">QPlaceContent</span><span class="operator">&gt;</span> iter(contentReply<span class="operator">-</span><span class="operator">&gt;</span>content());
   <span class="keyword">while</span> (iter<span class="operator">.</span>hasNext()) {
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Index: &quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> iter<span class="operator">.</span>key();
   <span class="type">QPlaceImage</span> image <span class="operator">=</span> iter<span class="operator">.</span>value();
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> image<span class="operator">.</span>url();
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> image<span class="operator">.</span>mimeType();
   }
   <span class="comment">//alternatively if indexes are irrelevant</span>
   foreach (<span class="keyword">const</span> <span class="type">QPlaceImage</span> <span class="operator">&amp;</span>image<span class="operator">,</span> contentReply<span class="operator">-</span><span class="operator">&gt;</span>content()) {
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> image<span class="operator">.</span>url();
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> image<span class="operator">.</span>mimeType();
   }
   <span class="comment">//we can assign content to the place that it belongs to.</span>
   <span class="comment">//the place object serves as a container where we can retrieve</span>
   <span class="comment">//content that has already been fetched</span>
   place<span class="operator">.</span>insertContent(contentReply<span class="operator">-</span><span class="operator">&gt;</span>request()<span class="operator">.</span>contentType()<span class="operator">,</span> contentReply<span class="operator">-</span><span class="operator">&gt;</span>content());
   place<span class="operator">.</span>setTotalContentCount(contentReply<span class="operator">-</span><span class="operator">&gt;</span>request()<span class="operator">.</span>contentType()<span class="operator">,</span> contentReply<span class="operator">-</span><span class="operator">&gt;</span>totalCount());
   }
   contentReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater();
   contentReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <p>

It is important to note that the results in the QPlaceContentReply, is a
QPlaceContent::Collection which is essentially a QMap<int,
QPlaceContent>. The key int in this case is the index of the content,
and the value is the content itself. Due to the way Content is
implemented it is possible to convert a content type as follows

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceImage</span> image <span class="operator">=</span> content; <span class="comment">//provided that 'content' has a type QPlace::ImageType</span></pre>

.. raw:: html

   <p>

The usage of the QPlaceContent::Collection and the conversion between
content and its subtypes means that code for handling the mechanics of
paging reviews, images and editorials can be easily shared.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Search Suggestions

.. raw:: html

   </h3>

.. raw:: html

   <p>

The retrieval of search term suggestions is very similar to performing a
place search. A QPlaceSearchRequest is used just like a place search,
the only difference being that the search term is set to a partially
completed string.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceSearchRequest</span> request;
   request<span class="operator">.</span>setSearchTerm(<span class="string">&quot;piz&quot;</span>);
   request<span class="operator">.</span>setSearchArea(<span class="type">QGeoCircle</span>(<span class="type">QGeoCoordinate</span>(<span class="number">12.34</span><span class="operator">,</span> <span class="number">56.78</span>)));
   <span class="comment">/* QPlaceSearchSuggestion * */</span>suggestionReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>searchSuggestions(request);
   connect(suggestionReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleSuggestionReply()));</pre>

.. raw:: html

   <p>

And when the request is done, we can use the reply to show the
suggestions.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> handleSuggestionReply() {
   <span class="keyword">if</span> (suggestionReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError) {
   foreach (<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>suggestion<span class="operator">,</span> suggestionReply<span class="operator">-</span><span class="operator">&gt;</span>suggestions())
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> suggestion;
   }
   suggestionReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater(); <span class="comment">//discard reply</span>
   suggestionReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <h3>

Saving a Place

.. raw:: html

   </h3>

.. raw:: html

   <p>

The saving of a new place is performed as follows, we create a QPlace
instance and populate it with information such as a name, address and
coordinate. Once done we can invoke QPlaceManager::savePlace() to begin
a save operation.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlace</span>  place;
   place<span class="operator">.</span>setName( <span class="string">&quot;Fred's Ice Cream Parlor&quot;</span> );
   <span class="type">QGeoLocation</span> location;
   location<span class="operator">.</span>setCoordinate(<span class="type">QGeoCoordinate</span>(<span class="number">12.34</span><span class="operator">,</span> <span class="number">56.78</span>));
   <span class="type">QGeoAddress</span> address;
   address<span class="operator">.</span>setStreet(<span class="string">&quot;111 Nother Street&quot;</span>);
   ...
   location<span class="operator">.</span>setAddress(address);
   place<span class="operator">.</span>setLocation(location);
   <span class="comment">/* QPlaceIdReply * */</span>savePlaceReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>savePlace(place);
   connect(savePlaceReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleSavePlaceReply()));</pre>

.. raw:: html

   <p>

Once a place is saved the reply contains the new identifier for that
place.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> handleSavePlaceReply() {
   <span class="keyword">if</span> (savePlaceReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError)
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> savePlaceReply<span class="operator">-</span><span class="operator">&gt;</span>id();
   savePlaceReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater(); <span class="comment">//discard reply</span>
   savePlaceReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <p>

Note that to save an already existing place, the QPlace::placeId() must
be filled in with the correct identifier. Otherwise a new place will be
created if empty or the wrong place overwritten if the identifier is
incorrect.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a place is saved, the QPlaceManager may emit
QPlaceManager::placedAdded() or QPlaceManager::placeUpdated() signals.
However whether a manager does so or not is provider specific, managers
accessing places from a web service will typically not emit these
signals while managers accessing places locally stored generally will.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Caveats

.. raw:: html

   </h4>

.. raw:: html

   <p>

The Places API is currently designed for only saving core details.
Saving rich content like images and reviews or details like supplier and
rating is not a supported use case. Typically a manager will generally
ignore these fields upon save and may produce a warning message if they
are populated.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Places API only supports saving of the following core details:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

name

.. raw:: html

   </li>

.. raw:: html

   <li>

place id

.. raw:: html

   </li>

.. raw:: html

   <li>

location

.. raw:: html

   </li>

.. raw:: html

   <li>

contact details

.. raw:: html

   </li>

.. raw:: html

   <li>

icon

.. raw:: html

   </li>

.. raw:: html

   <li>

categories (tag-like names to describe a place)

.. raw:: html

   </li>

.. raw:: html

   <li>

visibility scope

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

It is possible that providers may only support a subset of these. See
the plugin documentation for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Saving of properties such as the rating, extended attributes, images,
reviews, editorials and supplier is explicitly not supported by the
Places API.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Saving Between Managers

.. raw:: html

   </h4>

.. raw:: html

   <p>

When saving places between managers, there are a few things to be aware
of. Some fields of a place such as the id, categories and icons are
manager specific entities for example the categories in one manager may
not be recognized in another. Therefore trying to save a place directly
from one manager to another is not possible.

.. raw:: html

   </p>

.. raw:: html

   <p>

The typical approach is to use the QPlaceManager::compatiblePlace()
function, it creates a copy of a place, but only copies data that the
manager supports. Manager specific data such as the place identifier is
not copied over. The new copy is now suitable for saving into the
manager. If the manager supports matching by alternative identifiers, an
alternative identifier attribute is assigned to the copy (see Matching
places between managers)

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">//result retrieved from a different manager)</span>
   <span class="type">QPlace</span> place <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>compatiblePlace(result<span class="operator">.</span>place());
   saveReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>savePlace(place);</pre>

.. raw:: html

   <h3>

Removing a Place

.. raw:: html

   </h3>

.. raw:: html

   <p>

The removal of a place is performed as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">/* QPlaceIdReply * */</span>removePlaceReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>removePlace(place<span class="operator">.</span>placeId());
   connect(removePlaceReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleRemovePlaceReply()));
   ...
   ...
   <span class="type">void</span> handleRemovePlaceReply() {
   <span class="keyword">if</span> (removePlaceReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError)
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Removal of place identified by&quot;</span>
   <span class="operator">&lt;</span><span class="operator">&lt;</span> removePlaceReply<span class="operator">-</span><span class="operator">&gt;</span>id() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;was successful&quot;</span>;
   removePlaceReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater(); <span class="comment">//discard reply</span>
   removePlaceReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <p>

When a place is removed, the QPlaceManager may emit the
QPlaceManager::placeRemoved() signal. Whether a manager does so is
provider specific. Managers accessing places from a web service will
typically not emit these signals, while managers accessing places stored
locally generally will.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Using Categories

.. raw:: html

   </h3>

.. raw:: html

   <p>

Categories are keywords that can describe a place. For example, 'park',
'theater', 'restaurant'. A place could be described by many categories,
it could be a park and a music venue and a ferry or bus stop.

.. raw:: html

   </p>

.. raw:: html

   <p>

To use categories they must first be initialized.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">/* QPlaceReply * */</span>initCatReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>initializeCategories();
   connect(initCatReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleInitCatReply()));
   ...
   ...
   <span class="type">void</span> handleInitCatReply() {
   <span class="keyword">if</span> (initCatReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError)
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Categories initialized&quot;</span>;
   <span class="keyword">else</span>
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Failed to initialize categories&quot;</span>;
   initCatReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater();
   initCatReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <p>

After the categories have been initialized we can then use these
category functions.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QPlaceManager::childCategories()

.. raw:: html

   </li>

.. raw:: html

   <li>

QPlaceManager::category()

.. raw:: html

   </li>

.. raw:: html

   <li>

QPlaceManager::parentCategoryId()

.. raw:: html

   </li>

.. raw:: html

   <li>

QPlaceManager::childCategoryIds();

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

To retrieve the top level categories we use the
QPlaceManager::childCategories() function but do not provide a category
identifier.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QList</span><span class="operator">&lt;</span><span class="type">QPlaceCategory</span><span class="operator">&gt;</span> topLevelCategories <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>childCategories();
   foreach (<span class="keyword">const</span> <span class="type">QPlaceCategory</span> <span class="operator">&amp;</span>category<span class="operator">,</span> topLevelCategories)
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> category<span class="operator">.</span>name();</pre>

.. raw:: html

   <p>

If we did provide an identifier then we could retrieve a category's
children.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QList</span><span class="operator">&lt;</span><span class="type">QPlaceCategory</span><span class="operator">&gt;</span> childCategories <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>childCategories(pizza<span class="operator">.</span>categoryId());</pre>

.. raw:: html

   <h3>

Saving a Category

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following shows how to save a category

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceCategory</span> fastFood;
   <span class="type">QPlaceCategory</span> category;
   category<span class="operator">.</span>setName(<span class="string">&quot;pizza&quot;</span>);
   <span class="comment">/*QPlaceIdReply */</span> saveCategoryReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>saveCategory(category);
   connect(saveCategoryReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleSaveCategoryReply()));
   <span class="comment">//we could have saved a category as a child by supplying a parent identifier.</span>
   saveCategoryReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>saveCategory(category<span class="operator">,</span> fastFood<span class="operator">.</span>categoryId());
   ...
   ...
   <span class="type">void</span> handleSaveCategoryReply() {
   <span class="keyword">if</span> (saveCategoryReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError) {
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Saved category id =&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> saveCategoryReply<span class="operator">-</span><span class="operator">&gt;</span>id();
   }
   saveCategoryReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater();
   saveCategoryReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <p>

When a category is saved, the QPlaceManager may emit
QPlaceManager::categoryAdded() or QPlaceManager::categoryUpdated()
signals. However whether a manager does so or not is provider specific,
managers accessing places from a web service will typically not emit
these signals while managers accessing places locally stored generally
will.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Removing a Category

.. raw:: html

   </h3>

.. raw:: html

   <p>

Category removal is very similar to removing a place

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">/* QPlaceIdReply * */</span>removeCategoryReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>removeCategory(place<span class="operator">.</span>placeId());
   connect(removeCategoryReply<span class="operator">,</span> SIGNAL(finished())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleRemoveCategoryReply()));
   ...
   ...
   <span class="type">void</span> handleRemoveCategoryReply() {
   <span class="keyword">if</span> (removeCategoryReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError)
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Removal of category identified by&quot;</span>
   <span class="operator">&lt;</span><span class="operator">&lt;</span> removeCategoryReply<span class="operator">-</span><span class="operator">&gt;</span>id() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;was successful&quot;</span>;
   removeCategoryReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater(); <span class="comment">//discard reply</span>
   removeCategoryReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <p>

When a category is removed, the QPlaceManager may emit the
QPlaceManager::categoryRemoved() signal. Whether a manager does so is
provider specific. Managers accessing places from a web service will
typically not emit these signals, while managers accessing places stored
locally generally will.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Matching Places Between Managers

.. raw:: html

   </h3>

.. raw:: html

   <p>

Sometimes you may want to cross reference whether places from one
manager match those from another manager. Such a situation may arise
where one manager provides read-only access to places (origin manager)
while another second r/w manager (destination manager) is used to save
selected favorites from the first. During a search of the origin manager
we may want to know which ones have been 'favorited' into the
destination manager and perhaps display a customized favorite name
rather than the original name.

.. raw:: html

   </p>

.. raw:: html

   <p>

The matching mechanism can vary between managers, but is typically
accomplished through an alternative identifier. As part of the save
process, the place identifier from the origin manager is saved as an
alternative identifier attribute in the destination manager (which can
have its own place identifier scheme). In the following example, the
origin manager is from the 'nokia' QGeoServiceProider, therefore as part
of the saving process an alternative identifier attribute, x\_id\_nokia,
is set for the place saved into the destination manager (when
QPlaceManager::compatiblePlace() is called)

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

In order to perform the matching, we create a QPlaceMatchRequest and
assign it the search results from the origin manager. The
QPlaceMatchRequest will be used on the destination manager to return
corresponding places. We also specify matching parameters which are key
value pairs. As mentioned previously, this can vary depending on the
manager but typically the key is QPlaceMatchRequest::AlternativeId to
indicate we are matching by alternative id, the value in this case would
be x\_id\_nokia which specifies which alternative identifier attribute
we are using to do the matching.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QPlaceMatchRequest</span> request;
   request<span class="operator">.</span>setResults(results);
   <span class="type">QVariantMap</span> parameters;
   parameters<span class="operator">.</span>insert(<span class="type">QPlaceMatchRequest</span><span class="operator">::</span>AlternativeId<span class="operator">,</span> <span class="string">&quot;x_id_nokia&quot;</span>);
   request<span class="operator">.</span>setParameters(parameters);
   matchReply <span class="operator">=</span> manager<span class="operator">-</span><span class="operator">&gt;</span>matchingPlaces(request);
   ...
   ...
   <span class="type">void</span> matchHandler() {
   <span class="keyword">if</span> (matchReply<span class="operator">-</span><span class="operator">&gt;</span>error() <span class="operator">=</span><span class="operator">=</span> <span class="type">QPlaceReply</span><span class="operator">::</span>NoError) {
   foreach (<span class="keyword">const</span> <span class="type">QPlace</span> place<span class="operator">,</span> matchReply<span class="operator">-</span><span class="operator">&gt;</span>places()) {
   <span class="keyword">if</span> (place <span class="operator">!</span><span class="operator">=</span> <span class="type">QPlace</span>())
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Place is a favorite with name&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> place<span class="operator">.</span>name();
   <span class="keyword">else</span>
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Place is not a favorite&quot;</span>;
   }
   }
   matchReply<span class="operator">-</span><span class="operator">&gt;</span>deleteLater();
   matchReply <span class="operator">=</span> <span class="number">0</span>;
   }</pre>

.. raw:: html

   <h2 id="classes-in-places">

Classes in Places

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Data Classes

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlace

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a set of data about a place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceAttribute

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents generic attribute information about a place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceCategory

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a category that a QPlace can be associated with

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceContactDetail

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a contact detail such as a phone number or website url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceContent

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Serves as the base class for rich content types

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceEditorial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a publisher's article describing a place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceIcon

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents an icon

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceImage

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a reference to an image

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceProposedSearchResult

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a search result containing a proposed search

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceRatings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds rating information about a place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceResult

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a search result containing a place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceReview

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a review of a place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceSearchResult

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

The base class for search results

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceSupplier

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a supplier of a place or content associated with a place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceUser

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents an individual user

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Request Classes

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceContentRequest

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents the parameters of a content request

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceMatchRequest

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Used to find places from one manager that match those from another. It
represents a set of request parameters

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceSearchRequest

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents the set of parameters for a search request

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Reply classes

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceContentReply

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Manages a content retrieval operation started by an instance of
QPlaceManager

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceDetailsReply

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Manages a place details fetch operation started by an instance of
QPlaceManager

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceIdReply

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Manages operations which return an identifier such as saving and removal
operations of places and categories

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceMatchReply

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Manages a place matching operation started by an instance of
QPlaceManager

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceReply

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Manages an operation started by an instance of QPlaceManager and serves
as a base class for more specialized replies

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceSearchReply

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Manages a place search operation started by an instance of QPlaceManager

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceSearchSuggestionReply

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Manages a search suggestion operation started by an instance of
QPlaceManager

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Manager Classes

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceManager

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

The interface which allows clients to access places stored in a
particular backend

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPlaceManagerEngine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Interface for implementers of QGeoServiceProvider plugins who want to
provide access to place functionality

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@location-places-cpp.html -->
