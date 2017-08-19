QtAudioEngine.AttenuationModelLinear
====================================

.. raw:: html

   <p>

Defines a linear attenuation curve for a Sound. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AttenuationModelLinear -->

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

import QtAudioEngine 1.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt 5.0

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

end : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

start : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AttenuationModelLinear-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This type is part of the QtAudioEngine 1.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

AttenuationModelLinear must be defined inside AudioEngine.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtAudioEngine 1.0
   <span class="type">Rectangle</span> {
   <span class="name">color</span>:<span class="string">&quot;white&quot;</span>
   <span class="name">width</span>: <span class="number">300</span>
   <span class="name">height</span>: <span class="number">500</span>
   <span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
   <span class="name">id</span>:<span class="name">audioengine</span>
   <span class="type"><a href="index.html">AttenuationModelLinear</a></span> {
   <span class="name">name</span>:<span class="string">&quot;linear&quot;</span>
   <span class="name">start</span>: <span class="number">20</span>
   <span class="name">end</span>: <span class="number">180</span>
   }
   <span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
   }
   <span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="name">attenuationModel</span>: <span class="string">&quot;linear&quot;</span>
   <span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@AttenuationModelLinear -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$end -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="end-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

end : real

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

This property holds the end distance. There will be no sound hearable if
the distance from sound to listener is larger than this. The default
value is 1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@end -->

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

This property holds the name of AttenuationModelLinear, must be unique
among all attenuation models and only defined once.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="start-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

start : real

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

This property holds the start distance. There will be no attenuation if
the distance from sound to listener is within this range. The default
value is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@start -->


