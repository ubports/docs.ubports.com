
                General Topics

-  `What's new in version
   1.2? </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-whatsnew/>`__
-  `Styling </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-theming/>`__
   components
-  `Layouts </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts/>`__
   describes a flexible layouting engine to ease the development of
   responsive user interfaces.
-  `Resolution
   Independence </sdk/apps/qml/UbuntuUserInterfaceToolkit/resolution-independence/>`__
   describes the facilities that should be used when setting the size of
   UI elements (widgets, fonts, etc.) in order for them to behave well
   on a variety of devices.
-  `Automatic State
   Saving </sdk/apps/qml/UbuntuUserInterfaceToolkit/statesaving/>`__
   provides automatic property saving for components.

        Basic QML Types
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| `AbstractButton </sdk/apps/qml/Ubunt | Defines the behavior of the button   |
| u.Components/AbstractButton/>`__     |                                      |
+--------------------------------------+--------------------------------------+
| `Action </sdk/apps/qml/Ubuntu.Compon | Describe an action that can be       |
| ents/Action/>`__                     | re-used and shared between different |
|                                      | components                           |
+--------------------------------------+--------------------------------------+
| `ActionBar </sdk/apps/qml/Ubuntu.Com | Show a row of buttons that trigger   |
| ponents/ActionBar/>`__               | actions. When the number of visible  |
|                                      | actions specified is larger than     |
|                                      | numberOfSlots, an overflow button    |
|                                      | will be shown which triggers an      |
|                                      | overflow panel that shows the        |
|                                      | remaining actions                    |
+--------------------------------------+--------------------------------------+
| `ActionContext </sdk/apps/qml/Ubuntu | Groups actions together and by       |
| .Components/ActionContext/>`__       | providing multiple contexts the      |
|                                      | developer is able to control the     |
|                                      | visibility of the actions. The       |
|                                      | ActionManager then exposes the       |
|                                      | actions from these different         |
|                                      | contexts                             |
+--------------------------------------+--------------------------------------+
| `ActionItem </sdk/apps/qml/Ubuntu.Co | A visual representation of an        |
| mponents/ActionItem/>`__             | Action. The API of ActionItem is a   |
|                                      | copy of the API of Action, with      |
|                                      | additional properties to define      |
|                                      | visual aspects of the ActionItem     |
+--------------------------------------+--------------------------------------+
| `ActionList </sdk/apps/qml/Ubuntu.Co | List of Action items An ActionList   |
| mponents/ActionList/>`__             | provies a way of grouping actions    |
|                                      | together                             |
+--------------------------------------+--------------------------------------+
| `ActionManager </sdk/apps/qml/Ubuntu | Manages actions and action contexts  |
| .Components/ActionManager/>`__       | withion an application               |
+--------------------------------------+--------------------------------------+
| `ActivityIndicator </sdk/apps/qml/Ub | Component visually indicates that a  |
| untu.Components/ActivityIndicator/>` | task of unknown duration is in       |
| __                                   | progress, e.g. busy indication,      |
|                                      | connection in progress indication,   |
|                                      | etc                                  |
+--------------------------------------+--------------------------------------+
| `AdaptivePageLayout </sdk/apps/qml/U | View with multiple columns of Pages  |
| buntu.Components/AdaptivePageLayout/ |                                      |
| >`__                                 |                                      |
+--------------------------------------+--------------------------------------+
| `BottomEdge </sdk/apps/qml/Ubuntu.Co | A component to handle bottom edge    |
| mponents/BottomEdge/>`__             | gesture and content                  |
+--------------------------------------+--------------------------------------+
| `BottomEdgeHint </sdk/apps/qml/Ubunt | Shows the availability of extra      |
| u.Components/BottomEdgeHint/>`__     | features available from the bottom   |
|                                      | edge of the application              |
+--------------------------------------+--------------------------------------+
| `BottomEdgeRegion </sdk/apps/qml/Ubu | Defines an active region within the  |
| ntu.Components/BottomEdgeRegion/>`__ | BottomEdge component                 |
+--------------------------------------+--------------------------------------+
| `Button </sdk/apps/qml/Ubuntu.Compon | Standard Ubuntu button               |
| ents/Button/>`__                     |                                      |
+--------------------------------------+--------------------------------------+
| `CheckBox </sdk/apps/qml/Ubuntu.Comp | Component with two states, checked   |
| onents/CheckBox/>`__                 | or unchecked. It can be used to set  |
|                                      | boolean options. The behavior is the |
|                                      | same as Switch, the only difference  |
|                                      | is the graphical style               |
+--------------------------------------+--------------------------------------+
| `Clipboard </sdk/apps/qml/Ubuntu.Com | This is a singleton type providing   |
| ponents/Clipboard/>`__               | access to the system clipboard       |
+--------------------------------------+--------------------------------------+
| `ComboButton </sdk/apps/qml/Ubuntu.C | Ubuntu button providing a drop-down  |
| omponents/ComboButton/>`__           | panel visualizing custom options     |
+--------------------------------------+--------------------------------------+
| `CrossFadeImage </sdk/apps/qml/Ubunt | An Image like component which        |
| u.Components/CrossFadeImage/>`__     | smoothly fades when its source is    |
|                                      | updated                              |
+--------------------------------------+--------------------------------------+
| `ExclusiveGroup </sdk/apps/qml/Ubunt | Way to declare several checkable     |
| u.Components/ExclusiveGroup/>`__     | controls as mutually exclusive       |
+--------------------------------------+--------------------------------------+
| `FontUtils </sdk/apps/qml/Ubuntu.Com | Context property, which provides     |
| ponents/FontUtils/>`__               | utility functions for font           |
|                                      | manipulations                        |
+--------------------------------------+--------------------------------------+
| `Header </sdk/apps/qml/Ubuntu.Compon | Bar that can contain the title and   |
| ents/Header/>`__                     | controls for the current view        |
+--------------------------------------+--------------------------------------+
| `Icon </sdk/apps/qml/Ubuntu.Componen | Component displays an icon from the  |
| ts/Icon/>`__                         | icon theme                           |
+--------------------------------------+--------------------------------------+
| `InverseMouse </sdk/apps/qml/Ubuntu. | Attached object filtering mouse      |
| Components/InverseMouse/>`__         | events occured outside the owner     |
+--------------------------------------+--------------------------------------+
| `InverseMouseArea </sdk/apps/qml/Ubu | Captures mouse events happening      |
| ntu.Components/InverseMouseArea/>`__ | outside of a given area              |
+--------------------------------------+--------------------------------------+
| `Label </sdk/apps/qml/Ubuntu.Compone | Extended Text item with Ubuntu       |
| nts/Label/>`__                       | styling                              |
+--------------------------------------+--------------------------------------+
| `ListItemLayout </sdk/apps/qml/Ubunt | Easy way to create list items which  |
| u.Components/ListItemLayout/>`__     | follow Ubuntu design standards, thus |
|                                      | making them visually appealing and   |
|                                      | consistent with the rest of the      |
|                                      | platform without effort              |
+--------------------------------------+--------------------------------------+
| `LiveTimer </sdk/apps/qml/Ubuntu.Com | A live timing source providing       |
| ponents/LiveTimer/>`__               | peridioc updates                     |
+--------------------------------------+--------------------------------------+
| `MainView </sdk/apps/qml/Ubuntu.Comp | The root Item that should be used    |
| onents/MainView/>`__                 | for all applications                 |
+--------------------------------------+--------------------------------------+
| `Menu </sdk/apps/qml/Ubuntu.Componen | Defines a context menu or submenu    |
| ts/Menu/>`__                         | structure of a MenuBar               |
+--------------------------------------+--------------------------------------+
| `MenuBar </sdk/apps/qml/Ubuntu.Compo | Defines an application menu bar      |
| nents/MenuBar/>`__                   | structure                            |
+--------------------------------------+--------------------------------------+
| `MenuGroup </sdk/apps/qml/Ubuntu.Com | Logical list of items for a menu     |
| ponents/MenuGroup/>`__               |                                      |
+--------------------------------------+--------------------------------------+
| `MimeData </sdk/apps/qml/Ubuntu.Comp | Type provides interface to access    |
| onents/MimeData/>`__                 | and store data to the Clipboard      |
+--------------------------------------+--------------------------------------+
| `Mouse </sdk/apps/qml/Ubuntu.Compone | Attached property filtering mouse    |
| nts/Mouse/>`__                       | events occured inside the owner      |
+--------------------------------------+--------------------------------------+
| `OrientationHelper </sdk/apps/qml/Ub | Automatically rotates its children   |
| untu.Components/OrientationHelper/>` | following the orientation of the     |
| __                                   | device                               |
+--------------------------------------+--------------------------------------+
| `Page </sdk/apps/qml/Ubuntu.Componen | A page is the basic Item that        |
| ts/Page/>`__                         | represents a single view in an       |
|                                      | Ubuntu application. It is            |
|                                      | recommended to use the Page inside   |
|                                      | the MainView or AdaptivePageLayout   |
+--------------------------------------+--------------------------------------+
| `PageColumn </sdk/apps/qml/Ubuntu.Co | Component configuring the metrics of |
| mponents/PageColumn/>`__             | a column in AdaptivePageLayout       |
+--------------------------------------+--------------------------------------+
| `PageColumnsLayout </sdk/apps/qml/Ub | Component configuring a layout in an |
| untu.Components/PageColumnsLayout/>` | AdaptivePageLayout component         |
| __                                   |                                      |
+--------------------------------------+--------------------------------------+
| `PageHeader </sdk/apps/qml/Ubuntu.Co | Shows a title with a leading and a   |
| mponents/PageHeader/>`__             | trailing ActionBar that add action   |
|                                      | buttons to the header                |
+--------------------------------------+--------------------------------------+
| `PageStack </sdk/apps/qml/Ubuntu.Com | A stack of Page items that is used   |
| ponents/PageStack/>`__               | for inter-Page navigation. Pages on  |
|                                      | the stack can be popped, and new     |
|                                      | Pages can be pushed. The page on top |
|                                      | of the stack is the visible one      |
+--------------------------------------+--------------------------------------+
| `Panel </sdk/apps/qml/Ubuntu.Compone | A panel that can be swiped in and    |
| nts/Panel/>`__                       | out from an edge of the window by    |
|                                      | the user. For most applications, it  |
|                                      | is highly recommended to use the     |
|                                      | MainView instead which includes a    |
|                                      | toolbar at its bottom that can be    |
|                                      | swiped in or out                     |
+--------------------------------------+--------------------------------------+
| `PopupContext </sdk/apps/qml/Ubuntu. | A special ActionContext used in      |
| Components/PopupContext/>`__         | Dialogs and Popups                   |
+--------------------------------------+--------------------------------------+
| `ProgressBar </sdk/apps/qml/Ubuntu.C | Component visually indicates the     |
| omponents/ProgressBar/>`__           | progress of a process of determinate |
|                                      | or indeterminate duration            |
+--------------------------------------+--------------------------------------+
| `ProgressionSlot </sdk/apps/qml/Ubun | Holds an icon representing the       |
| tu.Components/ProgressionSlot/>`__   | progression symbol                   |
+--------------------------------------+--------------------------------------+
| `ProportionalShape </sdk/apps/qml/Ub | Extended UbuntuShape mostly used for |
| untu.Components/ProportionalShape/>` | icons and vignettes                  |
| __                                   |                                      |
+--------------------------------------+--------------------------------------+
| `PullToRefresh </sdk/apps/qml/Ubuntu | Pull-to-refresh component for        |
| .Components/PullToRefresh/>`__       | Flickables to reload a model upon    |
|                                      | pull                                 |
+--------------------------------------+--------------------------------------+
| `ScrollView </sdk/apps/qml/Ubuntu.Co | Scrollable view that features        |
| mponents/ScrollView/>`__             | scrollbars and scrolling via         |
|                                      | keyboard keys                        |
+--------------------------------------+--------------------------------------+
| `Scrollbar </sdk/apps/qml/Ubuntu.Com | Component provides scrolling         |
| ponents/Scrollbar/>`__               | functionality for scrollable views   |
|                                      | (i.e. Flickable, ListView)           |
+--------------------------------------+--------------------------------------+
| `Sections </sdk/apps/qml/Ubuntu.Comp | Display a list of sections that the  |
| onents/Sections/>`__                 | user can select. By tapping on a     |
|                                      | section name the selectedIndex will  |
|                                      | be updated, and the associated       |
|                                      | Action is triggered                  |
+--------------------------------------+--------------------------------------+
| `Slider </sdk/apps/qml/Ubuntu.Compon | Component to select a value from a   |
| ents/Slider/>`__                     | continuous range of values           |
+--------------------------------------+--------------------------------------+
| `SortFilterModel </sdk/apps/qml/Ubun | Sorts and filters rows from an       |
| tu.Components/SortFilterModel/>`__   | existing model                       |
+--------------------------------------+--------------------------------------+
| `StyleHints </sdk/apps/qml/Ubuntu.Co | Component holding style specific     |
| mponents/StyleHints/>`__             | properties to configure a particular |
|                                      | StyledItem's style runtime           |
+--------------------------------------+--------------------------------------+
| `StyledItem </sdk/apps/qml/Ubuntu.Co | Allows items to be styled by the     |
| mponents/StyledItem/>`__             | theme                                |
+--------------------------------------+--------------------------------------+
| `Switch </sdk/apps/qml/Ubuntu.Compon | Component with two states, checked   |
| ents/Switch/>`__                     | or unchecked. It can be used to set  |
|                                      | boolean options. The behavior is the |
|                                      | same as CheckBox, the only           |
|                                      | difference is the graphical style    |
+--------------------------------------+--------------------------------------+
| `TextArea </sdk/apps/qml/Ubuntu.Comp | Item displays a block of editable,   |
| onents/TextArea/>`__                 | scrollable, formatted text           |
+--------------------------------------+--------------------------------------+
| `TextField </sdk/apps/qml/Ubuntu.Com | Element displays a single line of    |
| ponents/TextField/>`__               | editable plain text. Input           |
|                                      | constraints can be set through       |
|                                      | validator or inputMask. Setting      |
|                                      | echoMode to an appropriate value     |
|                                      | enables TextField to be used as      |
|                                      | password input field                 |
+--------------------------------------+--------------------------------------+
| `Toolbar </sdk/apps/qml/Ubuntu.Compo | That can be used as an extension for |
| nents/Toolbar/>`__                   | the edit mode header. Example:       |
+--------------------------------------+--------------------------------------+
| `Ubuntu </sdk/apps/qml/Ubuntu.Compon | Provides global object with          |
| ents/Ubuntu/>`__                     | different enums                      |
+--------------------------------------+--------------------------------------+
| `UbuntuAnimation </sdk/apps/qml/Ubun | Singleton defining standard Ubuntu   |
| tu.Components/UbuntuAnimation/>`__   | durations and easing for animations  |
|                                      | that should be used to ensure that   |
|                                      | Ubuntu applications are consistent   |
|                                      | in their animations                  |
+--------------------------------------+--------------------------------------+
| `UbuntuApplication </sdk/apps/qml/Ub | QML binding for a subset of          |
| untu.Components/UbuntuApplication/>` | QCoreApplication                     |
| __                                   |                                      |
+--------------------------------------+--------------------------------------+
| `UbuntuColors </sdk/apps/qml/Ubuntu. | Singleton defining the Ubuntu color  |
| Components/UbuntuColors/>`__         | palette                              |
+--------------------------------------+--------------------------------------+
| `UbuntuListView </sdk/apps/qml/Ubunt | A ListView with special features     |
| u.Components/UbuntuListView/>`__     | tailored for a look and feel fitting |
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
| `UbuntuNumberAnimation </sdk/apps/qm | NumberAnimation that has predefined  |
| l/Ubuntu.Components/UbuntuNumberAnim | settings to ensure that Ubuntu       |
| ation/>`__                           | applications are consistent in their |
|                                      | animations                           |
+--------------------------------------+--------------------------------------+
| `UbuntuShape </sdk/apps/qml/Ubuntu.C | Rounded rectangle containing a       |
| omponents/UbuntuShape/>`__           | source image blended over a          |
|                                      | background color                     |
+--------------------------------------+--------------------------------------+
| `UbuntuShapeOverlay </sdk/apps/qml/U | Extended UbuntuShape adding a        |
| buntu.Components/UbuntuShapeOverlay/ | colored overlay layer                |
| >`__                                 |                                      |
+--------------------------------------+--------------------------------------+
| `UriHandler </sdk/apps/qml/Ubuntu.Co | Singleton signalling for opened URIs |
| mponents/UriHandler/>`__             |                                      |
+--------------------------------------+--------------------------------------+
| `dateUtils </sdk/apps/qml/Ubuntu.Com | Various date utility functions       |
| ponents/dateUtils/>`__               |                                      |
+--------------------------------------+--------------------------------------+
| `i18n </sdk/apps/qml/Ubuntu.Componen | Context property that provides       |
| ts/i18n/>`__                         | internationalization support         |
+--------------------------------------+--------------------------------------+
| `mathUtils </sdk/apps/qml/Ubuntu.Com | Various mathematical utility         |
| ponents/mathUtils/>`__               | functions                            |
+--------------------------------------+--------------------------------------+

        Gestures
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| `SwipeArea </sdk/apps/qml/Ubuntu.Com | An area which detects axis-aligned   |
| ponents/SwipeArea/>`__               | single-finger drag gestures          |
+--------------------------------------+--------------------------------------+

        List views, list items
Components with standardized view items, with conditional actions,
multiselect and reordering support on scrollable views. Replaces the
Ubuntu.Components.ListItems module components.

Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| `Captions </sdk/apps/qml/Ubuntu.Comp | Container providing captionStyles    |
| onents/Captions/>`__                 | for a twin-label column that can be  |
|                                      | used in RowLayout or GridLayout      |
+--------------------------------------+--------------------------------------+
| `ListItem </sdk/apps/qml/Ubuntu.Comp | Element provides Ubuntu design       |
| onents/ListItem/>`__                 | standards for list or grid views.    |
|                                      | The ListItem component was designed  |
|                                      | to be used in a list view. It does   |
|                                      | not define any specific layout, but  |
|                                      | while its contents can be freely     |
|                                      | chosen by the developer, care must   |
|                                      | be taken to keep the contents light  |
|                                      | in order to ensure good performance  |
|                                      | when used in long list views         |
+--------------------------------------+--------------------------------------+
| `ListItemActions </sdk/apps/qml/Ubun | Provides configuration for actions   |
| tu.Components/ListItemActions/>`__   | to be added to a ListItem            |
+--------------------------------------+--------------------------------------+
| `ListItemDrag </sdk/apps/qml/Ubuntu. | Provides information about a         |
| Components/ListItemDrag/>`__         | ListItem drag event                  |
+--------------------------------------+--------------------------------------+
| `ViewItems </sdk/apps/qml/Ubuntu.Com | A set of properties attached to the  |
| ponents/ViewItems/>`__               | ListItem's parent item or ListView   |
+--------------------------------------+--------------------------------------+

        List Items module - deprecated
This module contains the old set of list items.

Available through:

.. code:: cpp

    import Ubuntu.Components.ListItems 1.3

+--------------------------------------+--------------------------------------+
| `Base </sdk/apps/qml/Ubuntu.Componen | Parent class of various list item    |
| ts/ListItems.Base/>`__               | classes that can have an icon and a  |
|                                      | progression symbol                   |
+--------------------------------------+--------------------------------------+
| `Caption </sdk/apps/qml/Ubuntu.Compo | List item that shows a piece of text |
| nents/ListItems.Caption/>`__         |                                      |
+--------------------------------------+--------------------------------------+
| `Divider </sdk/apps/qml/Ubuntu.Compo | To break up list items into groups   |
| nents/ListItems.Divider/>`__         |                                      |
+--------------------------------------+--------------------------------------+
| `Empty </sdk/apps/qml/Ubuntu.Compone | A list item with no contents         |
| nts/ListItems.Empty/>`__             |                                      |
+--------------------------------------+--------------------------------------+
| `Expandable </sdk/apps/qml/Ubuntu.Co | An expandable list item with no      |
| mponents/ListItems.Expandable/>`__   | contents. The Expandable class can   |
|                                      | be used for generic list items       |
|                                      | containing other components such as  |
|                                      | buttons. It subclasses Empty and     |
|                                      | thus brings all that functionality,  |
|                                      | but additionally provides means to   |
|                                      | expand and collapse the item         |
+--------------------------------------+--------------------------------------+
| `ExpandablesColumn </sdk/apps/qml/Ub | A column to be used together with    |
| untu.Components/ListItems.Expandable | the Expandable item. This lays out   |
| sColumn/>`__                         | its content just like a regular      |
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
| mponents/ListItems.MultiValue/>`__   |                                      |
+--------------------------------------+--------------------------------------+
| `SingleControl </sdk/apps/qml/Ubuntu | A list item containing a single      |
| .Components/ListItems.SingleControl/ | control                              |
| >`__                                 |                                      |
+--------------------------------------+--------------------------------------+
| `SingleValue </sdk/apps/qml/Ubuntu.C | A list item displaying a single      |
| omponents/ListItems.SingleValue/>`__ | value                                |
+--------------------------------------+--------------------------------------+
| `Standard </sdk/apps/qml/Ubuntu.Comp | Standard list item class. It shows a |
| onents/ListItems.Standard/>`__       | basic list item with a label (text), |
|                                      | and optionally an icon, a            |
|                                      | progression arrow, and it can have   |
|                                      | an embedded Item (control) that can  |
|                                      | be used for including Buttons,       |
|                                      | Switches etc. inside the list item   |
+--------------------------------------+--------------------------------------+
| `Subtitled </sdk/apps/qml/Ubuntu.Com | List item displaying a second string |
| ponents/ListItems.Subtitled/>`__     | under the main label                 |
+--------------------------------------+--------------------------------------+
| `ThinDivider </sdk/apps/qml/Ubuntu.C | Narrow line used as a divider        |
| omponents/ListItems.ThinDivider/>`__ | between ListItems                    |
+--------------------------------------+--------------------------------------+
| `ValueSelector </sdk/apps/qml/Ubuntu | List item displaying single selected |
| .Components/ListItems.ValueSelector/ | value when not expanded, where       |
| >`__                                 | expanding it opens a listing of all  |
|                                      | the possible values for selection    |
+--------------------------------------+--------------------------------------+

        Pickers
Available through:

.. code:: cpp

    import Ubuntu.Components.Pickers 1.3

+--------------------------------------+--------------------------------------+
| `DatePicker </sdk/apps/qml/Ubuntu.Co | Component provides date and time     |
| mponents/Pickers.DatePicker/>`__     | value picking functionality          |
+--------------------------------------+--------------------------------------+
| `Picker </sdk/apps/qml/Ubuntu.Compon | Slot-machine style value selection   |
| ents/Pickers.Picker/>`__             | component                            |
+--------------------------------------+--------------------------------------+
| `PickerDelegate </sdk/apps/qml/Ubunt | Component serves as base for Picker  |
| u.Components/Pickers.PickerDelegate/ | delegates                            |
| >`__                                 |                                      |
+--------------------------------------+--------------------------------------+
| `PickerPanel </sdk/apps/qml/Ubuntu.C | Provides a panel for opening a       |
| omponents/PickerPanel/>`__           | DatePicker in place of the input     |
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
| lectionPopover/>`__                  | automatically when the action is     |
|                                      | chosen                               |
+--------------------------------------+--------------------------------------+
| `Dialog </sdk/apps/qml/Ubuntu.Compon | Caters for cases in which the        |
| ents/Popups.Dialog/>`__              | application requires the user to     |
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
| nents/Popups.Popover/>`__            | present additional content without   |
|                                      | changing the view. A popover has a   |
|                                      | fixed width and automatic height,    |
|                                      | depending on is contents. It can be  |
|                                      | closed by clicking anywhere outside  |
|                                      | of the popover area                  |
+--------------------------------------+--------------------------------------+
| `PopupBase </sdk/apps/qml/Ubuntu.Com | Base class for all dialogs, sheets   |
| ponents/Popups.PopupBase/>`__        | and popovers. Do not use directly    |
+--------------------------------------+--------------------------------------+
| `popupUtils </sdk/apps/qml/Ubuntu.Co | Popover utility functions            |
| mponents/Popups.popupUtils/>`__      |                                      |
+--------------------------------------+--------------------------------------+

        Layouting
Available through:

.. code:: cpp

    import Ubuntu.Layouts 1.0

+--------------------------------------+--------------------------------------+
| `ConditionalLayout </sdk/apps/qml/Ub | Defines the layout of a given form   |
| untu.Layouts/ConditionalLayout/>`__  | factor                               |
+--------------------------------------+--------------------------------------+
| `ItemLayout </sdk/apps/qml/Ubuntu.La | Defines a new size & position of a   |
| youts/ItemLayout/>`__                | single Item, for the purposes of     |
|                                      | specifying layouts. This is to be    |
|                                      | used within a ConditionalLayout      |
|                                      | definition                           |
+--------------------------------------+--------------------------------------+
| `Layouts </sdk/apps/qml/Ubuntu.Layou | Component allows one to specify      |
| ts/Layouts/>`__                      | multiple different layouts for a     |
|                                      | fixed set of Items, and applies the  |
|                                      | desired layout to those Items        |
+--------------------------------------+--------------------------------------+

        Theming Elements
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| `Palette </sdk/apps/qml/Ubuntu.Compo | Of colors from the theme that        |
| nents/Themes.Palette/>`__            | widgets use to draw themselves       |
+--------------------------------------+--------------------------------------+
| `PaletteValues </sdk/apps/qml/Ubuntu | Color values used for a given widget |
| .Components/Themes.PaletteValues/>`_ | state                                |
| _                                    |                                      |
+--------------------------------------+--------------------------------------+
| `Theme </sdk/apps/qml/Ubuntu.Compone | Facilities to interact with the      |
| nts/Theme/>`__                       | current theme                        |
+--------------------------------------+--------------------------------------+
| `ThemeSettings </sdk/apps/qml/Ubuntu | Facilities to define the theme of a  |
| .Components/ThemeSettings/>`__       | StyledItem                           |
+--------------------------------------+--------------------------------------+

        Theme module
Available through:

.. code:: cpp

    import Ubuntu.Components.Themes 1.3

+--------------------------------------+--------------------------------------+
| `Palette </sdk/apps/qml/Ubuntu.Compo | Provides the palette of colors from  |
| nents/Themes.Palette/>`__            | the theme that widgets use to draw   |
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
| `__                                  |                                      |
+--------------------------------------+--------------------------------------+
| `ActionItemProperties </sdk/apps/qml | Color properties for buttons         |
| /Ubuntu.Components/Styles.ActionItem |                                      |
| Properties/>`__                      |                                      |
+--------------------------------------+--------------------------------------+
| `BottomEdgeStyle </sdk/apps/qml/Ubun | Style API for BottomEdge content     |
| tu.Components/Styles.BottomEdgeStyle | holder panel                         |
| />`__                                |                                      |
+--------------------------------------+--------------------------------------+
| `ComboButtonStyle </sdk/apps/qml/Ubu | Style API for ComboButton component  |
| ntu.Components/Styles.ComboButtonSty |                                      |
| le/>`__                              |                                      |
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
| />`__                                |                                      |
+--------------------------------------+--------------------------------------+
| `PullToRefreshStyle </sdk/apps/qml/U | Style API for PullToRefresh          |
| buntu.Components/Styles.PullToRefres | component                            |
| hStyle/>`__                          |                                      |
+--------------------------------------+--------------------------------------+
| `SectionsStyle </sdk/apps/qml/Ubuntu | Style API for Sections               |
| .Components/Styles.SectionsStyle/>`_ |                                      |
| _                                    |                                      |
+--------------------------------------+--------------------------------------+
| `ToolbarStyle </sdk/apps/qml/Ubuntu. | Style API for toolbar                |
| Components/Styles.ToolbarStyle/>`__  |                                      |
+--------------------------------------+--------------------------------------+

        Resolution Independence Items
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| `Units </sdk/apps/qml/Ubuntu.Compone | Of measurement for sizes, spacing,   |
| nts/Units/>`__                       | margin, etc                          |
+--------------------------------------+--------------------------------------+

        Parsing Command-Line Arguments
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| `Argument </sdk/apps/qml/Ubuntu.Comp | Specifies what type a given command  |
| onents/Argument/>`__                 | line parameter should be             |
+--------------------------------------+--------------------------------------+
| `Arguments </sdk/apps/qml/Ubuntu.Com | Way to declare what command line     |
| ponents/Arguments/>`__               | parameters are expected by the       |
|                                      | application                          |
+--------------------------------------+--------------------------------------+

        Services
Available through:

.. code:: cpp

    import Ubuntu.Components 1.3

+--------------------------------------+--------------------------------------+
| `Alarm </sdk/apps/qml/Ubuntu.Compone | Component is a representation of an  |
| nts/Alarm/>`__                       | alarm event                          |
+--------------------------------------+--------------------------------------+
| `AlarmModel </sdk/apps/qml/Ubuntu.Co | Holds the list of alarms defined     |
| mponents/AlarmModel/>`__             |                                      |
+--------------------------------------+--------------------------------------+
| `Haptics </sdk/apps/qml/Ubuntu.Compo | Singleton defining the haptics       |
| nents/Haptics/>`__                   | feedback used in components, where   |
|                                      | execution of the feedback is         |
|                                      | controlled by the system settings    |
+--------------------------------------+--------------------------------------+
| `ServiceProperties </sdk/apps/qml/Ub | Component enables accessing service  |
| untu.Components/ServiceProperties/>` | properties from QML                  |
| __                                   |                                      |
+--------------------------------------+--------------------------------------+
| `StateSaver </sdk/apps/qml/Ubuntu.Co | Attached properties to save          |
| mponents/StateSaver/>`__             | component property states            |
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
| ponents/Labs.SplitView/>`__          | layout configuration setup           |
+--------------------------------------+--------------------------------------+
| `SplitViewLayout </sdk/apps/qml/Ubun | Layout configuration for SplitView   |
| tu.Components/SplitViewLayout/>`__   |                                      |
+--------------------------------------+--------------------------------------+
| `ViewColumn </sdk/apps/qml/Ubuntu.Co | View column metrics configuration    |
| mponents/ViewColumn/>`__             | for SplitView                        |
+--------------------------------------+--------------------------------------+

        Test extensions
Available through:

.. code:: cpp

    import Ubuntu Test 1.3

+--------------------------------------+--------------------------------------+
| `MouseTouchAdaptor </sdk/apps/qml/Ub | Singleton type turning mouse events  |
| untu.Test/MouseTouchAdaptor/>`__     | into single finger touch events      |
+--------------------------------------+--------------------------------------+
| `TestExtras </sdk/apps/qml/Ubuntu.Te | Singleton type providing additional  |
| st/TestExtras/>`__                   | test functions                       |
+--------------------------------------+--------------------------------------+
| `UbuntuTestCase </sdk/apps/qml/Ubunt | Expands the default TestCase class   |
| u.Test/UbuntuTestCase/>`__           |                                      |
+--------------------------------------+--------------------------------------+
| `UbuntuTestCase13 </sdk/apps/qml/Ubu | UbuntuTestCase class expands the     |
| ntu.Test/UbuntuTestCase13/>`__       | default TestCase class               |
+--------------------------------------+--------------------------------------+

