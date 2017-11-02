.. _sdk_autopilot_display_display:
autopilot.display Display
=========================

 *class*
:ref:``autopilot.display.``\ ``Display``\ ` <sdk_autopilot_display_display#Display>`\ ` <#autopilot.display.Display>`
    The base class/inteface for the display devices.

     *static*
    :ref:``create``\ (*preferred\_backend=''*)\ ` <sdk_autopilot_display_display#Display.create>`\ ` <#autopilot.display.Display.create>`
        Get an instance of the Display class.

        For more infomration on picking specific backends, see
        `*Advanced Backend
        Picking* </sdk/autopilot/python/tutorial-advanced_autopilot/#tut-picking-backends>`_ 

        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Parameters:   | **preferred\_backend** –                                                                                             |
        |               | A string containing a hint as to which backend you would like.                                                       |
        |               |                                                                                                                      |
        |               | possible backends are:                                                                                               |
        |               |                                                                                                                      |
        |               | -  ``X11`` - Get display information from X11.                                                                       |
        |               | -  ``UPA`` - Get display information from the ubuntu platform API.                                                   |
        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Raises:       | RuntimeError if autopilot cannot instantate any of the possible backends.                                            |
        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Raises:       | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class.   |
        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Raises:       | ``BackendException`` if the preferred\_backend is set, but that backend could not be instantiated.                   |
        +---------------+----------------------------------------------------------------------------------------------------------------------+
        | Returns:      | Instance of Display with appropriate backend.                                                                        |
        +---------------+----------------------------------------------------------------------------------------------------------------------+

     *exception*
    :ref:``BlacklistedDriverError``\ ` <sdk_autopilot_display_display#Display.BlacklistedDriverError>`\ ` <#autopilot.display.Display.BlacklistedDriverError>`
        Cannot set primary monitor when running drivers listed in the
        driver blacklist.

    :ref:``Display.``\ ``get_num_screens``\ ()` <sdk_autopilot_display_display#Display.get_num_screens>`\ ` <#autopilot.display.Display.get_num_screens>`
        Get the number of screens attached to the PC.

    :ref:``Display.``\ ``get_primary_screen``\ ()` <sdk_autopilot_display_display#Display.get_primary_screen>`\ ` <#autopilot.display.Display.get_primary_screen>`

    :ref:``Display.``\ ``get_screen_width``\ (*screen\_number=0*)\ ` <sdk_autopilot_display_display#Display.get_screen_width>`\ ` <#autopilot.display.Display.get_screen_width>`

    :ref:``Display.``\ ``get_screen_height``\ (*screen\_number=0*)\ ` <sdk_autopilot_display_display#Display.get_screen_height>`\ ` <#autopilot.display.Display.get_screen_height>`

    :ref:``Display.``\ ``get_screen_geometry``\ (*monitor\_number*)\ ` <sdk_autopilot_display_display#Display.get_screen_geometry>`\ ` <#autopilot.display.Display.get_screen_geometry>`
        Get the geometry for a particular monitor.

        +------------+-------------------------------------------+
        | Returns:   | Tuple containing (x, y, width, height).   |
        +------------+-------------------------------------------+

``autopilot.display.``\ ``get_screenshot_data``\ (*display\_type*)\ ` <#autopilot.display.get_screenshot_data>`_ 
    Return a BytesIO object of the png data for the screenshot image.

    *display\_type* is the display server type. supported values are:
        -  “X11”
        -  “MIR”

    +-----------+---------------------------------------------------------------------------------------------+
    | Raises:   | -  **RuntimeError** – If attempting to capture an image on an unsupported display server.   |
    |           | -  **RuntimeError** – If saving image data to file-object fails.                            |
    +-----------+---------------------------------------------------------------------------------------------+
