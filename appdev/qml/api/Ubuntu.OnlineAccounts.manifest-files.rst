Ubuntu.OnlineAccounts.manifest-files
====================================

.. raw:: html

   <p>

In order to integrate with the Online Accounts framework, one needs to
ship a couple of manifest files which describe the online services being
used or provided.

.. raw:: html

   </p>

.. raw:: html

   <p>

Account plugins must ship a provider file which can contain account
settings readable by applications. Applications must ship an application
file which tells which online services the application is able to use,
and service files which describes the online services and their
settings.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="the-provider-files">

The provider files

.. raw:: html

   </h2>

.. raw:: html

   <p>

A .provider file describes an online accounts provider. It's a XML file,
typically installed in /usr/share/accounts/providers/ or
~/.local/share/accounts/providers/ which looks like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span><span class="operator">?</span>xml version<span class="operator">=</span><span class="string">&quot;1.0&quot;</span> encoding<span class="operator">=</span><span class="string">&quot;UTF-8&quot;</span><span class="operator">?</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>provider id<span class="operator">=</span><span class="string">&quot;facebook&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>name<span class="operator">&gt;</span>Facebook<span class="operator">&lt;</span><span class="operator">/</span>name<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>icon<span class="operator">&gt;</span>facebook<span class="operator">&lt;</span><span class="operator">/</span>icon<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>translations<span class="operator">&gt;</span>account<span class="operator">-</span>plugins<span class="operator">&lt;</span><span class="operator">/</span>translations<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>domains<span class="operator">&gt;</span><span class="operator">.</span><span class="operator">*</span>facebook\<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>domains<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>plugin<span class="operator">&gt;</span>generic<span class="operator">-</span>oauth<span class="operator">&lt;</span><span class="operator">/</span>plugin<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>single<span class="operator">-</span>account<span class="operator">&gt;</span><span class="keyword">true</span><span class="operator">&lt;</span><span class="operator">/</span>single<span class="operator">-</span>account<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="keyword">template</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;auth&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;method&quot;</span><span class="operator">&gt;</span>oauth2<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;mechanism&quot;</span><span class="operator">&gt;</span>user_agent<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;oauth2&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;user_agent&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;Host&quot;</span><span class="operator">&gt;</span>www<span class="operator">.</span>facebook<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;AuthPath&quot;</span><span class="operator">&gt;</span><span class="operator">/</span>dialog<span class="operator">/</span>oauth<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;RedirectUri&quot;</span><span class="operator">&gt;</span>https:<span class="comment">//www.facebook.com/connect/login_success.html&lt;/setting&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;Display&quot;</span><span class="operator">&gt;</span>popup<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting type<span class="operator">=</span><span class="string">&quot;as&quot;</span> name<span class="operator">=</span><span class="string">&quot;Scope&quot;</span><span class="operator">&gt;</span><span class="operator">[</span><span class="char">'publish_stream'</span><span class="operator">,</span><span class="char">'status_update'</span><span class="operator">,</span><span class="char">'user_photos'</span><span class="operator">]</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;ClientId&quot;</span><span class="operator">&gt;</span><span class="number">412471239412</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting type<span class="operator">=</span><span class="string">&quot;as&quot;</span> name<span class="operator">=</span><span class="string">&quot;AllowedSchemes&quot;</span><span class="operator">&gt;</span><span class="operator">[</span><span class="char">'https'</span><span class="operator">,</span><span class="char">'http'</span><span class="operator">]</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span><span class="keyword">template</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>provider<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

This file name must match the value of the id tag in the root <provider>
element, plus the ".provider" suffix.

.. raw:: html

   </p>

.. raw:: html

   <p>

The only mandatory element is <name>, and that's the display name of the
provider. Other optional elements are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

<icon>: an icon for the account provider.

.. raw:: html

   </li>

.. raw:: html

   <li>

<translations>: a translation domain for the <name> element.

.. raw:: html

   </li>

.. raw:: html

   <li>

<domains>: a regular expression matching the domain(s) where this
account is used.

.. raw:: html

   </li>

.. raw:: html

   <li>

<plugin>: the ID of the account plugin which must be used to create or
edit the accounts for this provider.

.. raw:: html

   </li>

.. raw:: html

   <li>

<single-account>: whether the account editing UI should prevent the user
to create multiple accounts for this provider.

.. raw:: html

   </li>

.. raw:: html

   <li>

<template>: default settings or authentication parameters for the
account. This element is described in The template element section.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="the-service-files">

The service files

.. raw:: html

   </h2>

.. raw:: html

   <p>

A .service file describes an online service. It's a XML file, typically
installed in /usr/share/accounts/services/ or
~/.local/share/accounts/services/ which looks like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span><span class="operator">?</span>xml version<span class="operator">=</span><span class="string">&quot;1.0&quot;</span> encoding<span class="operator">=</span><span class="string">&quot;UTF-8&quot;</span><span class="operator">?</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>service id<span class="operator">=</span><span class="string">&quot;picasa&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>type<span class="operator">&gt;</span>photo<span class="operator">-</span>sharing<span class="operator">&lt;</span><span class="operator">/</span>type<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>name<span class="operator">&gt;</span>Picasa<span class="operator">&lt;</span><span class="operator">/</span>name<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>icon<span class="operator">&gt;</span>icon_picasa<span class="operator">&lt;</span><span class="operator">/</span>icon<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>provider<span class="operator">&gt;</span>google<span class="operator">&lt;</span><span class="operator">/</span>provider<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>translations<span class="operator">&gt;</span>account<span class="operator">-</span>plugins<span class="operator">&lt;</span><span class="operator">/</span>translations<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="keyword">template</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;auth/oauth2/user_agent&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting type<span class="operator">=</span><span class="string">&quot;as&quot;</span> name<span class="operator">=</span><span class="string">&quot;Scope&quot;</span><span class="operator">&gt;</span><span class="operator">[</span><span class="string">&quot;https://picasaweb.google.com/data/&quot;</span><span class="operator">]</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting type<span class="operator">=</span><span class="string">&quot;i&quot;</span> name<span class="operator">=</span><span class="string">&quot;max-resolution&quot;</span><span class="operator">&gt;</span><span class="number">2048</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span><span class="keyword">template</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

The name of the file must match the contents of the id tag in the root
<service> element, plus the ".service" suffix. Despite the complexity of
the example above, only two pieces of information are mandatory:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

<provider>: the ID of the account provider. See the section about
provider files for more.

.. raw:: html

   </li>

.. raw:: html

   <li>

<type>: the type of service; some applications don't have a fixed set of
supported services, but rather can use any service implementing a
certain protocol (for example, IMAP for e-mail clients): in such cases,
the different services would use a common type here, and applications
would refer to them via this type. Otherwise, the type should be set to
a unique string which has low chances of conflicting with other types:
for instance, a good practice would be to set it to
"<provider-id>-<service-id>".

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Other information which can be embedded in .service files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

<name>: a display name for the service.

.. raw:: html

   </li>

.. raw:: html

   <li>

<icon>: an icon name for the service.

.. raw:: html

   </li>

.. raw:: html

   <li>

<translations>: a translation domain for the <name> element.

.. raw:: html

   </li>

.. raw:: html

   <li>

<template>: default settings or authentication parameters for the
service. This element is described in The template element section.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="the-application-files">

The application files

.. raw:: html

   </h2>

.. raw:: html

   <p>

An .application file describes how an application uses online accounts.
It's a XML file, typically installed in
/usr/share/accounts/applications/ or
~/.local/share/accounts/applications/ which looks like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span><span class="operator">?</span>xml version<span class="operator">=</span><span class="string">&quot;1.0&quot;</span> encoding<span class="operator">=</span><span class="string">&quot;UTF-8&quot;</span> <span class="operator">?</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>application id<span class="operator">=</span><span class="string">&quot;my-photo-manager&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>description<span class="operator">&gt;</span>My Photo Manager<span class="operator">&lt;</span><span class="operator">/</span>description<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>desktop<span class="operator">-</span>entry<span class="operator">&gt;</span>photo<span class="operator">-</span>manager<span class="operator">.</span>desktop<span class="operator">&lt;</span><span class="operator">/</span>desktop<span class="operator">-</span>entry<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>translations<span class="operator">&gt;</span>photo<span class="operator">-</span>manager<span class="operator">&lt;</span><span class="operator">/</span>translations<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>services<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>service id<span class="operator">=</span><span class="string">&quot;photo-instagram&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>description<span class="operator">&gt;</span>Publish your pictures to Instagram<span class="operator">&lt;</span><span class="operator">/</span>description<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>service id<span class="operator">=</span><span class="string">&quot;photo-facebook&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>description<span class="operator">&gt;</span>Publish your pictures to Facebook<span class="operator">&lt;</span><span class="operator">/</span>description<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>services<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>service<span class="operator">-</span>types<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>service<span class="operator">-</span>type id<span class="operator">=</span><span class="string">&quot;photo-sharing&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>description<span class="operator">&gt;</span>Publish your pictures to your favorite site<span class="operator">&lt;</span><span class="operator">/</span>description<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">-</span>type<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">-</span>types<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>application<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

The name of the file must match the contents of the id tag in the root
<application> element, plus the ".application" suffix. None of the
elements is mandatory, but in order to be linked to some online accounts
there should be at least one valid <service> or <service-type> element.

.. raw:: html

   </p>

.. raw:: html

   <p>

The XML elements that an .application file can contain are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

<description>: a description of the application; if missing, this will
be read from the .desktop file associated with the application.

.. raw:: html

   </li>

.. raw:: html

   <li>

<desktop-entry>: the ID of the .desktop file associated with the
application (with or without the ".desktop" suffix); if missing, it's
assumed to be the same application ID specified in the id tag of the
root <application> element.

.. raw:: html

   </li>

.. raw:: html

   <li>

<translations>: a translation domain for all the <description> elements.

.. raw:: html

   </li>

.. raw:: html

   <li>

<services>: a container for <service> elements, which refer to the IDs
of the services which the application can use.

.. raw:: html

   </li>

.. raw:: html

   <li>

<service-types>: a container for <service-type> elements, which refer to
the IDs of the service types which the application can use. See the
documentation for the <type> element in service files.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

The template element

.. raw:: html

   </h3>

.. raw:: html

   <p>

Accounts can contain settings which can be useful for applications, for
example authentication parameters or server settings (such as the
address and port of an IMAP server). These settings are stored in the
accounts database, and an application can read them by accessing the
AccountService::settings property. The <template> element in the
.service or .provider files can be used to specify a fallback value for
those settings which have not been set in the accounts database.

.. raw:: html

   </p>

.. raw:: html

   <p>

A .service file <template> element is used when the id of the
AccountService::service object matches its ID. The .provider file
<template> element is instead used when the id of the
AccountService::service object is empty, meaning that the AccountService
is describing the global account, and not a specific service.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Format of the default settings

.. raw:: html

   </h4>

.. raw:: html

   <p>

The <template> element describes a dictionary of keys and values, where
the key is always a string, and values can be any data type. Keys can
contain the "/" character, which can be used to define key groups; for
instance:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;net/server/address&quot;</span><span class="operator">&gt;</span>example<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;net/server/port&quot;</span> type<span class="operator">=</span><span class="string">&quot;u&quot;</span><span class="operator">&gt;</span><span class="number">2500</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;net/use-ssl&quot;</span> type<span class="operator">=</span><span class="string">&quot;b&quot;</span><span class="operator">&gt;</span><span class="keyword">false</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

is equivalent to

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;net&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;server&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;address&quot;</span><span class="operator">&gt;</span>example<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;port&quot;</span> type<span class="operator">=</span><span class="string">&quot;u&quot;</span><span class="operator">&gt;</span><span class="number">2500</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;use-ssl&quot;</span> type<span class="operator">=</span><span class="string">&quot;b&quot;</span><span class="operator">&gt;</span><span class="keyword">false</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

and also to

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;net/server&quot;</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;address&quot;</span><span class="operator">&gt;</span>example<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;port&quot;</span> type<span class="operator">=</span><span class="string">&quot;u&quot;</span><span class="operator">&gt;</span><span class="number">2500</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;net/use-ssl&quot;</span> type<span class="operator">=</span><span class="string">&quot;b&quot;</span><span class="operator">&gt;</span><span class="keyword">false</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

Values are always assumed to be strings, unless a type attribute is set
in the <setting> element; the most commonly used types are:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Type

.. raw:: html

   </th>

.. raw:: html

   <th>

Code

.. raw:: html

   </th>

.. raw:: html

   <th>

Example

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

s

.. raw:: html

   </td>

.. raw:: html

   <td>

<setting... type="s">Hello world!</setting>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

boolean

.. raw:: html

   </td>

.. raw:: html

   <td>

b

.. raw:: html

   </td>

.. raw:: html

   <td>

<setting... type="b">true</setting>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

integer

.. raw:: html

   </td>

.. raw:: html

   <td>

i

.. raw:: html

   </td>

.. raw:: html

   <td>

<setting... type="i">-12</setting>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

unsigned

.. raw:: html

   </td>

.. raw:: html

   <td>

u

.. raw:: html

   </td>

.. raw:: html

   <td>

<setting... type="u">256</setting>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

array of strings

.. raw:: html

   </td>

.. raw:: html

   <td>

as

.. raw:: html

   </td>

.. raw:: html

   <td>

<setting... type="as">["one","two"]</setting>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h4>

Authentication data

.. raw:: html

   </h4>

.. raw:: html

   <p>

The object returned by the AccountService::authData property is also
built with a similar fallback mechanism as the rest of account settings,
but it's a bit more refined to especially address the needs of
application developers to override the authentication parameters. A
typical example is OAuth 2.0, where the application might need to
specify a different ClientId and ClientSecret than those used by the
rest of the system. Another example is that of an account provider
offering a REST API with an OAuth 2.0 authentication for publishing
pictures, but a basic username/password authentication to access an IMAP
mail sever.

.. raw:: html

   </p>

.. raw:: html

   <p>

The authentication data consists of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

the CredentialsId key: this is the numeric ID of the account credentials
in the local machine. This key is usually never stored in the <template>
element, as its value becomes known only when the account is created.

.. raw:: html

   </li>

.. raw:: html

   <li>

the auth/method key: a string defining which authentication plugin needs
to be used. Please refer to the libsignon-qt documentation.

.. raw:: html

   </li>

.. raw:: html

   <li>

the auth/mechanism key: a string defining which authentication mechanism
needs to be used. Each authentication plugin defines its own mechanisms,
so please refer to the plugin's documentation.

.. raw:: html

   </li>

.. raw:: html

   <li>

all the settings defined under the "auth/ <method> / <mechanism> "
group. Each authentication plugin defines its own parameters, so please
refer to the plugin's documentation.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When the AccountService represents the global account, then the
authentication data obtained by reading the AccountService::authData
property follows the usual fallback scheme: the parameters stored in the
accounts database have precence over the template parameters defined in
the .provider file.

.. raw:: html

   </p>

.. raw:: html

   <p>

However, if the AccountService represent a service within an account,
the authentication parameters are read in the following order (higher
priority is listed first):

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

parameters stored in the accounts database, for the specific service;

.. raw:: html

   </li>

.. raw:: html

   <li>

parameters stored in the <template> element of the .service file;

.. raw:: html

   </li>

.. raw:: html

   <li>

parameters stored in the accounts database, for the global account;

.. raw:: html

   </li>

.. raw:: html

   <li>

parameters stored in the <template> element of the .provider file.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@manifest-files.html -->
