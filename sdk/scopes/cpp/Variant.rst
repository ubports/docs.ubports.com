.. _sdk_variant:
Variant
=======

Simple variant class that can hold an integer, boolean, string, double,
dictionary, array or null value.
`More... </sdk/scopes/cpp/unity.scopes.Variant/#details>`_ 

``#include <unity/scopes/Variant.h>``

        Public Types
--------------------

       \ enum  

| `Type </sdk/scopes/cpp/unity.scopes.Variant/#a84e79f64156503599a549d86230a2cf5>`_ 
  {
|   **Null**, **Int**, **Bool**, **String**,
|   **Double**, **Dict**, **Array**, **Int64**
| }

 

| Type of value held by a
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  instance.

 

        Public Member Functions
-------------------------------

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**Variant** (`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const
&)

 

         

**Variant** (`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  &&)

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=** (`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const
&)

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=** (`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  &&)

 

Value assignment

The assignment operators replace the value currently held by a
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  with the supplied
value, potentially changing the type of the value held by the
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ . Assigning a
``const char*`` to a `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ 
stores the corresponding ``std::string`` value.

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=** (int val) noexcept

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=** (int64\_t val) noexcept

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=** (double val) noexcept

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=** (bool val) noexcept

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=** (std::string const &val)

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=** (char const \*val)

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=**
(:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`
const &val)

 

        `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

**operator=**
(:ref:`VariantArray <sdk_unity_scopes#aa3bf32d584efd902bca79698a07dd934>`
const &val)

 

Comparison operators

Two variants are considered equal if they both store values of the same
type and equal value.

For Variants storing values of different type, ordering follows the
types defined in the Type enum. For example, any integer value compares
less than any boolean value. For Variants of the same type, the stored
values determine order as usual.

        bool 

**operator==** (`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ 
const &) const noexcept

 

        bool 

**operator<** (`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const
&) const noexcept

 

Value accessors

The accessor methods retrieve a value of the specified type.

If a `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  currently
stores a value of different type, these methods throw
``unity::LogicException``.

        int 

**get\_int** () const

 

        int64\_t 

**get\_int64\_t** () const

 

        double 

**get\_double** () const

 

        bool 

**get\_bool** () const

 

        std::string 

**get\_string** () const

 

:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>` 

**get\_dict** () const

 

:ref:`VariantArray <sdk_unity_scopes#aa3bf32d584efd902bca79698a07dd934>` 

**get\_array** () const

 

bool 

`is\_null </sdk/scopes/cpp/unity.scopes.Variant/#abcbee9f21657da6ccabff844bb5f472f>`_ 
() const

 

| Test if variant holds null value.

 

Observers

`Type </sdk/scopes/cpp/unity.scopes.Variant/#a84e79f64156503599a549d86230a2cf5>`_  

`which </sdk/scopes/cpp/unity.scopes.Variant/#a5d5234019ce1069df485d539852f23be>`_ 
() const noexcept

 

| Returns the type of value currently stored by this
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ .

 

Modifiers

        void 

`swap </sdk/scopes/cpp/unity.scopes.Variant/#a84e3a3281dd078fc7a690e17104f0c07>`_ 
(`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  &other) noexcept

 

| Swaps the contents of this
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  with ``other``.

 

        Constructors and destructor
-----------------------------------

         

`Variant </sdk/scopes/cpp/unity.scopes.Variant/#afb7dc4ba8297d82003009cd5e22a0056>`_ 
() noexcept

 

| The default constructor creates a
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  instance
  containing a null.

 

         

`Variant </sdk/scopes/cpp/unity.scopes.Variant/#a4c011541041207fb0aac2455a004dd91>`_ 
(int val) noexcept

 

| Creates a `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  instance
  that stores the supplied integer.

 

         

**Variant** (int64\_t val) noexcept

 

         

`Variant </sdk/scopes/cpp/unity.scopes.Variant/#aa0965c3cf5bf396709b90f88e9e84069>`_ 
(double val) noexcept

 

| Creates a `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  instance
  that stores the supplied double.

 

         

`Variant </sdk/scopes/cpp/unity.scopes.Variant/#a10b5eeaa5716be6e87878e9abfa4a54d>`_ 
(bool val) noexcept

 

| Creates a `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  instance
  that stores the supplied boolean.

 

         

`Variant </sdk/scopes/cpp/unity.scopes.Variant/#aeef78caa145819293d14672537f299f2>`_ 
(std::string const &val)

 

| Creates a `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  instance
  that stores the supplied string.

 

         

`Variant </sdk/scopes/cpp/unity.scopes.Variant/#a5608d071cccb81fa5f6840210df332c9>`_ 
(char const \*val)

 

| Converts the supplied pointer to a string and stores the string in the
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  instance.

 

         

**Variant**
(:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`
const &val)

 

         

**Variant**
(:ref:`VariantArray <sdk_unity_scopes#aa3bf32d584efd902bca79698a07dd934>`
const &val)

 

         

`~Variant </sdk/scopes/cpp/unity.scopes.Variant/#ac03ed47f49e4c5f4ec4d4a663fdd3945>`_ 
()

 

| Destructor.

 

        static `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const
& 

`null </sdk/scopes/cpp/unity.scopes.Variant/#a2bd2d5425fdec9af9340c22e3b47ac1c>`_ 
()

 

| Construct a null variant.

 

        Serialization
---------------------

        std::string 

`serialize\_json </sdk/scopes/cpp/unity.scopes.Variant/#a60d63bafa627e24f14c39790573b34db>`_ 
() const

 

| Serializes the variant to a JSON encoded string.

 

        static `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  

`deserialize\_json </sdk/scopes/cpp/unity.scopes.Variant/#aa2defbe2d1601c38c2a2188eb547b44b>`_ 
(std::string const &json\_string)

 

| Deserializes a JSON encoded string to a ``Variant``.

 

Detailed Description
--------------------

Simple variant class that can hold an integer, boolean, string, double,
dictionary, array or null value.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Variant::is\_ |                |                |                |                |
| null           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Test if variant holds null value.

Returns
    True if variant holds null.

