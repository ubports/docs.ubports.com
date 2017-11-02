.. _sdk_ubuntuuserinterfacetoolkit_ubuntu_user_interface_toolkit:
UbuntuUserInterfaceToolkit Ubuntu User Interface Toolkit
========================================================


                General Topics

-  `What's new in version
   1.2? </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-whatsnew/>`_ 
-  `Styling </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-theming/>`_ 
   components
-  `Layouts </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts/>`_ 
   describes a flexible layouting engine to ease the development of
   responsive user interfaces.
-  `Resolution
   Independence </sdk/apps/qml/UbuntuUserInterfaceToolkit/resolution-independence/>`_ 
   describes the facilities that should be used when setting the size of
   UI elements (widgets, fonts, etc.) in order for them to behave well
   on a variety of devices.
-  `Automatic State
   Saving </sdk/apps/qml/UbuntuUserInterfaceToolkit/statesaving/>`_ 
   provides automatic property saving for components.

        Basic QML Types
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| :ref:`AbstractButton <sdk_ubuntu_componen | Defines the behavior of the button   |
| ts_abstractbutton>`_                 |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`Action <sdk_ubuntu_components_actio | Describe an action that can be       |
| n>`_                                 | re-used and shared between different |
|                                      | components                           |
+--------------------------------------+--------------------------------------+
| :ref:`ActionBar <sdk_ubuntu_components_ac | Show a row of buttons that trigger   |
| tionbar>`_                           | actions. When the number of visible  |
|                                      | actions specified is larger than     |
|                                      | numberOfSlots, an overflow button    |
|                                      | will be shown which triggers an      |
|                                      | overflow panel that shows the        |
|                                      | remaining actions                    |
+--------------------------------------+--------------------------------------+
| :ref:`ActionContext <sdk_ubuntu_component | Groups actions together and by       |
| s_actioncontext>`_                   | providing multiple contexts the      |
|                                      | developer is able to control the     |
|                                      | visibility of the actions. The       |
|                                      | ActionManager then exposes the       |
|                                      | actions from these different         |
|                                      | contexts                             |
+--------------------------------------+--------------------------------------+
| :ref:`ActionItem <sdk_ubuntu_components_a | A visual representation of an        |
| ctionitem>`_                         | Action. The API of ActionItem is a   |
|                                      | copy of the API of Action, with      |
|                                      | additional properties to define      |
|                                      | visual aspects of the ActionItem     |
+--------------------------------------+--------------------------------------+
| :ref:`ActionList <sdk_ubuntu_components_a | List of Action items An ActionList   |
| ctionlist>`_                         | provies a way of grouping actions    |
|                                      | together                             |
+--------------------------------------+--------------------------------------+
| :ref:`ActionManager <sdk_ubuntu_component | Manages actions and action contexts  |
| s_actionmanager>`_                   | withion an application               |
+--------------------------------------+--------------------------------------+
| :ref:`ActivityIndicator <sdk_ubuntu_compo | Component visually indicates that a  |
| nents_activityindicator>`_           | task of unknown duration is in       |
|                                      | progress, e.g. busy indication,      |
|                                      | connection in progress indication,   |
|                                      | etc                                  |
+--------------------------------------+--------------------------------------+
| :ref:`AdaptivePageLayout <sdk_ubuntu_comp | View with multiple columns of Pages  |
| onents_adaptivepagelayout>`_         |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`BottomEdge <sdk_ubuntu_components_b | A component to handle bottom edge    |
| ottomedge>`_                         | gesture and content                  |
+--------------------------------------+--------------------------------------+
| :ref:`BottomEdgeHint <sdk_ubuntu_componen | Shows the availability of extra      |
| ts_bottomedgehint>`_                 | features available from the bottom   |
|                                      | edge of the application              |
+--------------------------------------+--------------------------------------+
| :ref:`BottomEdgeRegion <sdk_ubuntu_compon | Defines an active region within the  |
| ents_bottomedgeregion>`_             | BottomEdge component                 |
+--------------------------------------+--------------------------------------+
| :ref:`Button <sdk_ubuntu_components_butto | Standard Ubuntu button               |
| n>`_                                 |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`CheckBox <sdk_ubuntu_components_che | Component with two states, checked   |
| ckbox>`_                             | or unchecked. It can be used to set  |
|                                      | boolean options. The behavior is the |
|                                      | same as Switch, the only difference  |
|                                      | is the graphical style               |
+--------------------------------------+--------------------------------------+
| :ref:`Clipboard <sdk_ubuntu_components_cl | This is a singleton type providing   |
| ipboard>`_                           | access to the system clipboard       |
+--------------------------------------+--------------------------------------+
| :ref:`ComboButton <sdk_ubuntu_components_ | Ubuntu button providing a drop-down  |
| combobutton>`_                       | panel visualizing custom options     |
+--------------------------------------+--------------------------------------+
| :ref:`CrossFadeImage <sdk_ubuntu_componen | An Image like component which        |
| ts_crossfadeimage>`_                 | smoothly fades when its source is    |
|                                      | updated                              |
+--------------------------------------+--------------------------------------+
| :ref:`ExclusiveGroup <sdk_ubuntu_componen | Way to declare several checkable     |
| ts_exclusivegroup>`_                 | controls as mutually exclusive       |
+--------------------------------------+--------------------------------------+
| :ref:`FontUtils <sdk_ubuntu_components_fo | Context property, which provides     |
| ntutils>`_                           | utility functions for font           |
|                                      | manipulations                        |
+--------------------------------------+--------------------------------------+
| :ref:`Header <sdk_ubuntu_components_heade | Bar that can contain the title and   |
| r>`_                                 | controls for the current view        |
+--------------------------------------+--------------------------------------+
| :ref:`Icon <sdk_ubuntu_components_icon>`_ | Component displays an icon from the  |
| _                                    | icon theme                           |
+--------------------------------------+--------------------------------------+
| :ref:`InverseMouse <sdk_ubuntu_components | Attached object filtering mouse      |
| _inversemouse>`_                     | events occured outside the owner     |
+--------------------------------------+--------------------------------------+
| :ref:`InverseMouseArea <sdk_ubuntu_compon | Captures mouse events happening      |
| ents_inversemousearea>`_             | outside of a given area              |
+--------------------------------------+--------------------------------------+
| :ref:`Label <sdk_ubuntu_components_label> | Extended Text item with Ubuntu       |
| `_                                   | styling                              |
+--------------------------------------+--------------------------------------+
| :ref:`ListItemLayout <sdk_ubuntu_componen | Easy way to create list items which  |
| ts_listitemlayout>`_                 | follow Ubuntu design standards, thus |
|                                      | making them visually appealing and   |
|                                      | consistent with the rest of the      |
|                                      | platform without effort              |
+--------------------------------------+--------------------------------------+
| :ref:`LiveTimer <sdk_ubuntu_components_li | A live timing source providing       |
| vetimer>`_                           | peridioc updates                     |
+--------------------------------------+--------------------------------------+
| :ref:`MainView <sdk_ubuntu_components_mai | The root Item that should be used    |
| nview>`_                             | for all applications                 |
+--------------------------------------+--------------------------------------+
| :ref:`Menu <sdk_ubuntu_components_menu>`_ | Defines a context menu or submenu    |
| _                                    | structure of a MenuBar               |
+--------------------------------------+--------------------------------------+
| :ref:`MenuBar <sdk_ubuntu_components_menu | Defines an application menu bar      |
| bar>`_                               | structure                            |
+--------------------------------------+--------------------------------------+
| :ref:`MenuGroup <sdk_ubuntu_components_me | Logical list of items for a menu     |
| nugroup>`_                           |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`MimeData <sdk_ubuntu_components_mim | Type provides interface to access    |
| edata>`_                             | and store data to the Clipboard      |
+--------------------------------------+--------------------------------------+
| :ref:`Mouse <sdk_ubuntu_components_mouse> | Attached property filtering mouse    |
| `_                                   | events occured inside the owner      |
+--------------------------------------+--------------------------------------+
| :ref:`OrientationHelper <sdk_ubuntu_compo | Automatically rotates its children   |
| nents_orientationhelper>`_           | following the orientation of the     |
|                                      | device                               |
+--------------------------------------+--------------------------------------+
| :ref:`Page <sdk_ubuntu_components_page>`_ | A page is the basic Item that        |
| _                                    | represents a single view in an       |
|                                      | Ubuntu application. It is            |
|                                      | recommended to use the Page inside   |
|                                      | the MainView or AdaptivePageLayout   |
+--------------------------------------+--------------------------------------+
| :ref:`PageColumn <sdk_ubuntu_components_p | Component configuring the metrics of |
| agecolumn>`_                         | a column in AdaptivePageLayout       |
+--------------------------------------+--------------------------------------+
| :ref:`PageColumnsLayout <sdk_ubuntu_compo | Component configuring a layout in an |
| nents_pagecolumnslayout>`_           | AdaptivePageLayout component         |
+--------------------------------------+--------------------------------------+
| :ref:`PageHeader <sdk_ubuntu_components_p | Shows a title with a leading and a   |
| ageheader>`_                         | trailing ActionBar that add action   |
|                                      | buttons to the header                |
+--------------------------------------+--------------------------------------+
| :ref:`PageStack <sdk_ubuntu_components_pa | A stack of Page items that is used   |
| gestack>`_                           | for inter-Page navigation. Pages on  |
|                                      | the stack can be popped, and new     |
|                                      | Pages can be pushed. The page on top |
|                                      | of the stack is the visible one      |
+--------------------------------------+--------------------------------------+
| :ref:`Panel <sdk_ubuntu_components_panel> | A panel that can be swiped in and    |
| `_                                   | out from an edge of the window by    |
|                                      | the user. For most applications, it  |
|                                      | is highly recommended to use the     |
|                                      | MainView instead which includes a    |
|                                      | toolbar at its bottom that can be    |
|                                      | swiped in or out                     |
+--------------------------------------+--------------------------------------+
| :ref:`PopupContext <sdk_ubuntu_components | A special ActionContext used in      |
| _popupcontext>`_                     | Dialogs and Popups                   |
+--------------------------------------+--------------------------------------+
| :ref:`ProgressBar <sdk_ubuntu_components_ | Component visually indicates the     |
| progressbar>`_                       | progress of a process of determinate |
|                                      | or indeterminate duration            |
+--------------------------------------+--------------------------------------+
| :ref:`ProgressionSlot <sdk_ubuntu_compone | Holds an icon representing the       |
| nts_progressionslot>`_               | progression symbol                   |
+--------------------------------------+--------------------------------------+
| :ref:`ProportionalShape <sdk_ubuntu_compo | Extended UbuntuShape mostly used for |
| nents_proportionalshape>`_           | icons and vignettes                  |
+--------------------------------------+--------------------------------------+
| :ref:`PullToRefresh <sdk_ubuntu_component | Pull-to-refresh component for        |
| s_pulltorefresh>`_                   | Flickables to reload a model upon    |
|                                      | pull                                 |
+--------------------------------------+--------------------------------------+
| :ref:`ScrollView <sdk_ubuntu_components_s | Scrollable view that features        |
| crollview>`_                         | scrollbars and scrolling via         |
|                                      | keyboard keys                        |
+--------------------------------------+--------------------------------------+
| :ref:`Scrollbar <sdk_ubuntu_components_sc | Component provides scrolling         |
| rollbar>`_                           | functionality for scrollable views   |
|                                      | (i.e. Flickable, ListView)           |
+--------------------------------------+--------------------------------------+
| :ref:`Sections <sdk_ubuntu_components_sec | Display a list of sections that the  |
| tions>`_                             | user can select. By tapping on a     |
|                                      | section name the selectedIndex will  |
|                                      | be updated, and the associated       |
|                                      | Action is triggered                  |
+--------------------------------------+--------------------------------------+
| :ref:`Slider <sdk_ubuntu_components_slide | Component to select a value from a   |
| r>`_                                 | continuous range of values           |
+--------------------------------------+--------------------------------------+
| :ref:`SortFilterModel <sdk_ubuntu_compone | Sorts and filters rows from an       |
| nts_sortfiltermodel>`_               | existing model                       |
+--------------------------------------+--------------------------------------+
| :ref:`StyleHints <sdk_ubuntu_components_s | Component holding style specific     |
| tylehints>`_                         | properties to configure a particular |
|                                      | StyledItem's style runtime           |
+--------------------------------------+--------------------------------------+
| :ref:`StyledItem <sdk_ubuntu_components_s | Allows items to be styled by the     |
| tyleditem>`_                         | theme                                |
+--------------------------------------+--------------------------------------+
| :ref:`Switch <sdk_ubuntu_components_switc | Component with two states, checked   |
| h>`_                                 | or unchecked. It can be used to set  |
|                                      | boolean options. The behavior is the |
|                                      | same as CheckBox, the only           |
|                                      | difference is the graphical style    |
+--------------------------------------+--------------------------------------+
| :ref:`TextArea <sdk_ubuntu_components_tex | Item displays a block of editable,   |
| tarea>`_                             | scrollable, formatted text           |
+--------------------------------------+--------------------------------------+
| :ref:`TextField <sdk_ubuntu_components_te | Element displays a single line of    |
| xtfield>`_                           | editable plain text. Input           |
|                                      | constraints can be set through       |
|                                      | validator or inputMask. Setting      |
|                                      | echoMode to an appropriate value     |
|                                      | enables TextField to be used as      |
|                                      | password input field                 |
+--------------------------------------+--------------------------------------+
| :ref:`Toolbar <sdk_ubuntu_components_tool | That can be used as an extension for |
| bar>`_                               | the edit mode header. Example:       |
+--------------------------------------+--------------------------------------+
| :ref:`Ubuntu <sdk_ubuntu_components_ubunt | Provides global object with          |
| u>`_                                 | different enums                      |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuAnimation <sdk_ubuntu_compone | Singleton defining standard Ubuntu   |
| nts_ubuntuanimation>`_               | durations and easing for animations  |
|                                      | that should be used to ensure that   |
|                                      | Ubuntu applications are consistent   |
|                                      | in their animations                  |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuApplication <sdk_ubuntu_compo | QML binding for a subset of          |
| nents_ubuntuapplication>`_           | QCoreApplication                     |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuColors <sdk_ubuntu_components | Singleton defining the Ubuntu color  |
| _ubuntucolors>`_                     | palette                              |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuListView <sdk_ubuntu_componen | A ListView with special features     |
| ts_ubuntulistview>`_                 | tailored for a look and feel fitting |
|                                      | the Ubuntu Touch platform. The       |
|                                      | UbuntuListView works just like a     |
|                                      | regular ListView, but it adds        |
|                                      | special features such as             |
|                                      | expanding/collapsing items (when     |
|                                      | used together with the Expandable    |
|                                      | item). It provides features like     |
|                                      | automatically positioning the        |
|                                      | expanding item when it expands and   |
|                                      | collapsing it again when the user    |
|                                      | taps outside of it                   |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuNumberAnimation <sdk_ubuntu_c | NumberAnimation that has predefined  |
| omponents_ubuntunumberanimation>`_   | settings to ensure that Ubuntu       |
|                                      | applications are consistent in their |
|                                      | animations                           |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuShape <sdk_ubuntu_components_ | Rounded rectangle containing a       |
| ubuntushape>`_                       | source image blended over a          |
|                                      | background color                     |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuShapeOverlay <sdk_ubuntu_comp | Extended UbuntuShape adding a        |
| onents_ubuntushapeoverlay>`_         | colored overlay layer                |
+--------------------------------------+--------------------------------------+
| :ref:`UriHandler <sdk_ubuntu_components_u | Singleton signalling for opened URIs |
| rihandler>`_                         |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`dateUtils <sdk_ubuntu_components_da | Various date utility functions       |
| teutils>`_                           |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`i18n <sdk_ubuntu_components_i18n>`_ | Context property that provides       |
| _                                    | internationalization support         |
+--------------------------------------+--------------------------------------+
| :ref:`mathUtils <sdk_ubuntu_components_ma | Various mathematical utility         |
| thutils>`_                           | functions                            |
+--------------------------------------+--------------------------------------+

        Gestures
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| :ref:`SwipeArea <sdk_ubuntu_components_sw | An area which detects axis-aligned   |
| ipearea>`_                           | single-finger drag gestures          |
+--------------------------------------+--------------------------------------+

        List views, list items
Components with standardized view items, with conditional actions,
multiselect and reordering support on scrollable views. Replaces the
Ubuntu.Components.ListItems module components.

Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| :ref:`Captions <sdk_ubuntu_components_cap | Container providing captionStyles    |
| tions>`_                             | for a twin-label column that can be  |
|                                      | used in RowLayout or GridLayout      |
+--------------------------------------+--------------------------------------+
| :ref:`ListItem <sdk_ubuntu_components_lis | Element provides Ubuntu design       |
| titem>`_                             | standards for list or grid views.    |
|                                      | The ListItem component was designed  |
|                                      | to be used in a list view. It does   |
|                                      | not define any specific layout, but  |
|                                      | while its contents can be freely     |
|                                      | chosen by the developer, care must   |
|                                      | be taken to keep the contents light  |
|                                      | in order to ensure good performance  |
|                                      | when used in long list views         |
+--------------------------------------+--------------------------------------+
| :ref:`ListItemActions <sdk_ubuntu_compone | Provides configuration for actions   |
| nts_listitemactions>`_               | to be added to a ListItem            |
+--------------------------------------+--------------------------------------+
| :ref:`ListItemDrag <sdk_ubuntu_components | Provides information about a         |
| _listitemdrag>`_                     | ListItem drag event                  |
+--------------------------------------+--------------------------------------+
| :ref:`ViewItems <sdk_ubuntu_components_vi | A set of properties attached to the  |
| ewitems>`_                           | ListItem's parent item or ListView   |
+--------------------------------------+--------------------------------------+

        List Items module - deprecated
This module contains the old set of list items.

Available through:

.. code:: cpp

    import Ubuntu.Components.ListItems 1.3

+--------------------------------------+--------------------------------------+
| `Base </sdk/apps/qml/Ubuntu.Componen | Parent class of various list item    |
| ts/ListItems.Base/>`_                | classes that can have an icon and a  |
|                                      | progression symbol                   |
+--------------------------------------+--------------------------------------+
| `Caption </sdk/apps/qml/Ubuntu.Compo | List item that shows a piece of text |
| nents/ListItems.Caption/>`_          |                                      |
+--------------------------------------+--------------------------------------+
| `Divider </sdk/apps/qml/Ubuntu.Compo | To break up list items into groups   |
| nents/ListItems.Divider/>`_          |                                      |
+--------------------------------------+--------------------------------------+
| `Empty </sdk/apps/qml/Ubuntu.Compone | A list item with no contents         |
| nts/ListItems.Empty/>`_              |                                      |
+--------------------------------------+--------------------------------------+
| `Expandable </sdk/apps/qml/Ubuntu.Co | An expandable list item with no      |
| mponents/ListItems.Expandable/>`_    | contents. The Expandable class can   |
|                                      | be used for generic list items       |
|                                      | containing other components such as  |
|                                      | buttons. It subclasses Empty and     |
|                                      | thus brings all that functionality,  |
|                                      | but additionally provides means to   |
|                                      | expand and collapse the item         |
+--------------------------------------+--------------------------------------+
| `ExpandablesColumn </sdk/apps/qml/Ub | A column to be used together with    |
| untu.Components/ListItems.Expandable | the Expandable item. This lays out   |
| sColumn/>`_                          | its content just like a regular      |
|                                      | Column inside a Flickable but when   |
|                                      | used together with items of type     |
|                                      | Expandable it provides additional    |
|                                      | features like automatically          |
|                                      | positioning the expanding item when  |
|                                      | it expands and collapsing it again   |
|                                      | when the user taps outside of it     |
+--------------------------------------+--------------------------------------+
| `ItemSelector </sdk/apps/qml/Ubuntu. | ListItem displaying either a single  |
| Components/ListItems.ItemSelector/>` | selected value or expanded multiple  |
| __                                   | choice with an optional image and    |
|                                      | subtext when not expanded, when      |
|                                      | expanding it opens a listing of all  |
|                                      | the possible values for selection    |
|                                      | with an additional option of always  |
|                                      | being expanded. If multiple choice   |
|                                      | is selected the list is expanded     |
|                                      | automatically                        |
+--------------------------------------+--------------------------------------+
| `MultiValue </sdk/apps/qml/Ubuntu.Co | List item displaying multiple values |
| mponents/ListItems.MultiValue/>`_    |                                      |
+--------------------------------------+--------------------------------------+
| `SingleControl </sdk/apps/qml/Ubuntu | A list item containing a single      |
| .Components/ListItems.SingleControl/ | control                              |
| >`_                                  |                                      |
+--------------------------------------+--------------------------------------+
| `SingleValue </sdk/apps/qml/Ubuntu.C | A list item displaying a single      |
| omponents/ListItems.SingleValue/>`_  | value                                |
+--------------------------------------+--------------------------------------+
| `Standard </sdk/apps/qml/Ubuntu.Comp | Standard list item class. It shows a |
| onents/ListItems.Standard/>`_        | basic list item with a label (text), |
|                                      | and optionally an icon, a            |
|                                      | progression arrow, and it can have   |
|                                      | an embedded Item (control) that can  |
|                                      | be used for including Buttons,       |
|                                      | Switches etc. inside the list item   |
+--------------------------------------+--------------------------------------+
| `Subtitled </sdk/apps/qml/Ubuntu.Com | List item displaying a second string |
| ponents/ListItems.Subtitled/>`_      | under the main label                 |
+--------------------------------------+--------------------------------------+
| `ThinDivider </sdk/apps/qml/Ubuntu.C | Narrow line used as a divider        |
| omponents/ListItems.ThinDivider/>`_  | between ListItems                    |
+--------------------------------------+--------------------------------------+
| `ValueSelector </sdk/apps/qml/Ubuntu | List item displaying single selected |
| .Components/ListItems.ValueSelector/ | value when not expanded, where       |
| >`_                                  | expanding it opens a listing of all  |
|                                      | the possible values for selection    |
+--------------------------------------+--------------------------------------+

        Pickers
Available through:

.. code:: cpp

    import Ubuntu.Components.Pickers 1.3

+--------------------------------------+--------------------------------------+
| `DatePicker </sdk/apps/qml/Ubuntu.Co | Component provides date and time     |
| mponents/Pickers.DatePicker/>`_      | value picking functionality          |
+--------------------------------------+--------------------------------------+
| `Picker </sdk/apps/qml/Ubuntu.Compon | Slot-machine style value selection   |
| ents/Pickers.Picker/>`_              | component                            |
+--------------------------------------+--------------------------------------+
| `PickerDelegate </sdk/apps/qml/Ubunt | Component serves as base for Picker  |
| u.Components/Pickers.PickerDelegate/ | delegates                            |
| >`_                                  |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`PickerPanel <sdk_ubuntu_components_ | Provides a panel for opening a       |
| pickerpanel>`_                       | DatePicker in place of the input     |
|                                      | panel or as Popover, depending on    |
|                                      | the form factor                      |
+--------------------------------------+--------------------------------------+

        Popovers, Sheets and Dialogs
Available through:

.. code:: cpp

    import Ubuntu.Components.Popups 1.3

+--------------------------------------+--------------------------------------+
| `ActionSelectionPopover </sdk/apps/q | A special popover presenting actions |
| ml/Ubuntu.Components/Popups.ActionSe | to the user. The popover is closed   |
| lectionPopover/>`_                   | automatically when the action is     |
|                                      | chosen                               |
+--------------------------------------+--------------------------------------+
| `Dialog </sdk/apps/qml/Ubuntu.Compon | Caters for cases in which the        |
| ents/Popups.Dialog/>`_               | application requires the user to     |
|                                      | determine between optional actions.  |
|                                      | The Dialog will interrupt the user   |
|                                      | flow and lock the view for further   |
|                                      | interaction before the user has      |
|                                      | selected a desired action. It can    |
|                                      | only be closed by selecting an       |
|                                      | optional action confirming or        |
|                                      | cancelling the operation             |
+--------------------------------------+--------------------------------------+
| `Popover </sdk/apps/qml/Ubuntu.Compo | A popover allows an application to   |
| nents/Popups.Popover/>`_             | present additional content without   |
|                                      | changing the view. A popover has a   |
|                                      | fixed width and automatic height,    |
|                                      | depending on is contents. It can be  |
|                                      | closed by clicking anywhere outside  |
|                                      | of the popover area                  |
+--------------------------------------+--------------------------------------+
| `PopupBase </sdk/apps/qml/Ubuntu.Com | Base class for all dialogs, sheets   |
| ponents/Popups.PopupBase/>`_         | and popovers. Do not use directly    |
+--------------------------------------+--------------------------------------+
| `popupUtils </sdk/apps/qml/Ubuntu.Co | Popover utility functions            |
| mponents/Popups.popupUtils/>`_       |                                      |
+--------------------------------------+--------------------------------------+

        Layouting
Available through:

.. code:: cpp

    import Ubuntu.Layouts 1.0

+--------------------------------------+--------------------------------------+
| :ref:`ConditionalLayout <sdk_ubuntu_layou | Defines the layout of a given form   |
| ts_conditionallayout>`_              | factor                               |
+--------------------------------------+--------------------------------------+
| :ref:`ItemLayout <sdk_ubuntu_layouts_item | Defines a new size & position of a   |
| layout>`_                            | single Item, for the purposes of     |
|                                      | specifying layouts. This is to be    |
|                                      | used within a ConditionalLayout      |
|                                      | definition                           |
+--------------------------------------+--------------------------------------+
| :ref:`Layouts <sdk_ubuntu_layouts_layouts | Component allows one to specify      |
| >`_                                  | multiple different layouts for a     |
|                                      | fixed set of Items, and applies the  |
|                                      | desired layout to those Items        |
+--------------------------------------+--------------------------------------+

        Theming Elements
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| `Palette </sdk/apps/qml/Ubuntu.Compo | Of colors from the theme that        |
| nents/Themes.Palette/>`_             | widgets use to draw themselves       |
+--------------------------------------+--------------------------------------+
| `PaletteValues </sdk/apps/qml/Ubuntu | Color values used for a given widget |
| .Components/Themes.PaletteValues/>`_ | state                                |
| _                                    |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`Theme <sdk_ubuntu_components_theme> | Facilities to interact with the      |
| `_                                   | current theme                        |
+--------------------------------------+--------------------------------------+
| :ref:`ThemeSettings <sdk_ubuntu_component | Facilities to define the theme of a  |
| s_themesettings>`_                   | StyledItem                           |
+--------------------------------------+--------------------------------------+

        Theme module
Available through:

.. code:: cpp

    import Ubuntu.Components.Themes 1.3

+--------------------------------------+--------------------------------------+
| `Palette </sdk/apps/qml/Ubuntu.Compo | Provides the palette of colors from  |
| nents/Themes.Palette/>`_             | the theme that widgets use to draw   |
|                                      | themselves                           |
+--------------------------------------+--------------------------------------+
| `PaletteValues </sdk/apps/qml/Ubuntu | Color values used for a given widget |
| .Components/Themes.PaletteValues/>`_ | state                                |
| _                                    |                                      |
+--------------------------------------+--------------------------------------+

        Style API
The Style API defines the interface components use to style the visuals.
Themes must make sure that these interfaces are all implemented.
Available through:

.. code:: cpp

    import Ubuntu.Components.Styles 1.3

+--------------------------------------+--------------------------------------+
| `ActionBarStyle </sdk/apps/qml/Ubunt | Style API for action bar             |
| u.Components/Styles.ActionBarStyle/> |                                      |
| `_                                   |                                      |
+--------------------------------------+--------------------------------------+
| `ActionItemProperties </sdk/apps/qml | Color properties for buttons         |
| /Ubuntu.Components/Styles.ActionItem |                                      |
| Properties/>`_                       |                                      |
+--------------------------------------+--------------------------------------+
| `BottomEdgeStyle </sdk/apps/qml/Ubun | Style API for BottomEdge content     |
| tu.Components/Styles.BottomEdgeStyle | holder panel                         |
| />`_                                 |                                      |
+--------------------------------------+--------------------------------------+
| `ComboButtonStyle </sdk/apps/qml/Ubu | Style API for ComboButton component  |
| ntu.Components/Styles.ComboButtonSty |                                      |
| le/>`_                               |                                      |
+--------------------------------------+--------------------------------------+
| `ListItemStyle </sdk/apps/qml/Ubuntu | Style API for ListItem component     |
| .Components/Styles.ListItemStyle/>`_ |                                      |
| _                                    |                                      |
+--------------------------------------+--------------------------------------+
| `PageHeadStyle </sdk/apps/qml/Ubuntu | Style API for page header            |
| .Components/Styles.PageHeadStyle/>`_ |                                      |
| _                                    |                                      |
+--------------------------------------+--------------------------------------+
| `PageHeaderStyle </sdk/apps/qml/Ubun | Style API for page header            |
| tu.Components/Styles.PageHeaderStyle |                                      |
| />`_                                 |                                      |
+--------------------------------------+--------------------------------------+
| `PullToRefreshStyle </sdk/apps/qml/U | Style API for PullToRefresh          |
| buntu.Components/Styles.PullToRefres | component                            |
| hStyle/>`_                           |                                      |
+--------------------------------------+--------------------------------------+
| `SectionsStyle </sdk/apps/qml/Ubuntu | Style API for Sections               |
| .Components/Styles.SectionsStyle/>`_ |                                      |
| _                                    |                                      |
+--------------------------------------+--------------------------------------+
| `ToolbarStyle </sdk/apps/qml/Ubuntu. | Style API for toolbar                |
| Components/Styles.ToolbarStyle/>`_   |                                      |
+--------------------------------------+--------------------------------------+

        Resolution Independence Items
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| :ref:`Units <sdk_ubuntu_components_units> | Of measurement for sizes, spacing,   |
| `_                                   | margin, etc                          |
+--------------------------------------+--------------------------------------+

        Parsing Command-Line Arguments
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| :ref:`Argument <sdk_ubuntu_components_arg | Specifies what type a given command  |
| ument>`_                             | line parameter should be             |
+--------------------------------------+--------------------------------------+
| :ref:`Arguments <sdk_ubuntu_components_ar | Way to declare what command line     |
| guments>`_                           | parameters are expected by the       |
|                                      | application                          |
+--------------------------------------+--------------------------------------+

        Services
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| :ref:`Alarm <sdk_ubuntu_components_alarm> | Component is a representation of an  |
| `_                                   | alarm event                          |
+--------------------------------------+--------------------------------------+
| :ref:`AlarmModel <sdk_ubuntu_components_a | Holds the list of alarms defined     |
| larmmodel>`_                         |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`Haptics <sdk_ubuntu_components_hapt | Singleton defining the haptics       |
| ics>`_                               | feedback used in components, where   |
|                                      | execution of the feedback is         |
|                                      | controlled by the system settings    |
+--------------------------------------+--------------------------------------+
| :ref:`ServiceProperties <sdk_ubuntu_compo | Component enables accessing service  |
| nents_serviceproperties>`_           | properties from QML                  |
+--------------------------------------+--------------------------------------+
| :ref:`StateSaver <sdk_ubuntu_components_s | Attached properties to save          |
| tatesaver>`_                         | component property states            |
+--------------------------------------+--------------------------------------+

        Performance Metrics
Available through:

.. code:: cpp

    import Ubuntu.PerformanceMetrics 1.0

        Labs
The Labs module contains a set of components which have unstable API.
Those should not be used in applications as their interface may change
any time. Available through:

.. code:: cpp

    import Ubuntu.Components.Labs 1.0

+--------------------------------------+--------------------------------------+
| `SplitView </sdk/apps/qml/Ubuntu.Com | A view component with a flexible     |
| ponents/Labs.SplitView/>`_           | layout configuration setup           |
+--------------------------------------+--------------------------------------+
| :ref:`SplitViewLayout <sdk_ubuntu_compone | Layout configuration for SplitView   |
| nts_splitviewlayout>`_               |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`ViewColumn <sdk_ubuntu_components_v | View column metrics configuration    |
| iewcolumn>`_                         | for SplitView                        |
+--------------------------------------+--------------------------------------+

        Test extensions
Available through:

.. code:: cpp

    import Ubuntu Test 1.3

+--------------------------------------+--------------------------------------+
| :ref:`MouseTouchAdaptor <sdk_ubuntu_test_ | Singleton type turning mouse events  |
| mousetouchadaptor>`_                 | into single finger touch events      |
+--------------------------------------+--------------------------------------+
| :ref:`TestExtras <sdk_ubuntu_test_testext | Singleton type providing additional  |
| ras>`_                               | test functions                       |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuTestCase <sdk_ubuntu_test_ubu | Expands the default TestCase class   |
| ntutestcase>`_                       |                                      |
+--------------------------------------+--------------------------------------+
| :ref:`UbuntuTestCase13 <sdk_ubuntu_test_u | UbuntuTestCase class expands the     |
| buntutestcase13>`_                   | default TestCase class               |
+--------------------------------------+--------------------------------------+

