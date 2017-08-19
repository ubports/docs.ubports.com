Bottom edge
===========

Create something special with a unique bottom edge that belongs to your
app from the bottom of the screen.

.. figure:: https://assets.ubuntu.com/v1/792099e5-750w_BottomEdge_Dekko3.png
   :alt: 750w\_BottomEdge\_Dekko3

   750w\_BottomEdge\_Dekko3

Quick access to new content
---------------------------

-  `Overview › <#overview>`__

-  `Use cases › <#use-cases>`__

-  `Hints › <#hints>`__

\|\ |no alt text|\ \|The `BottomEdge
API <../../api-qml-current/Ubuntu.Components.BottomEdge.md>`__ provides
bottom edge content handling. See also the `BottomEdgeHint
API <../../api-qml-current/Ubuntu.Components.BottomEdgeHint.md>`__,
which displays a label or an icon, or both, at the bottom of the
component it is attached to.\| \| \|---\|-----\|

Overview
--------

The bottom edge allows for a very natural transition through a
progressive gesture from the bottom of the screen. The gesture should
take logical steps to reach a point of interest for the user. It can
provide access to a view via page stack, important actions, or access to
app settings and features. |750w\_BottomEdge\_MainImage|

\|\ |no alt text|\ \|You can create your own customised bottom edge and
add different content depending on the context of your app. `See ‘Loving
the bottom edge’ for more
information. <http://design.canonical.com/2014/03/loving-the-bottom-edge/>`__\ \|
\| \|---\|-----\|

Use cases
---------

The bottom edge can be used to give access to the most important
features inside your app.

Is your app often used to create new content?
---------------------------------------------

Use the bottom edge to quickly create or draft new content, such as
composing a new email or text message.

|750w\_BottomEdge\_Dekko1| |750w\_BottomEdge\_Dekko2|
|750w\_BottomEdge\_Dekko3|

Does your app need access to a commonly used feature that needs a separate view?
--------------------------------------------------------------------------------

Use the bottom edge to give the user quick access to an app setting or
feature, such as setting a new alarm in the Clock app.

.. figure:: https://assets.ubuntu.com/v1/c80957d2-366w_BottomEdge_Clock1-2.png
   :alt: 366w\_BottomEdge\_Clock1 (2)

   366w\_BottomEdge\_Clock1 (2)

.. figure:: https://assets.ubuntu.com/v1/1d680866-366w_BottomEdge_Clock2-1.png
   :alt: 366w\_BottomEdge\_Clock2 (1)

   366w\_BottomEdge\_Clock2 (1)

Does your app allow the user to add information in a form?
----------------------------------------------------------

Use the bottom edge to provide quick access to a form, such as adding a
new contact or creating a new account.

.. figure:: https://assets.ubuntu.com/v1/d838401e-366w_BottomEdge_AdditonalInfo1-1.png
   :alt: 366w\_BottomEdge\_AdditonalInfo1 (1)

   366w\_BottomEdge\_AdditonalInfo1 (1)

.. figure:: https://assets.ubuntu.com/v1/cc091cb4-366w_BottomEdge_AdditonalInfo2-1.png
   :alt: 366w\_BottomEdge\_AdditonalInfo2 (1)

   366w\_BottomEdge\_AdditonalInfo2 (1)

.. figure:: https://assets.ubuntu.com/v1/88771047-366w_BottomEdge_AdditonalInfo3-1.png
   :alt: 366w\_BottomEdge\_AdditonalInfo3 (1)

   366w\_BottomEdge\_AdditonalInfo3 (1)

.. figure:: https://assets.ubuntu.com/v1/c5a2ff13-366w_BottomEdge_AdditonalInfo4-1.png
   :alt: 366w\_BottomEdge\_AdditonalInfo4 (1)

   366w\_BottomEdge\_AdditonalInfo4 (1)

Does your app allow users to access more views?
-----------------------------------------------

You can use the bottom edge to reveal all views or tabs currently open
to allows the user to switch between them easily and quickly. For
example, the bottom edge in the Browser app reveals all the open tabs
the user has open.

.. figure:: https://assets.ubuntu.com/v1/c350019d-366w_BottomEdge_AccessMoreViews1-2.png
   :alt: 366w\_BottomEdge\_AccessMoreViews1 (2)

   366w\_BottomEdge\_AccessMoreViews1 (2)

.. figure:: https://assets.ubuntu.com/v1/e6ec7344-366w_BottomEdge_AccessMoreViews2-3.png
   :alt: 366w\_BottomEdge\_AccessMoreViews2 (3)

   366w\_BottomEdge\_AccessMoreViews2 (3)

Hints
-----

The toolkit provides a hint that consists of two elements: Hint 1 and
Hint 2. The hint is used to let the user know that there is something
worth trying at the bottom of the screen.

Hint 1
------

.. figure:: https://assets.ubuntu.com/v1/9f1dbb3b-366w_BottomEdge_BehaviourHints2.png
   :alt: 366w\_BottomEdge\_BehaviourHints2

   366w\_BottomEdge\_BehaviourHints2

When your application is launched for the first time, the user will see
a floating icon, known as Hint 1.

Hint 2
------

.. figure:: https://assets.ubuntu.com/v1/fab43755-366w_BottomEdge_BehaviourHints1-1.png
   :alt: 366w\_BottomEdge\_BehaviourHints1 (1)

   366w\_BottomEdge\_BehaviourHints1 (1)

After the user has interacted with Hint 1, the hint will morph to become
Hint 2, which contains a label, icon or a combination of the two. Using
a label with an icon gives the user more detail of the content it will
show.

Hint labels
-----------

It is important that your hint label is concise and clear to avoid
confusing the user.

.. figure:: https://assets.ubuntu.com/v1/f501816b-366w_BottomEdge_HintLabelsRight.png
   :alt: 366w\_BottomEdge\_HintLabelsRight

   366w\_BottomEdge\_HintLabelsRight

.. figure:: https://assets.ubuntu.com/v1/e50550fc-366w_BottomEdge_HintLabelsWrong.png
   :alt: 366w\_BottomEdge\_HintLabelsWrong

   366w\_BottomEdge\_HintLabelsWrong

.. figure:: https://assets.ubuntu.com/v1/74c13c17-do_32.png
   :alt: do\_32

   do\_32

Do
--

.. figure:: https://assets.ubuntu.com/v1/01fb853b-dont_32.png
   :alt: dont\_32

   dont\_32

Don’t
-----

Step 1. Unfolding hint
----------------------

Hint 1 is visible when the user first interacts with your app. By short
swiping from Hint 1; Hint 2 starts to replace Hint 1 which then becomes
fully visible.

.. figure:: https://assets.ubuntu.com/v1/0b542b2e-366w_BottomEdge_Step1UnfoldingHint1-1.png
   :alt: 366w\_BottomEdge\_Step1UnfoldingHint1 (1)

   366w\_BottomEdge\_Step1UnfoldingHint1 (1)

.. figure:: https://assets.ubuntu.com/v1/af151c33-366w_BottomEdge_Step1UnfoldingHint2-1.png
   :alt: 366w\_BottomEdge\_Step1UnfoldingHint2 (1)

   366w\_BottomEdge\_Step1UnfoldingHint2 (1)

.. figure:: https://assets.ubuntu.com/v1/606fd284-366w_BottomEdge_Step1UnfoldingHint3-1.png
   :alt: 366w\_BottomEdge\_Step1UnfoldingHint3 (1)

   366w\_BottomEdge\_Step1UnfoldingHint3 (1)

.. figure:: https://assets.ubuntu.com/v1/154a894d-366w_BottomEdge_Step1UnfoldingHint4-1.png
   :alt: 366w\_BottomEdge\_Step1UnfoldingHint4 (1)

   366w\_BottomEdge\_Step1UnfoldingHint4 (1)

Step 2. Collapsing
------------------

Hint 2 is now fully visible; however if the user doesn’t interact with
the content or screen for a period time, then Hint 1 it will
automatically fade in and replace Hint 2.

.. figure:: https://assets.ubuntu.com/v1/7e1040d0-750w_BottomEdge_CollapsingHints-1.png
   :alt: 750w\_BottomEdge\_CollapsingHints (1)

   750w\_BottomEdge\_CollapsingHints (1)

Hiding the hint
---------------

You can choose to have the bottom edge hint hidden from view when the
user scrolls the content on the screen. This would work well for apps
that need the whole screen, such as the Camera app, because the primary
goal is to take a picture.

.. figure:: https://assets.ubuntu.com/v1/e6120d50-750w_BottomEdge_HidingHints.png
   :alt: 750w\_BottomEdge\_HidingHints

   750w\_BottomEdge\_HidingHints

.. |no alt text| image:: https://assets.ubuntu.com/v1/608696e3-developer_links.png
.. |750w\_BottomEdge\_MainImage| image:: https://assets.ubuntu.com/v1/7a805f7a-750w_BottomEdge_MainImage.png
.. |no alt text| image:: https://assets.ubuntu.com/v1/75f60d24-link_external.png
.. |750w\_BottomEdge\_Dekko1| image:: https://assets.ubuntu.com/v1/e1872a29-750w_BottomEdge_Dekko1.png
.. |750w\_BottomEdge\_Dekko2| image:: https://assets.ubuntu.com/v1/e71cac0e-750w_BottomEdge_Dekko2.png
.. |750w\_BottomEdge\_Dekko3| image:: https://assets.ubuntu.com/v1/792099e5-750w_BottomEdge_Dekko3.png

