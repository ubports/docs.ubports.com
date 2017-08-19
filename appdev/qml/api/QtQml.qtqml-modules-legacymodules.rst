QtQml.qtqml-modules-legacymodules
=================================

.. raw:: html

   <p>

Legacy modules are modules whose specification qmldir file does not
contain a module identifier directive. A legacy module may be either
installed into the QML import path (as an installed legacy module) or
imported by clients with a relative import (as a located legacy module).
Clients are advised to avoid using legacy modules if possible. Module
developers should ensure they create identified modules and not legacy
modules.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="installed-legacy-modules">

Installed Legacy Modules

.. raw:: html

   </h2>

.. raw:: html

   <p>

An installed, non-identified module is automatically given an identifier
by the QML engine. This implicitly defined identifier is equal to the
install path of the module (relative to the QML import path) where
directory-separator characters are replaced with period characters.

.. raw:: html

   </p>

.. raw:: html

   <p>

A non-identified module which is installed into the QML import path has
the following semantics:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

it may be imported by clients via the implicit module identifier

.. raw:: html

   </li>

.. raw:: html

   <li>

clients must specify a version when importing the module

.. raw:: html

   </li>

.. raw:: html

   <li>

conflicting type names are resolved arbitrarily by the QML engine, and
the way in which conflicts are resolved is not guaranteed to stay the
same between different versions of QML

.. raw:: html

   </li>

.. raw:: html

   <li>

other legacy modules may modify or override type definitions provided by
the installed legacy module

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="located-legacy-modules">

Located Legacy Modules

.. raw:: html

   </h2>

.. raw:: html

   <p>

A non-identified module which is imported via a relative directory path
import statement is loaded by the engine as a located legacy module. The
following semantics apply to located legacy modules:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

it may be imported by clients via a relative import path

.. raw:: html

   </li>

.. raw:: html

   <li>

it is not mandatory for clients to specify a version when importing the
module

.. raw:: html

   </li>

.. raw:: html

   <li>

if no import version is supplied by the client in the import statement,
no guarantees are given by the QML engine about which version of the
definition of a given type name will be imported

.. raw:: html

   </li>

.. raw:: html

   <li>

conflicting type names are resolved arbitrarily by the QML engine, and
the way in which conflicts are resolved is not guaranteed to stay the
same between different versions of QML

.. raw:: html

   </li>

.. raw:: html

   <li>

other legacy modules may modify or override type definitions provided by
the located legacy module

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

A located legacy module may reside on the local file system or on the
network and can be referred to by a URL that specifies the file system
path or network URL.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-modules-legacymodules.html -->
