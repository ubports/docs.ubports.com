autopilot.input.Keyboard
========================

.. raw:: html

   <dl class="class">

.. raw:: html

   <dt id="autopilot.input.Keyboard">

class autopilot.input.Keyboard

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

A simple keyboard device class.

.. raw:: html

   </p>

.. raw:: html

   <p>

The keyboard class is used to generate key events while in an autopilot
test. This class should not be instantiated directly. To get an instance
of the keyboard class, call create instead.

.. raw:: html

   </p>

.. raw:: html

   <dl class="staticmethod">

.. raw:: html

   <dt id="autopilot.input.Keyboard.create">

static create(preferred\_backend='')

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Get an instance of the Keyboard class.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more infomration on picking specific backends, see Advanced Backend
Picking

.. raw:: html

   </p>

.. raw:: html

   <p>

For details regarding backend limitations please see: Keyboard backend
limitations

.. raw:: html

   </p>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The OSK (On Screen Keyboard) backend option does not implement either
release methods due to technical implementation details and will raise a
NotImplementedError exception if used.

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

preferred\_backend –

.. raw:: html

   <p>

A string containing a hint as to which backend you would like. Possible
backends are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

.. raw:: html

   <dl class="first docutils">

.. raw:: html

   <dt>

X11 - Generate keyboard events using the X11 client

.. raw:: html

   </dt>

.. raw:: html

   <dd>

libraries.

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   </li>

.. raw:: html

   <li>

UInput - Use UInput kernel-level device driver.

.. raw:: html

   </li>

.. raw:: html

   <li>

OSK - Use the graphical On Screen Keyboard as a backend.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

RuntimeError if autopilot cannot instantate any of the possible
backends.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-odd field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

RuntimeError if the preferred\_backend is specified and is not one of
the possible backends for this device class.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

BackendException if the preferred\_backend is set, but that backend
could not be instantiated.

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

   <dt id="autopilot.input.Keyboard.focused_type">

focused\_type(input\_target, pointer=None)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Type into an input widget.

.. raw:: html

   </p>

.. raw:: html

   <p>

This context manager takes care of making sure a particular
input\_target UI control is selected before any text is entered.

.. raw:: html

   </p>

.. raw:: html

   <p>

Some backends extend this method to perform cleanup actions at the end
of the context manager block. For example, the OSK backend dismisses the
keyboard.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the pointer argument is None (default) then either a Mouse or Touch
pointer will be created based on the current platform.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example of using the context manager (with an OSK backend):

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
   <span class="n">text_area</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">_launch_test_input_area</span><span class="p">()</span>
   <span class="n">keyboard</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&#39;OSK&#39;</span><span class="p">)</span>
   <span class="k">with</span> <span class="n">keyboard</span><span class="o">.</span><span class="n">focused_type</span><span class="p">(</span><span class="n">text_area</span><span class="p">)</span> <span class="k">as</span> <span class="n">kb</span><span class="p">:</span>
   <span class="n">kb</span><span class="o">.</span><span class="n">type</span><span class="p">(</span><span class="s">&quot;Hello World.&quot;</span><span class="p">)</span>
   <span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">text_area</span><span class="o">.</span><span class="n">text</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
   <span class="c"># Upon leaving the context managers scope the keyboard is dismissed</span>
   <span class="c"># with a swipe</span>
   </pre>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Keyboard.press">

press(keys, delay=0.2)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Send key press events only.

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

   <ul class="first simple">

.. raw:: html

   <li>

keys – Keys you want pressed.

.. raw:: html

   </li>

.. raw:: html

   <li>

delay – The delay (in Seconds) after pressing the keys before returning
control to the caller.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first last">

NotImplementedError If called when using the OSK Backend.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The OSK backend does not implement the press method and will raise a
NotImplementedError if called.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">press</span><span class="p">(</span><span class="s">&#39;Alt+F2&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

presses the ‘Alt’ and ‘F2’ keys, but does not release them.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Keyboard.release">

release(keys, delay=0.2)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Send key release events only.

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

   <ul class="first simple">

.. raw:: html

   <li>

keys – Keys you want released.

.. raw:: html

   </li>

.. raw:: html

   <li>

delay – The delay (in Seconds) after releasing the keys before returning
control to the caller.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="field-even field">

.. raw:: html

   <th class="field-name">

Raises:

.. raw:: html

   </th>

.. raw:: html

   <td class="field-body">

.. raw:: html

   <p class="first last">

NotImplementedError If called when using the OSK Backend.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </tbody>

.. raw:: html

   </table>

.. raw:: html

   <p class="first admonition-title">

Warning

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

The OSK backend does not implement the press method and will raise a
NotImplementedError if called.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">release</span><span class="p">(</span><span class="s">&#39;Alt+F2&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

releases the ‘Alt’ and ‘F2’ keys.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Keyboard.press_and_release">

press\_and\_release(keys, delay=0.2)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Press and release all items in ‘keys’.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is the same as calling ‘press(keys);release(keys)’.

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

keys – Keys you want pressed and released.

.. raw:: html

   </li>

.. raw:: html

   <li>

delay – The delay (in Seconds) after pressing and releasing each key.

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

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Alt+F2&#39;</span><span class="p">)</span>
   </pre>

.. raw:: html

   <p>

presses both the ‘Alt’ and ‘F2’ keys, and then releases both keys.

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Keyboard.type">

type(string, delay=0.1)

.. raw:: html

   </dt>

.. raw:: html

   <dd>

.. raw:: html

   <p>

Simulate a user typing a string of text.

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

string – The string to text to type.

.. raw:: html

   </li>

.. raw:: html

   <li>

delay – The delay (in Seconds) after pressing and releasing each key.
Note that the default value here is shorter than for the press, release
and press\_and\_release methods.

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

   <p class="first admonition-title">

Note

.. raw:: html

   </p>

.. raw:: html

   <p class="last">

Only ‘normal’ keys can be typed with this method. Control characters
(such as ‘Alt’ will be interpreted as an ‘A’, and ‘l’, and a ‘t’).

.. raw:: html

   </p>

.. raw:: html

   </dd>

.. raw:: html

   </dl>

.. raw:: html

   <dl class="method">

.. raw:: html

   <dt id="autopilot.input.Keyboard.on_test_end">

on\_test\_end(\*args)

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

   <dt id="autopilot.input.Keyboard.on_test_start">

on\_test\_start(\*args)

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
