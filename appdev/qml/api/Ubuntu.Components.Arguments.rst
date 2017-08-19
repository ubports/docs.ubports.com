Ubuntu.Components.Arguments
===========================

.. raw:: html

   <p>

The Arguments class provides a way to declare what command line
parameters are expected by the application. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Arguments -->

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

arguments : list<Argument>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

defaultArgument : Argument

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorMessage : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

values : Object

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

void printUsage()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void quitWithError(string errorMessage)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Arguments-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of use:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Arguments</a></span> {
   <span class="name">id</span>: <span class="name">args</span>
   <span class="name">defaultArgument</span>.help: <span class="string">&quot;Expects URL of the media to play.&quot;</span>
   <span class="name">defaultArgument</span>.valueNames: [<span class="string">&quot;URL&quot;</span>]
   <span class="type"><a href="Ubuntu.Components.Argument.md">Argument</a></span> {
   <span class="name">name</span>: <span class="string">&quot;fullscreen&quot;</span>
   <span class="name">help</span>: <span class="string">&quot;whether or not the media will be played fullscreen&quot;</span>
   <span class="name">required</span>: <span class="number">false</span>
   }
   <span class="type"><a href="Ubuntu.Components.Argument.md">Argument</a></span> {
   <span class="name">name</span>: <span class="string">&quot;volume&quot;</span>
   <span class="name">help</span>: <span class="string">&quot;level to which to set the volume&quot;</span>
   <span class="name">required</span>: <span class="number">false</span>
   <span class="name">valueNames</span>: [<span class="string">&quot;VOLUME_LEVEL&quot;</span>]
   }
   }</pre>

.. raw:: html

   <p>

The code above ensures that at least one argument is passed on the
command line which will then be available in QML via the defaultArgument
property. Optionally two other arguments can be passed:

.. raw:: html

   </p>

.. raw:: html

   <p>

--fullscreen that will be exposed as a boolean property:
values.fullscreen

.. raw:: html

   </p>

.. raw:: html

   <p>

--volume that will be exposed as a string property: values.volume

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;volume = &quot;</span> <span class="operator">+</span> <span class="name">args</span>.<span class="name">values</span>.<span class="name">volume</span>
   }
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;fullscreen = &quot;</span> <span class="operator">+</span> <span class="name">args</span>.<span class="name">values</span>.<span class="name">fullscreen</span>
   }
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;URL = &quot;</span> <span class="operator">+</span> <span class="name">args</span>.<span class="name">defaultArgument</span>.<span class="name">at</span>(<span class="number">0</span>)
   }
   }</pre>

.. raw:: html

   <p>

If the application is launched with the incorrect arguments or with the
--usage argument an help will be outputted on the command line and the
application will exit:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Usage: application <span class="operator">[</span><span class="operator">-</span><span class="operator">-</span>fullscreen<span class="operator">]</span> <span class="operator">[</span><span class="operator">-</span><span class="operator">-</span>volume<span class="operator">=</span>VOLUME_LEVEL<span class="operator">]</span> URL
   Options:
   <span class="operator">-</span><span class="operator">-</span>fullscreen         whether <span class="keyword">or</span> <span class="keyword">not</span> the media will be played fullscreen
   <span class="operator">-</span><span class="operator">-</span>volume<span class="operator">=</span>VOLUME_LEVE level to which to set the volume
   Expects URL of the media to play<span class="operator">.</span></pre>

.. raw:: html

   <p>

See also Argument.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Arguments -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$arguments -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="arguments-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] [default] arguments : list<Argument>

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

List of command line arguments that are expected by the application.

.. raw:: html

   </p>

.. raw:: html

   <p>

See detailed description above for an example on how to use it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@arguments -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultArgument-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultArgument : Argument

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

The default argument corresponds to the values passed on the command
line without any name.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example in:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">.</span><span class="operator">/</span>application <span class="operator">-</span><span class="operator">-</span>volume<span class="operator">=</span><span class="number">42</span> http:<span class="comment">//myaddress</span></pre>

.. raw:: html

   <p>

http://myaddress is the first value of the default argument.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultArgument -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] error : bool

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

Whether or not the command line arguments passed to the application
correspond to the expected arguments.

.. raw:: html

   </p>

.. raw:: html

   <p>

Also set when calling quitWithError

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorMessage-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] errorMessage : string

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

Error message describing how the command line arguments passed to the
application failed to correspond to the expected arguments.

.. raw:: html

   </p>

.. raw:: html

   <p>

Also set when calling quitWithError

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorMessage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="values-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] values : Object

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

Object of which properties have the values of the command line
arguments.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@values -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$printUsage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="printUsage-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void printUsage()

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

Outputs help to the console on how to pass arguments to the application.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@printUsage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="quitWithError-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void quitWithError(string errorMessage)

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

Exits the application outputting errorMessage to the console.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@quitWithError -->


