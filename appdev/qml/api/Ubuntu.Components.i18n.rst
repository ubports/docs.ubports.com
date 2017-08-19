Ubuntu.Components.i18n
======================

.. raw:: html

   <p>

i18n is a context property that provides internationalization support.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@i18n -->

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

domain : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

language : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

string ctr(string context, string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string dctr(string domain, string context, string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string dtr(string domain, string singular, string plural, int n)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string dtr(string domain, string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string relativeDateTime(datetime dateTime)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string tag(string context, string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string tag(string text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string tr(string singular, string plural, int n)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string tr(string text)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$i18n-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

i18n cannot be instantiated, and is already available as a context
property. It is based on gettext, and thus the standard gettext tools
can be used for translating a project. Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 0.1
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Press me&quot;</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@i18n -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$domain -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="domain-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

domain : string

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

The gettext domain to be used for the translation. The default domain is
the applicationName specified in the application's MainView, or the
empty string "" if no applicationName was given or no MainView is used.
Use dtr() functions instead of tr() to use a different domain for a
single translation that ignores i18n.domain.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@domain -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="language-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

language : string

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

The language that is used for the translation. The default value is the
user's locale dending on $LC\_ALL, $LC\_MESSAGES and $LANG at the time
of running the application. See the gettext manual for details.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@language -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$ctr -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ctr-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string ctr(string context, string text)

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

Translate text using gettext and return the translation. context is only
visible to the translator and helps disambiguating for very short texts

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ctr -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dctr-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string dctr(string domain, string context, string text)

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

Translate text using gettext. Uses the specified domain domain instead
of i18n.domain. context is only visible to the translator and helps
disambiguating for very short texts

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dctr -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dtr-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string dtr(string domain, string singular, string plural, int n)

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

Translate the given text using gettext. Should be called like this:
tr(domain, "%1 file", "%1 files", count).arg(count) Uses domain for the
domain instead of i18n.domain, and singular or plural as input for the
translation depending on the number of items n.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dtr -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dtr-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string dtr(string domain, string text)

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

Translate text using gettext. Uses the specified domain domain instead
of i18n.domain.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dtr -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeDateTime-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string relativeDateTime(datetime dateTime)

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

Translate a datetime based on proximity to current time.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeDateTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tag-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string tag(string context, string text)

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

Mark text for translation at a later point. Typically this allows an API
to take the original string and pass it to dctr (or g\_dpgettext2).
context is only visible to the translator and helps disambiguating for
very short texts

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tag-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string tag(string text)

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

Mark text for translation at a later point. Typically this allows an API
to take the original string and pass it to dtr (or dgettext).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import UserMetrics 0.1
   <span class="type">Metric</span> {
   <span class="name">name</span>: <span class="string">&quot;distance&quot;</span>
   <span class="name">format</span>: <span class="name">i18n</span>.<span class="name">tag</span>(<span class="string">&quot;Distance covered today: %1 km&quot;</span>)
   <span class="name">emptyFormat</span>: <span class="name">i18n</span>.<span class="name">tag</span>(<span class="string">&quot;No running today&quot;</span>)
   <span class="name">domain</span>: <span class="string">&quot;runner.forest&quot;</span>
   }</pre>

.. raw:: html

   <p>

The strings tagged for localzation above are passed to the
implementation of UserMetrics verbatim, as well as the domain of the
app. Display and translation of the strings will happen in the
lockscreen, where the same strings will be passed to i18n.tr.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tr-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string tr(string singular, string plural, int n)

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

Translate the given input string singular or plural (depending on the
number of items n) using gettext. Note that tr() does not automatically
insert the values in the QString, so it should be called like this:
tr("%1 file", "%1 files", count).arg(count)

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tr -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tr-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string tr(string text)

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

Translate text using gettext and return the translation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tr -->


