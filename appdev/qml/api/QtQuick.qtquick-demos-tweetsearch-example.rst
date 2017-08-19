QtQuick.qtquick-demos-tweetsearch-example
=========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Tweet Search is a QML application that searches items posted to Twitter
service using a number of query parameters. Search can be done for
tweets from a specified user, a hashtag, or a search phrase.

.. raw:: html

   </p>

.. raw:: html

   <p>

The search result is a list of items showing the contents of the tweet
as well as the name and image of the user who posted it. Hashtags, names
and links in the content are clickable. Clicking on the image will flip
the item to reveal more information.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

To run the example from Qt Creator, open the Welcome mode and select the
example from Examples. For more information, visit Building and Running
an Example.

.. raw:: html

   </p>

.. raw:: html

   <p>

Tweet Search uses Twitter API v1.1 for running seaches.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="request-authentication">

Request Authentication

.. raw:: html

   </h2>

.. raw:: html

   <p>

Each request must be authenticated on behalf of the application. For
demonstration purposes, the application uses a hard-coded token for
identifying itself to the Twitter service. However, this token is
subject to rate limits for the number of requests as well as possible
expiration.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you are having authentication or rate limit problems running the
demo, obtain a set of application-specific tokens (consumer key and
consumer secret) by registering a new application on
https://dev.twitter.com/apps.

.. raw:: html

   </p>

.. raw:: html

   <p>

Type in the two token values in TweetsModel.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type">string</span> <span class="name">consumerKey</span> : <span class="string">&quot;&quot;</span>
   property <span class="type">string</span> <span class="name">consumerSecret</span> : <span class="string">&quot;&quot;</span></pre>

.. raw:: html

   <p>

Rebuild and run the demo.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="json-parsing">

JSON Parsing

.. raw:: html

   </h2>

.. raw:: html

   <p>

Search results are returned in JSON (JavaScript Object Notation) format.
TweetsModel uses an XMLHTTPRequest object to send an HTTP GET request,
and calls JSON.parse() on the returned text string to convert it to a
JavaScript object. Each object representing a tweet is then added to a
ListModel:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        var <span class="name">req</span> = new <span class="name">XMLHttpRequest</span>;
   <span class="name">req</span>.<span class="name">open</span>(<span class="string">&quot;GET&quot;</span>, <span class="string">&quot;https://api.twitter.com/1.1/search/tweets.json?from=&quot;</span> <span class="operator">+</span> <span class="name">from</span> <span class="operator">+</span>
   <span class="string">&quot;&amp;count=10&amp;q=&quot;</span> <span class="operator">+</span> <span class="name">encodePhrase</span>(<span class="name">phrase</span>));
   <span class="name">req</span>.<span class="name">setRequestHeader</span>(<span class="string">&quot;Authorization&quot;</span>, <span class="string">&quot;Bearer &quot;</span> <span class="operator">+</span> <span class="name">bearerToken</span>);
   <span class="name">req</span>.<span class="name">onreadystatechange</span> <span class="operator">=</span> <span class="keyword">function</span>() {
   <span class="name">status</span> <span class="operator">=</span> <span class="name">req</span>.<span class="name">readyState</span>;
   <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">===</span> <span class="name">XMLHttpRequest</span>.<span class="name">DONE</span>) {
   var <span class="name">objectArray</span> = <span class="name">JSON</span>.<span class="name">parse</span>(<span class="name">req</span>.<span class="name">responseText</span>);
   <span class="keyword">if</span> (<span class="name">objectArray</span>.<span class="name">errors</span> <span class="operator">!==</span> <span class="name">undefined</span>)
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Error fetching tweets: &quot;</span> <span class="operator">+</span> <span class="name">objectArray</span>.<span class="name">errors</span>[<span class="number">0</span>].<span class="name">message</span>)
   <span class="keyword">else</span> {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">key</span> in <span class="name">objectArray</span>.<span class="name">statuses</span>) {
   var <span class="name">jsonObject</span> = <span class="name">objectArray</span>.<span class="name">statuses</span>[<span class="name">key</span>];
   <span class="name">tweets</span>.<span class="name">append</span>(<span class="name">jsonObject</span>);
   }
   }
   <span class="keyword">if</span> (<span class="name">wasLoading</span> <span class="operator">==</span> <span class="number">true</span>)
   <span class="name">wrapper</span>.<span class="name">isLoaded</span>()
   }
   <span class="name">wasLoading</span> <span class="operator">=</span> (<span class="name">status</span> <span class="operator">===</span> <span class="name">XMLHttpRequest</span>.<span class="name">LOADING</span>);
   }
   <span class="name">req</span>.<span class="name">send</span>();</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

demos/tweetsearch/tweetsearch.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/content/FlipBar.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/content/LineInput.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/content/ListFooter.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/content/ListHeader.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/content/SearchDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/content/TweetDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/content/TweetsModel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/content/tweetsearch.js

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/tweetsearch.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/tweetsearch.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/tweetsearch/tweetsearch.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QML Applications.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@demos/tweetsearch -->
