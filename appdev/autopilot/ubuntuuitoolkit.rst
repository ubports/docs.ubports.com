ubuntuuitoolkit
===============

.. raw:: html

   <!-- Start Namespace Content -->

.. raw:: html

   <p>

Ubuntu UI Toolkit Autopilot tests and helpers.

.. raw:: html

   </p>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader">

class ubuntuuitoolkit.AppHeader(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

AppHeader Autopilot custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.click_action_button">

click\_action\_button(action\_object\_name)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Click an action button of the header.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

object\_name – The QML objectName property of the action

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If there is no action button with that object name.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.click_back_button">

click\_back\_button()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.click_custom_back_button">

click\_custom\_back\_button()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.ensure_visible">

ensure\_visible()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.get_selected_section_index">

get\_selected\_section\_index()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.switch_to_next_tab">

switch\_to\_next\_tab(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open the next tab.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the main view has no tabs.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.switch_to_section_by_index">

switch\_to\_section\_by\_index(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Select a section in the header divider

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

index – The index of the section to select

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitEmulatorException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the selection index is out of range or useDeprecatedToolbar is set.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.switch_to_tab_by_index">

switch\_to\_tab\_by\_index(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open a tab. This only supports the new tabs in the header

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

index – The index of the tab to open.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the tab index is out of range or useDeprecatedToolbar is set.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.AppHeader.wait_for_animation">

wait\_for\_animation()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="ubuntuuitoolkit.check_autopilot_version">

ubuntuuitoolkit.check\_autopilot\_version()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Check that the Autopilot installed version matches the one required.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the installed Autopilot version does’t match the required by the
custom proxy objects.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.CheckBox">

class ubuntuuitoolkit.CheckBox(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

CheckBox Autopilot custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.CheckBox.change_state">

change\_state(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Change the state of a CheckBox.

.. raw:: html

   </p>

.. raw:: html

   <p>

If it is checked, it will be unchecked. If it is unchecked, it will be
checked.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

time\_out – number of seconds to wait for the CheckBox state to change.
Default is 10.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.CheckBox.check">

check(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Check a CheckBox, if its not already checked.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

timeout – number of seconds to wait for the CheckBox to be checked.
Default is 10.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.CheckBox.uncheck">

uncheck(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Uncheck a CheckBox, if its not already unchecked.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

timeout – number of seconds to wait for the CheckBox to be unchecked.
Default is 10.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="ubuntuuitoolkit.get_keyboard">

ubuntuuitoolkit.get\_keyboard()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the keyboard device.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="function">

.. raw:: html

   <dt id="ubuntuuitoolkit.get_pointing_device">

ubuntuuitoolkit.get\_pointing\_device()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the pointing device depending on the platform.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the platform is Desktop, the pointing device will be a Mouse. If not,
the pointing device will be Touch.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.Header">

class ubuntuuitoolkit.Header(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases: ubuntuuitoolkit.\_custom\_proxy\_objects.\_header.AppHeader

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot helper for the deprecated Header.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.Dialog">

class ubuntuuitoolkit.Dialog(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot helper for the Dialog component.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.UCListItem">

class ubuntuuitoolkit.UCListItem(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

Base class to emulate swipe for leading and trailing actions.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UCListItem.toggle_selected">

toggle\_selected(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Toggles selected state of the ListItem.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UCListItem.trigger_leading_action">

trigger\_leading\_action(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Swipe the item in from left to right to open leading actions and click
on the button representing the requested action.

.. raw:: html

   </p>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

parameters: action\_objectName - object name of the action to be

.. raw:: html

   </dt>

.. raw:: html

   <dd>

triggered. wait\_function - a custom wait function to wait till the
action is triggered

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UCListItem.trigger_trailing_action">

trigger\_trailing\_action(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Swipe the item in from right to left to open trailing actions and click
on the button representing the requested action.

.. raw:: html

   </p>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

parameters: action\_objectName - object name of the action to be

.. raw:: html

   </dt>

.. raw:: html

   <dd>

triggered. wait\_function - a custom wait function to wait till the
action is triggered

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView">

class ubuntuuitoolkit.MainView(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

MainView Autopilot custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.click_action_button">

click\_action\_button(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Click the specified button.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

action\_object\_name – the objectName of the action to trigger.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

The requested button is not available.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.close_toolbar">

close\_toolbar(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Close the toolbar if it is opened.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the main view has no toolbar.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.get_action_selection_popover">

get\_action\_selection\_popover(object\_name)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return an ActionSelectionPopover custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

object\_name – The QML objectName property of the popover.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.get_header">

get\_header()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the AppHeader custom proxy object of the MainView.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.get_tabs">

get\_tabs()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the Tabs custom proxy object of the MainView.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the main view has no tabs.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.get_text_input_context_menu">

get\_text\_input\_context\_menu(object\_name)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return a TextInputContextMenu emulator.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

object\_name – The QML objectName property of the popover.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.get_toolbar">

get\_toolbar()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the Toolbar custom proxy object of the MainView.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the main view has no toolbar.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.go_back">

go\_back(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Go to the previous page.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.open_toolbar">

open\_toolbar(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open the toolbar if it is not already opened.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

The toolbar.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the main view has no toolbar.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.switch_to_next_tab">

switch\_to\_next\_tab(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open the next tab.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

The newly opened tab.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.switch_to_previous_tab">

switch\_to\_previous\_tab(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open the previous tab.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

The newly opened tab.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.switch_to_tab">

switch\_to\_tab(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open a tab.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

object\_name – The QML objectName property of the tab.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

The newly opened tab.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If there is no tab with that object name.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.switch_to_tab_by_index">

switch\_to\_tab\_by\_index(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open a tab.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

index – The index of the tab to open.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

The newly opened tab.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the tab index is out of range.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="classmethod">

.. raw:: html

   <dt id="ubuntuuitoolkit.MainView.validate_dbus_object">

classmethod validate\_dbus\_object(path, state)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.OptionSelector">

class ubuntuuitoolkit.OptionSelector(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

OptionSelector Autopilot custom proxy object

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.OptionSelector.get_current_label">

get\_current\_label()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

gets the text of the currently selected item

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.OptionSelector.get_option_count">

get\_option\_count()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Gets the number of items in the option selector

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.OptionSelector.get_selected_index">

get\_selected\_index()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Gets the current selected index of the QQuickListView

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.OptionSelector.get_selected_text">

get\_selected\_text()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

gets the text of the currently selected item

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.OptionSelector.select_option">

select\_option(\*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Select delegate in option selector

.. raw:: html

   </p>

.. raw:: html

   <dl class="docutils">

.. raw:: html

   <dt>

Example usage::

.. raw:: html

   </dt>

.. raw:: html

   <dd>

select\_option(objectName=”myOptionSelectorDelegate”)
select\_option(‘Label’, text=”some\_text\_here”)

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

kwargs – keywords used to find property(s) of delegate in option
selector

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickFlickable">

class ubuntuuitoolkit.QQuickFlickable(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases: ubuntuuitoolkit.\_custom\_proxy\_objects.\_flickable.Scrollable

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickFlickable.pull_to_refresh">

pull\_to\_refresh(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Pulls the flickable down and triggers a refresh on it.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ubuntuuitoolkit.ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If the flickable has no pull to release functionality.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickFlickable.swipe_child_into_view">

swipe\_child\_into\_view(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Make the child visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently it works only when the object needs to be swiped vertically.
TODO implement horizontal swiping. –elopio - 2014-03-21

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickFlickable.swipe_to_bottom">

swipe\_to\_bottom(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickFlickable.swipe_to_show_more_above">

swipe\_to\_show\_more\_above(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickFlickable.swipe_to_show_more_below">

swipe\_to\_show\_more\_below(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickFlickable.swipe_to_top">

swipe\_to\_top(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickGridView">

class ubuntuuitoolkit.QQuickGridView(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_flickable.QQuickFlickable

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot helper for the QQuickGridView component.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickListView">

class ubuntuuitoolkit.QQuickListView(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_flickable.QQuickFlickable

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickListView.click_element">

click\_element(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Click an element from the list.

.. raw:: html

   </p>

.. raw:: html

   <p>

It swipes the element into view if it’s center is not visible.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

objectName – The objectName property of the element to click.

.. raw:: html

   </li>

.. raw:: html

   <li>

direction – The direction where the element is, it can be either ‘above’
or ‘below’. Default value is None, which means we don’t know where the
object is and we will need to search the full list.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickListView.drag_item">

drag\_item(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.QQuickListView.enable_select_mode">

enable\_select\_mode(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Default implementation to enable select mode. Performs a long tap over
the first list item in the ListView. The delegates must be the new
ListItem components.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.TabBar">

class ubuntuuitoolkit.TabBar(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

TabBar Autopilot custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.TabBar.switch_to_next_tab">

switch\_to\_next\_tab(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open the next tab.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.Tabs">

class ubuntuuitoolkit.Tabs(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

Tabs Autopilot custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.Tabs.get_current_tab">

get\_current\_tab()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the currently selected tab.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.Tabs.get_number_of_tabs">

get\_number\_of\_tabs()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return the number of tabs.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.TextArea">

class ubuntuuitoolkit.TextArea(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases: ubuntuuitoolkit.\_custom\_proxy\_objects.\_textfield.TextField

.. raw:: html

   </p>

.. raw:: html

   <p>

TextArea autopilot emulator.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.TextArea.clear">

clear()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Clear the text area.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.TextField">

class ubuntuuitoolkit.TextField(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

TextField Autopilot custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.TextField.clear">

clear(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Clear the text field.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.TextField.is_empty">

is\_empty()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Return True if the text field is empty. False otherwise.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.TextField.write">

write(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Write into the text field.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <ul class="first last simple">

.. raw:: html

   <li>

text – The text to write.

.. raw:: html

   </li>

.. raw:: html

   <li>

clear – If True, the text field will be cleared before writing the text.
If False, the text will be appended at the end of the text field.
Default is True.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.Toolbar">

class ubuntuuitoolkit.Toolbar(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_common.UbuntuUIToolkitCustomProxyObjectBase

.. raw:: html

   </p>

.. raw:: html

   <p>

Toolbar Autopilot custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.Toolbar.click_back_button">

click\_back\_button(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Click the back button of the toolbar.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.Toolbar.click_button">

click\_button(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Click a button of the toolbar.

.. raw:: html

   </p>

.. raw:: html

   <p>

The toolbar should be opened before clicking the button, or an exception
will be raised. If the toolbar is closed for some reason (e.g., timer
finishes) after moving the mouse cursor and before clicking the button,
it is re-opened automatically by this function.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Parameters:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

object\_name – The QML objectName property of the button.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name" colspan="2">

Raises ToolkitException:

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <td>

 

.. raw:: html

   </td>

.. raw:: html

   <td class="field-body">

If there is no button with that object name.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.Toolbar.close">

close(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Close the toolbar if it’s opened.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.Toolbar.open">

open(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Open the toolbar if it’s not already opened.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

The toolbar.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="exception">

.. raw:: html

   <dt id="ubuntuuitoolkit.ToolkitException">

exception ubuntuuitoolkit.ToolkitException¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases: exceptions.Exception

.. raw:: html

   </p>

.. raw:: html

   <p>

Exception raised when there is an error with the custom proxy object.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.UbuntuListView11">

class ubuntuuitoolkit.UbuntuListView11(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases:
ubuntuuitoolkit.\_custom\_proxy\_objects.\_qquicklistview.QQuickListView

.. raw:: html

   </p>

.. raw:: html

   <p>

Autopilot helper for the UbuntuListView 1.1.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UbuntuListView11.manual_refresh_nowait">

manual\_refresh\_nowait()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UbuntuListView11.manual_refresh_wait">

manual\_refresh\_wait()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UbuntuListView11.pull_to_refresh_enabled">

pull\_to\_refresh\_enabled()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UbuntuListView11.wait_refresh_completed">

wait\_refresh\_completed()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase">

class ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase(\*args)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Bases: autopilot.introspection.dbus.CustomEmulatorBase

.. raw:: html

   </p>

.. raw:: html

   <p>

A base class for all the Ubuntu UI Toolkit custom proxy objects.

.. raw:: html

   </p>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase.is_flickable">

is\_flickable()¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Check if the object is flickable.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the object has a flicking attribute, we consider it as a flickable.

.. raw:: html

   </p>

.. raw:: html

   <table class="docutils field-list" frame="void" rules="none">

.. raw:: html

   <col class="field-name" />

.. raw:: html

   <col class="field-body" />

.. raw:: html

   <tbody valign="top">

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Returns:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

True if the object is flickable. False otherwise.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase.swipe_into_view">

swipe\_into\_view(instance, \*args, \*\*kwargs)¶

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Make the object visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently it works only when the object needs to be swiped vertically.
TODO implement horizontal swiping. –elopio - 2014-03-21

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <!-- End Namespace Content -->
