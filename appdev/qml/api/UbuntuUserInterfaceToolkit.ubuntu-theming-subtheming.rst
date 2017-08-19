UbuntuUserInterfaceToolkit.ubuntu-theming-subtheming
====================================================

.. raw:: html

   <p>

There can be situations when an application has a design which combines
styles from different themes, which would not be possible or would be
hard to be combined in a single theme. In these situations developers
can use different themes in the components and its child components.
This is called sub-theming, which was introduced in Ubuntu.Components
1.3. The only thing the application has to do is to define a
ThemeSettings instance for the component which is desired to use a
different theme.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Popups 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">applicationName</span>: <span class="string">&quot;subthemed&quot;</span>
   <span class="comment">// make sure the main theme is Ambiance</span>
   <span class="name">theme</span>.name: <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">dialogComponent</span>
   <span class="type"><a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a></span> {
   <span class="name">id</span>: <span class="name">dialog</span>
   <span class="name">title</span>: <span class="string">&quot;Input dialog&quot;</span>
   <span class="comment">// the dialog and its children will use SuruDark</span>
   <span class="name">theme</span>: <span class="name">ThemeSettings</span> {
   <span class="name">name</span>: <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">placeholderText</span>: <span class="string">&quot;enter text&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Close&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialog</span>)
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Open dialog&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">dialogComponent</span>)
   }
   }</pre>

.. raw:: html

   <p>

Another use-case is when a different palette set is needed in the
application. One way to achieve that is to define a custom theme for the
application, however that theme must be derived from one particular
theme, so the application will be restricted to one given theme. If we
want to have the same palette values to be used no matter where the
component is used, we can override the palette values we want to change,
by setting the theme palette to a Palette instance where only the
desired palette values are changed. This can be combined with
sub-theming, which will make sure that the palette values are applied
only on a certain component sub-tree.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example makes sure the Dialog and its child components
will use a given palette value:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Themes 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">applicationName</span>: <span class="string">&quot;subthemed&quot;</span>
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">dialogComponent</span>
   <span class="type"><a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a></span> {
   <span class="name">id</span>: <span class="name">dialog</span>
   <span class="name">title</span>: <span class="string">&quot;Input dialog&quot;</span>
   <span class="comment">// make sure the dialog and its children will use the same</span>
   <span class="comment">// theme as the rest of the application</span>
   <span class="name">theme</span>: <span class="name">ThemeSettings</span> {
   <span class="name">name</span>: <span class="name">parentTheme</span>.<span class="name">name</span>
   <span class="name">palette</span>: <span class="name">Palette</span> {
   <span class="name">id</span>: <span class="name">config</span>
   <span class="type">normal</span> {
   <span class="name">foregroundText</span>: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
   <span class="name">overlayText</span>: <span class="string">&quot;#BAFEDC&quot;</span>
   }
   <span class="type">selected</span> {
   <span class="name">fieldText</span>: <span class="string">&quot;brown&quot;</span>
   <span class="name">foregroundText</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>, <span class="number">0</span>, <span class="number">1</span>, <span class="number">1</span>)
   <span class="name">overlayText</span>: <span class="name">config</span>.<span class="name">normal</span>.<span class="name">overlayText</span>
   <span class="name">foreground</span>: <span class="name">UbuntuColors</span>.<span class="name">green</span>
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">placeholderText</span>: <span class="string">&quot;enter text&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Close&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialog</span>)
   }
   }
   }
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Set Ambiance theme&quot;</span>
   <span class="name">onClicked</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Set SuruDark theme&quot;</span>
   <span class="name">onClicked</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Open dialog&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">dialogComponent</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: Note the way the theme is changed! The first two buttons actually
change the name of the theme they inherit, which is the application's
theme. This means that the theme will actually be changed on the entire
application, not only on the Button itself.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Dialog uses the parentTheme property to load the same theme as its
parent styled item is using, meaning that the Dialog will also load the
same theme as the application does, and will change the loaded palette
values with the ones defined in the config Palette instance, namely the
foregroundText and overlayText of normal, as well as fieldText,
foregroundText, overlayText and foreground on selected groups.

.. raw:: html

   </p>

.. raw:: html

   <p>

There may be cases when a subset of components wants to use different
style versions than the one provided by the module version. Remember,
using earlier minor versions of the theme is perfectly fine while using
newer versions may not work, as component styles may use newer APIs of
the component which is not present in the component, thus the style will
fail.

.. raw:: html

   </p>

.. raw:: html

   <p>

Let's take the example above, and assume that we want to show the Dialog
with the same theme as the application but with an earlier version. We
can do this by specifying the theme version with Ubuntu.version() as
follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Themes 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="name">applicationName</span>: <span class="string">&quot;subthemed&quot;</span>
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">dialogComponent</span>
   <span class="type"><a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a></span> {
   <span class="name">id</span>: <span class="name">dialog</span>
   <span class="name">title</span>: <span class="string">&quot;Input dialog&quot;</span>
   <span class="comment">// make sure the dialog and its children will use the same</span>
   <span class="comment">// theme as the rest of the application</span>
   <span class="name">theme</span>: <span class="name">ThemeSettings</span> {
   <span class="name">name</span>: <span class="name">parentTheme</span>.<span class="name">name</span>
   <span class="comment">// use version 1.2 of the theme</span>
   <span class="name">version</span>: <span class="name">Ubuntu</span>.<span class="name">version</span>(<span class="number">1</span>, <span class="number">2</span>)
   }
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">placeholderText</span>: <span class="string">&quot;enter text&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Close&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialog</span>)
   }
   }
   }
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Set Ambiance theme&quot;</span>
   <span class="name">onClicked</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Set SuruDark theme&quot;</span>
   <span class="name">onClicked</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Open dialog&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">dialogComponent</span>)
   }
   }
   }</pre>

.. raw:: html

   <h2 id="that-s-it">

That's it

.. raw:: html

   </h2>

.. raw:: html

   <p>

By now you should have learned what the styling means, what are the
themes, what kind of themes the toolkit has, how can you create shared
or application themes, where should you store them, how to extend
styles, how to use multiple themes in an application and how to set
custom palette values runtime. If you have questions or need guidance,
you can contact us on #ubuntu-app-devel IRC channel on freenode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ubuntu-theming-subtheming.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

.. raw:: html

   <li>

Themes

.. raw:: html

   </li>

.. raw:: html

   </p>
