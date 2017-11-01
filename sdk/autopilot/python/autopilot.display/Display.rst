 *class*
``autopilot.display.``\ ``Display``\ ` </sdk/autopilot/python/autopilot.display/Display#Display>`__\ ` <#autopilot.display.Display>`__
    The base class/inteface for the display devices.

     *static*
    ``create``\ (*preferred\_backend=''*)\ ` </sdk/autopilot/python/autopilot.display/Display#Display.create>`__\ ` <#autopilot.display.Display.create>`__
        Get an instance of the Display class.

        For more infomration on picking specific backends, see
        `*Advanced Backend
        Picking* </sdk/autopilot/python/tutorial-advanced_autopilot#tut-picking-backends>`__

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
    ``BlacklistedDriverError``\ ` </sdk/autopilot/python/autopilot.display/Display#Display.BlacklistedDriverError>`__\ ` <#autopilot.display.Display.BlacklistedDriverError>`__
        Cannot set primary monitor when running drivers listed in the
        driver blacklist.

    ``Display.``\ ``get_num_screens``\ ()` </sdk/autopilot/python/autopilot.display/Display#Display.get_num_screens>`__\ ` <#autopilot.display.Display.get_num_screens>`__
        Get the number of screens attached to the PC.

    ``Display.``\ ``get_primary_screen``\ ()` </sdk/autopilot/python/autopilot.display/Display#Display.get_primary_screen>`__\ ` <#autopilot.display.Display.get_primary_screen>`__

    ``Display.``\ ``get_screen_width``\ (*screen\_number=0*)\ ` </sdk/autopilot/python/autopilot.display/Display#Display.get_screen_width>`__\ ` <#autopilot.display.Display.get_screen_width>`__

    ``Display.``\ ``get_screen_height``\ (*screen\_number=0*)\ ` </sdk/autopilot/python/autopilot.display/Display#Display.get_screen_height>`__\ ` <#autopilot.display.Display.get_screen_height>`__

    ``Display.``\ ``get_screen_geometry``\ (*monitor\_number*)\ ` </sdk/autopilot/python/autopilot.display/Display#Display.get_screen_geometry>`__\ ` <#autopilot.display.Display.get_screen_geometry>`__
        Get the geometry for a particular monitor.

        +------------+-------------------------------------------+
        | Returns:   | Tuple containing (x, y, width, height).   |
        +------------+-------------------------------------------+

``autopilot.display.``\ ``get_screenshot_data``\ (*display\_type*)\ ` <#autopilot.display.get_screenshot_data>`__
    Return a BytesIO object of the png data for the screenshot image.

    *display\_type* is the display server type. supported values are:
        -  “X11”
        -  “MIR”

    +-----------+---------------------------------------------------------------------------------------------+
    | Raises:   | -  **RuntimeError** – If attempting to capture an image on an unsupported display server.   |
    |           | -  **RuntimeError** – If saving image data to file-object fails.                            |
    +-----------+---------------------------------------------------------------------------------------------+
