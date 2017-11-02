.. _sdk_previewlistenerbase:
PreviewListenerBase
===================

Abstract base class for a scope to respond to preview requests.
`More... </sdk/scopes/cpp/unity.scopes.PreviewListenerBase/#details>`_ 

``#include <unity/scopes/PreviewListenerBase.h>``

Inheritance diagram for unity::scopes::PreviewListenerBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

        virtual void 

`push </sdk/scopes/cpp/unity.scopes.PreviewListenerBase/#a5e9fe1fa664cbb65a0389e5a39caf78b>`_ 
(:ref:`ColumnLayoutList <sdk_unity_scopes#a5b970e3c73bf25548398b32e79b2224d>`
const &layouts)=0

 

| Called by the scopes runtime for each column layout definition
  returned by preview().

 

        virtual void 

`push </sdk/scopes/cpp/unity.scopes.PreviewListenerBase/#a1b4c366abea27471dc9ee31873c9c37a>`_ 
(:ref:`PreviewWidgetList <sdk_unity_scopes#aed3b7b1daf2e49d0a820ef931caa792d>`
const &)=0

 

| Called by the scopes runtime for each preview chunk that is returned
  by preview().

 

        virtual void 

`push </sdk/scopes/cpp/unity.scopes.PreviewListenerBase/#a2c11160354d49672100522d3e476b7e3>`_ 
(std::string const &key,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const &value)=0

 

| Called by the scopes runtime for each data field that is returned by
  preview().

 

|-| Public Member Functions inherited from
`unity::scopes::ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/>`_ 

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.ListenerBase/#afb44937749b61c9e3ebfa20ec6e4634b>`_ 
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
const &details)=0

 

| Called once by the scopes runtime after the final result for a request
  was sent.

 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.ListenerBase/#a3b38fa642754142f40968f3ff8d1bdc8>`_ 
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_  const
&op\_info)

 

| Called by the scopes runtime each time a scope reports additional
  information about the reply to a query.

 

Detailed Description
--------------------

Abstract base class for a scope to respond to preview requests.

An instance of this class must be returned from
`Scope::preview() </sdk/scopes/cpp/unity.scopes.Scope/#a82b24083994e676524b10c407f281aa4>`_ .

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.PreviewListenerBase/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.PreviewListenerBase/closed.png

