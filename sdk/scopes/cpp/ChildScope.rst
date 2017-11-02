.. _sdk_childscope:
ChildScope
==========

A container for details about an aggregator's child scope.
`More... </sdk/scopes/cpp/unity.scopes.ChildScope/#details>`_ 

``#include <unity/scopes/ChildScope.h>``

        Public Member Functions
-------------------------------

 

`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/#a53d12d33536c16052f7a086e7d71e0de>`_ 
(std::string const
&\ `id </sdk/scopes/cpp/unity.scopes.ChildScope/#a38d1886c0459736186d6b9be548c75f5>`_ ,
`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  const
&\ `metadata </sdk/scopes/cpp/unity.scopes.ChildScope/#aade25bfd5f842dacbfc068d2ede3818e>`_ ,
bool
`enabled </sdk/scopes/cpp/unity.scopes.ChildScope/#aec9331d1f603d0a8eb77fafa59e1e829>`_ \ =true,
std::set< std::string > const
&\ `keywords </sdk/scopes/cpp/unity.scopes.ChildScope/#a728e308053d201dfb321f2ba49e4cdc8>`_ \ ={})

 

| Construct a new ChildScope with the specified id, metadata, enabled
  state and keywords list.

 

        Public Attributes
-------------------------

        std::string 

`id </sdk/scopes/cpp/unity.scopes.ChildScope/#a38d1886c0459736186d6b9be548c75f5>`_ 

 

| The scope id of this child scope.

 

        `ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  

`metadata </sdk/scopes/cpp/unity.scopes.ChildScope/#aade25bfd5f842dacbfc068d2ede3818e>`_ 

 

| The scope metadata of this child scope.

 

        bool 

`enabled </sdk/scopes/cpp/unity.scopes.ChildScope/#aec9331d1f603d0a8eb77fafa59e1e829>`_ 

 

| Whether this child scope should be aggregated.

 

        std::set< std::string > 

`keywords </sdk/scopes/cpp/unity.scopes.ChildScope/#a728e308053d201dfb321f2ba49e4cdc8>`_ 

 

| The list of keywords used to aggregate this scope (if any).

 

Detailed Description
--------------------

A container for details about an aggregator's child scope.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Chi | (                  | std::string const  | *id*,              |
| ldScope::ChildScop |                    | &                  |                    |
| e                  |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `ScopeMetadata </s | *metadata*,        |
|                    |                    | dk/scopes/cpp/unit |                    |
|                    |                    | y.scopes.ScopeMeta |                    |
|                    |                    | data/>`_           |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | bool               | *enabled* =        |
|                    |                    |                    | ``true``,          |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::set<          | *keywords* =       |
|                    |                    | std::string >      | ``{}``             |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Construct a new
`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`_  with the
specified id, metadata, enabled state and keywords list.

Parameters
    +------------+---------------------------------------------------------------+
    | id         | The scope id of this child scope.                             |
    +------------+---------------------------------------------------------------+
    | metadata   | The scope metadata of this child scope.                       |
    +------------+---------------------------------------------------------------+
    | enabled    | Whether this child scope should be aggregated.                |
    +------------+---------------------------------------------------------------+
    | keywords   | The list of keywords used to aggregate this scope (if any).   |
    +------------+---------------------------------------------------------------+

