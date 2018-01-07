Creating a Webapp
===============
Webapps are small applications, that load content in a browser. This tutorial for ubuntu will just create a starter for a webpage, that can be displayed easily in a mobile device.


alternate-webapp-generator
---------
The alternate-webapp-generator will download all the stuff you need for a webapp and will add the the url, icon and a lot of meta-information to the app.
In the end a .click package will be created, which can be uploaded to the OpenStore

Download the following zip-file and unzip
::
    https://github.com/Winael/ubuntu/blob/master/ubuntuphone/webapps/Reboot/alternate-webapp-generator.zip

Make the app-creator executable:
::
    chmod +x /path/to/alternate-webapp-generator.sh

Now we can start and edit the config.cfg.
::
    # config.cfg

    export namespace="namespace"

    export app_name="yourname"
    export app_title="YourTitle"
    export app_url="https://ubports.com/"
    export app_description="A webapp"
    export app_UA="Mozilla/5.0 (Linux; Android 5.0; Nexus 5) AppleWebkit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"
    export app_version="0.1"

    export maintainer_name="yourname"
    export maintainer_email="your@email.com

    export icon_path="/path/on/your/harddisk"

Its important that the namespace and the app_name is in lowercase - if you add it in uppercase the build will fail.
Lets build the webapp now
::
    ./alternate-webapp-generator.sh 

This should now create a folder in the same directory which is named after the app_name attribute from the config.cfg
In this folder you will find a file called: namespace.app_name_app_version_all.click

Upload it to OpenStore
---------
This package can now be uploaded to  `OpenStore <https://open.uappexplorer.com/submit>`__. Just create an account an follow the instructions on the screen.

