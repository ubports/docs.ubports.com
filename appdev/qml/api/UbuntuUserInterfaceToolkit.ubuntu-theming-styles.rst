UbuntuUserInterfaceToolkit.ubuntu-theming-styles
================================================

.. raw:: html

   <h3>

Naming conventions

.. raw:: html

   </h3>

.. raw:: html

   <p>

With few exception, each toolkit component is having StyledItem as its
base component. The component is aimed to be the base component for all
styled elements in the toolkit. Modules providing additional components
to UI Toolkit can also use this component as base, especially if they
want to provide styling capabilities.

.. raw:: html

   </p>

.. raw:: html

   <p>

As mentioned, each styled component is having a style pair in a theme
which is implemented in a document named using the component name adding
the Style word. The Button's style is implemented by ButtonStyle.qml
document in the theme, and Button is loading this style from the theme:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="comment">// [...]</span>
   <span class="name">styleName</span>: <span class="string">&quot;ButtonStyle&quot;</span>
   }</pre>

.. raw:: html

   <p>

Developers can override the style in two ways, depending on how they
want to style the component:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

1. by overriding the style using an other style component from the
   theme, or

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   2. by overriding the style with a custom style component.

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

      But let's see first how the styles are implemented.

      .. raw:: html

         </p>

      .. raw:: html

         <h3>

      Creating styles

      .. raw:: html

         </h3>

      .. raw:: html

         <p>

      As mentioned before, styles are not restricted to only provide
      visuals to a component or set of components, but can have also
      logic which drives the component functionality. These kind of
      styles must implement the given component's style API, listed in
      Ubuntu.Components.Styles module.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      A good example of such a style is the ListItemStyle. The ListItem
      drives the style animation through the
      ListItemStyle::animatePanels property, value being false when the
      style is loaded during component creation, i.e. when the component
      requires some visuals to be present at creation time. Also,
      ListItem informs the style when to execute leading or trailing
      panel rebounds and provides the style the ability to overrule the
      swipe coordinates calculated by the ListItem. On the other hand,
      the style must inform the component about the position of the drag
      panel so the dragging (reordering of list items in a ListView) hot
      spot can be detected. A style implementation must use the API
      provided by ListItemStyle, otherwise ListItem will fail to
      function properly.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      Other styles are requested to provide additional content elements,
      which are then positioned by the styled component separately from
      the main visuals given by the style. A typical example of such a
      style API is the PullToRefresh component's style:

      .. raw:: html

         </p>

      .. raw:: html

         <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
         <span class="comment">/*!
         The property holds the style provided default content component. The value
         is assigned to the \l PullToRefresh::content property.
         */</span>
         property <span class="type"><a href="QtQml.Component.md">Component</a></span> <span class="name">defaultContent</span>
         <span class="comment">/*!
         The property holds the threshold value when the component should enter
         into \a ready-to-refresh state when dragged manually. The default value
         is the height of the component styled.
         */</span>
         property <span class="type">real</span> <span class="name">activationThreshold</span>: <span class="name">styledItem</span>.<span class="name">height</span>
         <span class="comment">/*!
         The property informs the component when a manual refresh can be triggered.
         Style implementations (themes) can decide when to flip the component to be
         ready to trigger reftesh signal.
         */</span>
         property <span class="type">bool</span> <span class="name">releaseToRefresh</span>: <span class="number">false</span>
         }</pre>

      .. raw:: html

         <p>

      The default style implementation can be found under
      Ubuntu.Components.Themes.Ambiance theme PullToRefreshStyle.qml.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      Beside these, component styles may provide default values for
      colors, fonts, widths, margins, thicknesses.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      Each style component has a styledItem context property defined by
      the StyledItem, which points to the StyledItem instance that uses
      the style. Style implementations can access the actual styled item
      through this property.

      .. raw:: html

         </p>

      .. raw:: html

         <h3>

      Overriding the default component style

      .. raw:: html

         </h3>

      .. raw:: html

         <h4>

      Override with a different style from the theme

      .. raw:: html

         </h4>

      .. raw:: html

         <p>

      Returning back to the ways to override a component's style,
      overriding by using a different style from the theme can simply be
      done by assigning the document name to the StyledItem.styleName
      property as follows:

      .. raw:: html

         </p>

      .. raw:: html

         <pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
         <span class="name">id</span>: <span class="name">button</span>
         <span class="name">styleName</span>: <span class="string">&quot;SquaryButtonStyle&quot;</span>
         }</pre>

      .. raw:: html

         <p>

      Note: The document extension doesn't have to be specified, the
      style creation will automatically append the .qml extension to it.
      This kind of style override assumes that the SquaryButtonStyle.qml
      document is present in the theme. This type of component styling
      makes sure the style will always have theme specific
      implementation or coloring, however it also requires the style
      document to be present in all the themes used by the application.

      .. raw:: html

         </p>

      .. raw:: html

         <h4>

      Override with a custom component

      .. raw:: html

         </h4>

      .. raw:: html

         <p>

      The other way is to override the style with a local component not
      present in any theme. The style component can be in-source
      (Component) or declared in a separate document, loaded dynamically
      with Loader or Qt.createComponent(). This kind of override will
      make sure the component will use the custom style no matter of the
      theme used. These styles however can still use the theme palette
      to be in sync with the theme coloring.

      .. raw:: html

         </p>

      .. raw:: html

         <pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
         <span class="name">id</span>: <span class="name">button</span>
         <span class="name">style</span>: <span class="name">Rectangle</span> {
         <span class="name">implicitWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">12</span>)
         <span class="name">implicitHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
         <span class="name">color</span>: <span class="name">styledItem</span>.<span class="name">color</span>
         <span class="type">border</span> {
         <span class="name">width</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">1</span>)
         <span class="name">color</span>: <span class="name">styledItem</span>.<span class="name">strokeColor</span>
         }
         <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
         <span class="name">text</span>: <span class="name">styledItem</span>.<span class="name">text</span>
         <span class="name">font</span>: <span class="name">styledItem</span>.<span class="name">font</span>
         }
         }
         }</pre>

      .. raw:: html

         <p>

      Note: Specifying a component for the StyledItem.style has
      precedence over the StyledItem::styleName. When both set, the
      stlke specified style property will be used. When this property is
      set to undefined or null, the style specified in styleName will be
      used. Obviously, when both properties are invalid, no style will
      be used.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@ubuntu-theming-styles.html -->

      .. raw:: html

         <p class="naviNextPrevious footerNavi">

      .. raw:: html

         <li>

      Introduction

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Themes

      .. raw:: html

         </li>

      .. raw:: html

         </p>
