.. _sdk_qtquick_qt_quick_demo_-_tweet_search:

QtQuick Qt Quick Demo - Tweet Search
====================================



*Tweet Search* is a QML application that searches items posted to Twitter service using a number of query parameters. Search can be done for tweets from a specified user, a hashtag, or a search phrase.

The search result is a list of items showing the contents of the tweet as well as the name and image of the user who posted it. Hashtags, names and links in the content are clickable. Clicking on the image will flip the item to reveal more information.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

Tweet Search uses Twitter API v1.1 for running seaches.

Each request must be authenticated on behalf of the application. For demonstration purposes, the application uses a hard-coded token for identifying itself to the Twitter service. However, this token is subject to rate limits for the number of requests as well as possible expiration.

If you are having authentication or rate limit problems running the demo, obtain a set of application-specific tokens (consumer key and consumer secret) by registering a new application on https://dev.twitter.com/apps.

Type in the two token values in *TweetsModel.qml*:

.. code:: qml

        property string consumerKey : ""
        property string consumerSecret : ""

Rebuild and run the demo.

Search results are returned in JSON (JavaScript Object Notation) format. ``TweetsModel`` uses an XMLHTTPRequest object to send an HTTP GET request, and calls JSON.parse() on the returned text string to convert it to a JavaScript object. Each object representing a tweet is then added to a `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ :

.. code:: qml

            var req = new XMLHttpRequest;
            req.open("GET", "https://sdk.twitter.com/1.1/search/tweets.json?from=" + from +
                            "&count=10&q=" + encodePhrase(phrase));
            req.setRequestHeader("Authorization", "Bearer " + bearerToken);
            req.onreadystatechange = function() {
                status = req.readyState;
                if (status === XMLHttpRequest.DONE) {
                    var objectArray = JSON.parse(req.responseText);
                    if (objectArray.errors !== undefined)
                        console.log("Error fetching tweets: " + objectArray.errors[0].message)
                    else {
                        for (var key in objectArray.statuses) {
                            var jsonObject = objectArray.statuses[key];
                            tweets.append(jsonObject);
                        }
                    }
                    if (wasLoading == true)
                        wrapper.isLoaded()
                }
                wasLoading = (status === XMLHttpRequest.LOADING);
            }
            req.send();

Files:

-  demos/tweetsearch/tweetsearch.qml
-  demos/tweetsearch/content/FlipBar.qml
-  demos/tweetsearch/content/LineInput.qml
-  demos/tweetsearch/content/ListFooter.qml
-  demos/tweetsearch/content/ListHeader.qml
-  demos/tweetsearch/content/SearchDelegate.qml
-  demos/tweetsearch/content/TweetDelegate.qml
-  demos/tweetsearch/content/TweetsModel.qml
-  demos/tweetsearch/content/tweetsearch.js
-  demos/tweetsearch/main.cpp
-  demos/tweetsearch/tweetsearch.pro
-  demos/tweetsearch/tweetsearch.qmlproject
-  demos/tweetsearch/tweetsearch.qrc

**See also** QML Applications.

