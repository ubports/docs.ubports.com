Ubuntu.Components.Argument
==========================

.. raw:: html

   <p>

The Argument class specifies what type a given command line parameter
should be. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Argument -->

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

help : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

required : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

valueNames : list<string>

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

string at(int i)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Argument-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Important: Argument is not used on its own but must be a child of
Arguments.

.. raw:: html

   </p>

.. raw:: html

   <p>

An Argument is defined by its name and valueNames properties which
correspond to a command line parameter (e.g. --target) and the values
passed to it (e.g. --target=http://myaddress).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following code allows to retrieve parameters on the
command line of the form --target=URL:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Argument</a></span> {
   <span class="name">name</span>: <span class="string">&quot;target&quot;</span>
   <span class="name">help</span>: <span class="string">&quot;address of the resource to retrieve&quot;</span>
   <span class="name">required</span>: <span class="number">true</span>
   <span class="name">valueNames</span>: [<span class="string">&quot;URL&quot;</span>]
   }</pre>

.. raw:: html

   <p>

To retrieve a value passed to the parameter knowing its position, use
the at method.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Arguments.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Argument -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$help -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="help-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

help : string

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

Help displayed when launching the application with --usage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@help -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

Name identifying the command line argument.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example 'target' corrsesponds to the '--target' command line
argument.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="required-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

required : bool

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

Whether or not this argument needs to be passed on the command line when
launching the application.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@required -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="valueNames-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

valueNames : list<string>

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

Names given to the values of this argument. They are used when
displaying the expected command line arguments of the application.

.. raw:: html

   </p>

.. raw:: html

   <p>

Typically all capital letters (e.g. URL).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@valueNames -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$at -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="at-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string at(int i)

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

Returns the ith value of the argument. Values are counted from 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@at -->


