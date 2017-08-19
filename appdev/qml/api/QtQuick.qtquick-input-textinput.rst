QtQuick.qtquick-input-textinput
===============================

.. raw:: html

   <h2 id="text-visual-types">

Text Visual Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt Quick provides several types to display text onto the screen. The
Text type will display formatted text onto the screen, the TextEdit type
will place a multiline line edit onto the screen, and the TextInput will
place a single editable line field onto the screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

To learn more about their specific features and properties, visit their
respective documentation.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="validating-input-text">

Validating Input Text

.. raw:: html

   </h2>

.. raw:: html

   <p>

The validator types enforce the type and format of TextInput objects.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">spacing</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Enter a value from 0 to 2000&quot;</span>
   }
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">validator</span>: <span class="name">IntValidator</span> { <span class="name">bottom</span>:<span class="number">0</span>; <span class="name">top</span>: <span class="number">2000</span>}
   }
   }</pre>

.. raw:: html

   <p>

The validator types bind to TextInput's validator property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">spacing</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Which basket?&quot;</span>
   }
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">validator</span>: <span class="name">RegExpValidator</span> { <span class="name">regExp</span>: /fruit basket/ }
   }
   }</pre>

.. raw:: html

   <p>

The regular expression in the snippet will only allow the inputted text
to be fruit basket.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that QML parses JavaScript regular expressions, while Qt's QRegExp
class' regular expressions are based on Perl regular expressions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-input-textinput.html -->
