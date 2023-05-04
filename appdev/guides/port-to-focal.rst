Porting Apps to Focal
=====================

During the switch to Focal some changes were made to the app environment. In order to ensure that the app will continue working, it is recommended to update your app to Focal.

QML
^^^

Most changes will need to be made to any QML files.
References to Ubuntu were removed from QML Imports, and most QML classes. While there is a compatability layer, it is recommended to move to the Lomiri Modules.

.. code-block:: QML

    // import Ubuntu.Components 1.3
    import Lomiri.Components 1.3

Other references to Ubuntu were also Changed to Lomiri, such as `UbuntuColors` being renamed `LomiriColors`. These must also be updated. This can be somewhat automated:

.. code-block:: BASH

    find -name '*.qml' | xargs -I {} sed -i 's/import Ubuntu\./import Lomiri./g' {}
    find -name '*.qml' | xargs -I {} sed -i 's/UbuntuAnimation/LomiriAnimation/g' {}
    find -name '*.qml' | xargs -I {} sed -i 's/UbuntuNumberAnimation/LomiriNumberAnimation/g' {}
    find -name '*.qml' | xargs -I {} sed -i 's/UbuntuListView/LomiriListView/g' {}
    find -name '*.qml' | xargs -I {} sed -i 's/UbuntuColors/LomiriColors/g' {}
    find -name '*.qml' | xargs -I {} sed -i 's/UbuntuShape/LomiriShape/g' {}

Configuration Files
^^^^^^^^^^^^^^^^^^^

clickable.yaml
--------------
If your project has a `clickable.json` file instead of a `clickable.yaml` file, it is recommended to first convert the JSON file to a YAML file.
Afterwards, add the following:

.. code-block:: YAML

    framework: ubuntu-sdk-20.04


AppArmor file
-------------
Update the policy version in the AppArmor file:

.. code-block:: JSON
    :emphasize-lines: 5

    {
      "policy_groups": [
         "..."
       ]
      "policy_version": 20.04
    }


Desktop File
------------

Change `X-Ubuntu-Touch` to `X-Lomiri-Touch`:

.. code-block:: INI
    :emphasize-lines: 7

    [Desktop Entry]
    _Name=App Name
    Exec=...
    Icon=assets/logo.svg
    Terminal=false
    Type=Application
    X-Lomiri-Touch=true

Build Files
^^^^^^^^^^^

CMakeLists.txt
--------------
If the app is based on one of the App Templates, update the default Click Framework in the CMake file:

.. code-block:: CMake
    :emphasize-lines: 4-5

    if(DEFINED ENV{SDK_FRAMEWORK})
        set(CLICK_FRAMEWORK "$ENV{SDK_FRAMEWORK}")
    else()
        # set(CLICK_FRAMEWORK "ubuntu-sdk-16.04.3")
        set(CLICK_FRAMEWORK "ubuntu-sdk-20.04")
    endif()


.gitlab-ci.yml
--------------
If you have a Gitlab CI file, you need to update it:

.. code-block:: YAML
    :emphasize-lines: 5-6

    variables:
        GIT_SUBMODULE_STRATEGY: recursive
        DOCKER_DRIVER: overlay2
        CLICKABLE_VERSION: "7"
        # UT_VERSION: "16.04"
        UT_VERSION: "20.04"
