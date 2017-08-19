Ubuntu.Connectivity.NetworkingStatus
====================================

.. raw:: html

   <p>

Overall system networking status. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@NetworkingStatus -->

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

import .

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

limitations : Limitations

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

limitedBandwith : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

online : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : Status

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$NetworkingStatus-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This is the top-level class for accessing networking information.

.. raw:: html

   </p>

.. raw:: html

   <p>

This class inherits the Qt C++ ubuntu::connectivity::NetworkingStatus
and provides two utility properties online and limitedBandwith for
easier QML usage.

.. raw:: html

   </p>

.. raw:: html

   <p>

This object is exposed as a singleton.

.. raw:: html

   </p>

.. raw:: html

   <p>

note: Using this component in confined application requires connectivity
policy group.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">/*
   * Copyright (C) 2014 Canonical Ltd.
   *
   * This program is free software: you can redistribute it and/or modify it
   * under the terms of the GNU Lesser General Public License version 3,
   * as published by the Free Software Foundation.
   *
   * This program is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   * GNU Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public License
   * along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.
   */</span>
   import QtQuick 2.0
   import Ubuntu.Components 0.1
   import Ubuntu.Connectivity 1.0
   <span class="type">MainView</span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">objectName</span>: <span class="string">&quot;mainView&quot;</span>
   <span class="name">applicationName</span>: <span class="string">&quot;Connectivity&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">75</span>)
   property <span class="type">real</span> <span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   property <span class="type">real</span> <span class="name">buttonWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">9</span>)
   property <span class="type">var</span> <span class="name">statusMap</span>: [<span class="string">&quot;Offline&quot;</span>, <span class="string">&quot;Connecting&quot;</span>, <span class="string">&quot;Online&quot;</span>]
   <span class="type">Connections</span> {
   <span class="name">target</span>: <span class="name">Connectivity</span>
   <span class="comment">// full status can be retrieved from the base C++ class</span>
   <span class="comment">// status property</span>
   <span class="name">onStatusChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Status: &quot;</span> <span class="operator">+</span> <span class="name">statusMap</span>[<span class="name">Connectivity</span>.<span class="name">status</span>])
   <span class="name">onOnlineChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Online: &quot;</span> <span class="operator">+</span> <span class="name">Connectivity</span>.<span class="name">online</span>)
   }
   <span class="type">Page</span> {
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Networking Status&quot;</span>)
   <span class="type">Column</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="type">Label</span> {
   <span class="comment">// use the online property</span>
   <span class="name">text</span>: <span class="name">Connectivity</span>.<span class="name">online</span> ? <span class="string">&quot;Online&quot;</span> : <span class="string">&quot;Not online&quot;</span>
   <span class="name">fontSize</span>: <span class="string">&quot;large&quot;</span>
   }
   <span class="type">Label</span> {
   <span class="comment">// use the status property</span>
   <span class="name">text</span>: <span class="string">&quot;Status: &quot;</span> <span class="operator">+</span> <span class="name">statusMap</span>[<span class="name">Connectivity</span>.<span class="name">status</span>]
   <span class="name">fontSize</span>: <span class="string">&quot;large&quot;</span>
   }
   <span class="type">Label</span> {
   <span class="comment">// use the limitedBandwith property</span>
   <span class="name">text</span>: <span class="name">Connectivity</span>.<span class="name">limitedBandwith</span> ? <span class="string">&quot;Bandwith limited&quot;</span> : <span class="string">&quot;Bandwith not limited&quot;</span>
   <span class="name">fontSize</span>: <span class="string">&quot;large&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@NetworkingStatus -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$limitations -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="limitations-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

limitations : Limitations

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@limitations -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="limitedBandwith-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

limitedBandwith : bool

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

true if Internet connection is bandwith limited.

.. raw:: html

   </p>

.. raw:: html

   <p>

shorthand for C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">networkingStatus<span class="operator">-</span><span class="operator">&gt;</span>limitations()<span class="operator">.</span>contains(NetworkingStatus<span class="operator">::</span>Limitations<span class="operator">::</span>Bandwith)</pre>

.. raw:: html

   <!-- @@@limitedBandwith -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="online-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

online : bool

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

true if system has Internet connection.

.. raw:: html

   </p>

.. raw:: html

   <p>

shorthand for C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">networkingStatus<span class="operator">-</span><span class="operator">&gt;</span>status() <span class="operator">=</span><span class="operator">=</span> NetworkingStatus<span class="operator">::</span>Online</pre>

.. raw:: html

   <!-- @@@online -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : Status

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

status property of the base C++ class.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">onStatusChanged: {
   <span class="keyword">if</span> (status <span class="operator">=</span><span class="operator">=</span><span class="operator">=</span> NetworkingStatus<span class="operator">::</span>Offline)
   ;
   <span class="keyword">else</span> <span class="keyword">if</span> (status <span class="operator">=</span><span class="operator">=</span><span class="operator">=</span> NetworkingStatus<span class="operator">::</span>Connecting)
   ;
   <span class="keyword">else</span> <span class="keyword">if</span> (status <span class="operator">=</span><span class="operator">=</span><span class="operator">=</span> NetworkingStatus<span class="operator">::</span>Online)
   ;
   }</pre>

.. raw:: html

   <!-- @@@status -->


