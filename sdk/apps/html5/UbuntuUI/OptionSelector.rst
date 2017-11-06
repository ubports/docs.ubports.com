.. _sdk_ubuntuui_optionselector:

UbuntuUI OptionSelector
=======================


OptionSelector is a component displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically.

**UbuntuUI.OptionSelector**\ ()

.. code:: html

     <section data-role="option-selector" id="OptionSelectorID">
           <ul>
             <li data-value="0">
               <p>Label 1</p>
             </li>
             <li data-value="1">
               <p>Label 2</p>
             </li>
             <li data-value="3">
               <p>Label 3</p>
             </li>
           </ul>
         </section>

         JavaScript access:

         Expanded:
           UI.optionselector("OptionSelectorID", true);
         Expanded and multi selection:
           UI.optionselector("OptionSelectorID", true, true);
         Multi selection:
           UI.optionselector("OptionSelectorID", false, true);

