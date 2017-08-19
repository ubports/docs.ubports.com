UbuntuUserInterfaceToolkit.statesaving3
=======================================

.. raw:: html

   <p>

The following issues must be considered when deciding on state saving:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

-  don't try to save MainView.applicationName, as its change will take
   effect next time the application is launched

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   -  specify IDs for all components as well as for parents even if
      their presence is not justified in the document

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      types other than the ones listed in QML base types will not be
      serialized

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      -  grouped properties can be saved by specifying the complete path
         to the property i.e. border.width, border.color, etc.

         .. raw:: html

            </li>

         .. raw:: html

            </ul>

         .. raw:: html

            <p>

         When chosing the IDs, try to use as unique identifiers as
         possible. In most of the cases applications load content
         (document) dynamically using Loaders. Usually elements in these
         documents use different IDs for their elements, but there can
         be cases when the same IDs will be used with the same hierarchy
         (i.e. root->item can occur in several documents). UID
         computation takes into account the file name and line number
         the property's owner (attachee) is declared, therefore the
         property saving will be successful in these cases too.

         .. raw:: html

            </p>

         .. raw:: html

            <p>

         See documentation on StateSaver properties under Services
         section.

         .. raw:: html

            </p>

         .. raw:: html

            <!-- @@@statesaving3.html -->

         .. raw:: html

            <p class="naviNextPrevious footerNavi">

         .. raw:: html

            <li>

         Ubuntu User Interface Toolkit

         .. raw:: html

            </li>

         .. raw:: html

            </p>
