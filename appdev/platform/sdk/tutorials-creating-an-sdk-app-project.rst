Tutorials - creating an SDK app project
=======================================

Once you have the Ubuntu SDK `installed and
setup <installing-the-sdk.md>`__, you can very easily start writing an
app. Read below how to do this in seven steps.

There are many different types of app projects you can create in the
SDK. Ubuntu specific app projects are all listed under the **Ubuntu**
project type in the new project wizard.

Here, we create an Ubuntu HTML5 App project as an example. The same
process is used for other types.

-  Launch the wizard in the Ubuntu SDK with: **File** > **New File or
   Project**
-  | Select the **Ubuntu** project type, then **HTML5 App,** and then
     click the **Choose** button, as shown here:
   | |image0|

-  | Give your project a **Name**, specify a directory to create it in,
     and click the **Next** button, as shown here:
   | |image1|

**Tip**: You may want to enable this as the default directory for all
Ubuntu SDK projects by checking the **Use as default project location**
check box.

-  On the **Click package parameters** page, please enter:
-  Your developer **nickname** also known as "package namespace", this
   has to match the one you are using to publish in
   `MyApps <https://myapps.developer.ubuntu.com/dev/click-apps/>`__. It
   will be appended to your package name in order to ensure that
   packages of the same name uploaded by two developers will remain
   unique. If you have a `Launchpad <https://launchpad.net/>`__
   username, you should use that.
-  Your **maintainer** information: your name and email, ie:
   ``Joe Blobbs <joe@blobbs.com>``
-  The **name** of your app.

.. figure:: ../../../media/sdk-tutorial_new-project-3.png
   :alt: 

-  On the **Build targets** page. You will be asked to create at least
   one device kit for your project.

Device kits are devices environments required to build and run your app.
The **Create new kit** button will guide you through this simple
process, but you can have a look at the `device kits
article <tutorials-click-targets-and-device-kits.md>`__ to learn more
about them.

.. figure:: ../../../media/sdk-tutorial_new-project-4.png
   :alt: 

.. figure:: ../../../media/sdk-tutorial_new-project-5.png
   :alt: 

After creating a device kit, select it to continue:

.. figure:: ../../../media/sdk-tutorial_new-project-6.png
   :alt: 

-  On the **Project Management** page, optionally select **Bazaar**
   under **Add to version control**:
   |image2|

**Tip**: You can also manage your project under revision control from
the command line using bzr. To use Bazaar in the shell, first open a
terminal with ``Ctrl+Alt+T``, then install the bzr package and view help
as follows:

::

    sudo apt-get install bzr
    bzr help

-  Click **Finish**, and the wizard finishes, the project is created,
   and you are returned to the main SDK GUI. At this point your new
   project looks something like this:

.. figure:: ../../../media/sdk-tutorial_new-project-8.png
   :alt: 

**Tip**: Each app project has a desktop file that represents the app in
Unity, including its displayed name and its icon.

Next steps
----------

Without making any changes to your app, you can run it. Check out the
`Running Apps from the SDK <tutorials-running-apps-from-the-sdk.md>`__
tutorial in the Ubuntu SDK section for useful steps and information.

.. |image0| image:: ../../../media/sdk-tutorial_new-project-1-700x435.png
.. |image1| image:: ../../../media/sdk-tutorial_new-project-2-700x371.png
.. |image2| image:: ../../../media/sdk-tutorial_new-project-7.png

