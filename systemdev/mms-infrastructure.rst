MMS infrastructure components
=============================

`oFono <https://github.com/ubports/ofono>`_ - responsible for providing the data context used to transfer MMS data (image/music). It also propagates wap push notifications to upper layers.

`nuntium <https://github.com/ubports/nuntium>`_ - daemon that listens to wap push notifications and activates the MMS data context on ofono on demand to send/receive MMS's. It provides a local store.

`telepathy-ofono <https://github.com/ubports/telepathy-ofono>`_  - talks to nuntium through dbus and is used to both relay messages from phone-app to nuntium and inject into the telepathy infrastructure MMS's received by nuntium as `multi-part messages <http://telepathy.freedesktop.org/spec/Channel_Interface_Messages.html#Mapping:Message_Part>`_. This component also marks messages as read and delete successfully received messages from nuntium.

`history-service <https://github.com/ubports/history-service>`_ - this component watches the telepathy communication and store the messages received by telepathy-ofono or sent by messaging-app.

`telephony-service-approver <https://github.com/ubports/telephony-service>`_  - this component is in charge of adding SMS's to the messaging menu and to display incoming text notifications.

`messaging-app <https://github.com/ubports/messaging-app>`_ - It renders MMS's in the conversation view and also provides a way to attach media files to a message in order to send an MMS.

General Description
-------------------

Incoming MMS
^^^^^^^^^^^^

* An MMS WAP push notification is received by ofono and propagated to nuntium
* nuntium enables the MMS context in ofono, retrieves the content from `MMSC <https://en.wikipedia.org/wiki/Multimedia_Messaging_Service>`_ and propagates the new MMS to upper layers.
* A new MMS arrives at telepathy-ofono.
* If automatic retrieval is not enabled or not available at the moment, a control message is sent to the app
* messaging-app request the retrieval of the message to telepathy-ofono.
* After the message is retrieved from MMSC, it is delivered to the apps via normal text channel in a multi-part message (one text/html part, one text/plain part and one part per attachment). If the control message was previously delivered, this real message have a flag telling it is a replacement for the previous message.
* The new message history service saves the attachment parts to disk, and replaces the paths on text/html to point to the new attachment locations. It also saves a flag and the content type.

Outgoing MMS
^^^^^^^^^^^^

* messaging-app creates a new text channel in telepathy-ofono, or uses an existing channel.
* messaging-app sends the MMS as a multi-part message to telepathy-ofono
* nuntium enables the MMS context in ofono, sends the MMS through MMSC and signals the upper layers about the current status (sent, draft).
* telepathy-ofono sends signals to applications with delivery reports.

Incoming MMS diagram
********************
.. rst-class:: invert-grayscale

.. image:: files/incoming-mms.png
   :alt: incoming-MMS.png

Outgoing MMS diagram
********************
.. rst-class:: invert-grayscale

.. image:: files/outgoing-mms.png
   :alt: outgoing-MMS.png

References
----------

* initial source: https://wiki.ubuntu.com/Touch/Specs/MMSInfrastructure
