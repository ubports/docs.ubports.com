Ubuntu.Components.MimeData
==========================

.. raw:: html

   <p>

MimeData type provides interface to access and store data to the
Clipboard. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MimeData -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

data : var

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

format : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

html : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

urls : list<url>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MimeData-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MimeData -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="data-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

data : var

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Reading the property returns a list of MIME type and data pairs
representing the data stored in the object. Users can set custom MIME
types which are not covered by the other properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

When setting the property value can take one of the following types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

-  string - the data will be set as text/plain MIME type, or as
   text/html in case HTML tags are detected

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   -  color - the data will be set as application/x-color MIME type

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      -  list<url> - the data will be set as text/uri-list

         .. raw:: html

            </li>

         .. raw:: html

            <li>

         -  list<string> - the data will be set as text/uri-list in case
            the first element of the list is a valid URL with scheme;
            otherwise if the list size is even, the list will be set as
            pairs of (MIME type,data)

            .. raw:: html

               </li>

            .. raw:: html

               <li>

            -  list<var> - same as list<url> or list<string>

               .. raw:: html

                  </li>

               .. raw:: html

                  </ul>

               .. raw:: html

                  <!-- @@@data -->

               .. raw:: html

                  <table class="qmlname">

               .. raw:: html

                  <tr valign="top" id="format-prop">

               .. raw:: html

                  <td class="tblQmlPropNode">

               .. raw:: html

                  <p>

               format : list<string>

               .. raw:: html

                  </p>

               .. raw:: html

                  </td>

               .. raw:: html

                  </tr>

               .. raw:: html

                  </table>

               .. raw:: html

                  <p>

               Returns a list of formats supported by the object. This
               is a list of MIME types for which the object can return
               suitable data. The formats in the list are in a priority
               order.

               .. raw:: html

                  </p>

               .. raw:: html

                  <p>

               See also data.

               .. raw:: html

                  </p>

               .. raw:: html

                  <!-- @@@format -->

               .. raw:: html

                  <table class="qmlname">

               .. raw:: html

                  <tr valign="top" id="html-prop">

               .. raw:: html

                  <td class="tblQmlPropNode">

               .. raw:: html

                  <p>

               html : string

               .. raw:: html

                  </p>

               .. raw:: html

                  </td>

               .. raw:: html

                  </tr>

               .. raw:: html

                  </table>

               .. raw:: html

                  <p>

               Contains a string if the data stored in the object is
               HTML (MIME type text/html); otherwise contains an empty
               string.

               .. raw:: html

                  </p>

               .. raw:: html

                  <!-- @@@html -->

               .. raw:: html

                  <table class="qmlname">

               .. raw:: html

                  <tr valign="top" id="text-prop">

               .. raw:: html

                  <td class="tblQmlPropNode">

               .. raw:: html

                  <p>

               text : string

               .. raw:: html

                  </p>

               .. raw:: html

                  </td>

               .. raw:: html

                  </tr>

               .. raw:: html

                  </table>

               .. raw:: html

                  <p>

               Contains a plain text (MIME type text/plain)
               representation of the data.

               .. raw:: html

                  </p>

               .. raw:: html

                  <!-- @@@text -->

               .. raw:: html

                  <table class="qmlname">

               .. raw:: html

                  <tr valign="top" id="urls-prop">

               .. raw:: html

                  <td class="tblQmlPropNode">

               .. raw:: html

                  <p>

               urls : list<url>

               .. raw:: html

                  </p>

               .. raw:: html

                  </td>

               .. raw:: html

                  </tr>

               .. raw:: html

                  </table>

               .. raw:: html

                  <p>

               Contains a list of URLs contained within the MIME data
               object. URLs correspond to the MIME type text/uri-list.

               .. raw:: html

                  </p>

               .. raw:: html

                  <!-- @@@urls -->
