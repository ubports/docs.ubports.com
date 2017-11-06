.. _sdk_ubuntu_downloadmanager_ubuntu_download_manager_api:

Ubuntu.DownloadManager Ubuntu Download Manager API
==================================================



The application lifecycle model of found in Ubuntu Touch does not ensure that application will be allowed to perform a long running connection to a server in order to perform a download. The Ubuntu Download Manager is a system daemon that leverages the long connections required to perform downloads from the click applications and provides a set of APIs for the application to interact with the downloads.

The download manager is a centralized daemon and therefore must ensure that only those applications

The download manager is a centralized daemon that can be used by all those applications that are allows to use the networking apparmor profile, due to this fact the downloading daemon ensures that the interaction with a download can only be performed either by the application that originally created the download or by an application that is not confined and that can therefore interact with all the daemons of the application.

Once a download has been created the download manager will ensure that the data being downloaded is stored in a location that can only be accessed by the creating application to ensure that the app confinement is kept.

Available through:

.. code:: cpp

    import Ubuntu.DownloadManager 1.2

-  :ref:`DownloadManager <sdk_ubuntu_downloadmanager_downloadmanager>`
-  :ref:`SingleDownload <sdk_ubuntu_downloadmanager_singledownload>`
-  :ref:`Metadata <sdk_ubuntu_downloadmanager_metadata>`

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Components 1.2
    import Ubuntu.DownloadManager 1.2
    Rectangle {
        width: units.gu(100)
        height: units.gu(20)
        TextField {
            id: text
            placeholderText: "File URL to download..."
            height: 50
            anchors {
                left: parent.left
                right: button.left
                rightMargin: units.gu(2)
            }
        }
        Button {
            id: button
            text: "Download"
            height: 50
            anchors.right: parent.right
            onClicked: {
                single.download(text.text);
            }
        }
        ProgressBar {
            minimumValue: 0
            maximumValue: 100
            value: single.progress
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            SingleDownload {
                id: single
            }
        }
    }

 Reporting Bugs
If you find any problems with the module or this documentation, please file a bug in the Ubuntu Download Manager `Launchpad page <https://bugs.launchpad.net/ubuntu-download-manager>`_ 

