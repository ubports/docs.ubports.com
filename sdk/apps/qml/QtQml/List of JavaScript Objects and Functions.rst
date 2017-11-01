

This reference contains a list of objects, functions and properties
supported by the QML engine. For a detailed description, see the
ECMA-262 specification.

.. rubric:: The Global Object
   :name: the-global-object

.. rubric:: Value Properties
   :name: value-properties

-  NaN
-  Infinity
-  undefined

.. rubric:: Function Properties
   :name: function-properties

-  eval(x)
-  parseInt(string, radix)
-  parseFloat(string)
-  isNaN(number)
-  isFinite(number)
-  decodeURI(encodedURI)
-  decodeURIComponent(encodedURIComponent)
-  encodeURI(uri)
-  encodeURIComponent(uriComponent)

.. rubric:: Constructor Properties
   :name: constructor-properties

-  Object
-  Function
-  Array
-  String
-  Boolean
-  Number
-  Date
-  RegExp
-  Error
-  EvalError
-  RangeError
-  ReferenceError
-  SyntaxError
-  TypeError
-  URIError

.. rubric:: Other Properties
   :name: other-properties

-  Math
-  JSON

.. rubric:: The Object Object
   :name: the-object-object

.. rubric:: Object Constructor
   :name: object-constructor

.. rubric:: Function Properties
   :name: function-properties-1

-  getPrototypeOf(O)
-  getOwnPropertyDescriptor(O, P)
-  getOwnPropertyNames(O)
-  create(O [, Properties])
-  defineProperty(O, P, Attributes)
-  defineProperties(O, Properties)
-  keys(O)
-  seal(O)
-  isSealed(O)
-  freeze(O)
-  isFrozen(O)
-  preventExtensions(O)
-  isExtensible(O)

.. rubric:: Object Prototype
   :name: object-prototype

.. rubric:: Function Properties
   :name: function-properties-2

-  toString()
-  toLocaleString()
-  valueOf()
-  hasOwnProperty(V)
-  isPrototypeOf(V)
-  propertyIsEnumerable(V)

.. rubric:: Function Objects
   :name: function-objects

.. rubric:: Function Prototype
   :name: function-prototype

.. rubric:: Function Properties
   :name: function-properties-3

-  toString()
-  apply(thisArg, argArray)
-  call(thisArg [, arg1 [, arg2, ...]])
-  bind((thisArg [, arg1 [, arg2, …]])

.. rubric:: Array Objects
   :name: array-objects

.. rubric:: Array Prototype Object
   :name: array-prototype-object

.. rubric:: Function Properties
   :name: function-properties-4

-  toString()
-  toLocaleString()
-  concat([item1 [, item2 [, ...]]])
-  join(separator)
-  pop()
-  push([item1 [, item2 [, ...]]])
-  reverse()
-  shift()
-  slice(start, end)
-  sort(comparefn)
-  splice(start, deleteCount[, item1 [, item2 [, ...]]])
-  unshift([item1 [, item2 [, ...]]])
-  indexOf(searchElement [, fromIndex])
-  lastIndexOf(searchElement [, fromIndex])
-  every(callbackfn [, thisArg])
-  some(callbackfn [, thisArg])
-  forEach(callbackfn [, thisArg])
-  map(callbackfn [, thisArg])
-  filter(callbackfn [, thisArg])
-  reduce(callbackfn [, initialValue])
-  reduceRight(callbackfn [, initialValue])

.. rubric:: String Objects
   :name: string-objects

.. rubric:: String Prototype Object
   :name: string-prototype-object

.. rubric:: Function Properties
   :name: function-properties-5

-  toString()
-  valueOf()
-  charAt(pos)
-  charCodeAt(pos)
-  concat([string1 [, string2 [, ...]]])
-  indexOf(searchString ,position)
-  lastIndexOf(searchString, position)
-  localeCompare(that)
-  match(regexp)
-  replace(searchValue, replaceValue)
-  search(regexp)
-  slice(start, end)
-  split(separator, limit)
-  substring(start, end)
-  toLowerCase()
-  toLocaleLowerCase()
-  toUpperCase()
-  toLocaleUpperCase()
-  trim()

Additionally, the QML engine adds the following functions to the
`String </sdk/apps/qml/QtQml/String/>`__ prototype:

-  `arg() </sdk/apps/qml/QtQml/String#arg-method>`__

.. rubric:: Boolean Objects
   :name: boolean-objects

.. rubric:: Boolean Prototype Object
   :name: boolean-prototype-object

.. rubric:: Function Properties
   :name: function-properties-6

-  toString()
-  valueOf()

.. rubric:: Number Objects
   :name: number-objects

.. rubric:: Number Prototype Object
   :name: number-prototype-object

.. rubric:: Function Properties
   :name: function-properties-7

-  toString(radix)
-  toLocaleString()
-  toFixed(fractionDigits)
-  toExponential(fractionDigits)
-  toPrecision(precision)

Additionally, the QML engine adds the following functions to the
`Number </sdk/apps/qml/QtQml/Number/>`__ prototype:

-  `fromLocaleString(locale,
   number) </sdk/apps/qml/QtQml/Number#fromLocaleString-method>`__
-  `toLocaleCurrencyString(locale,
   symbol) </sdk/apps/qml/QtQml/Number#toLocaleCurrencyString-method>`__
-  `toLocaleString(locale, format,
   precision) </sdk/apps/qml/QtQml/Number#toLocaleString-method>`__

.. rubric:: The Math Object
   :name: the-math-object

.. rubric:: Value Properties
   :name: value-properties-1

-  E
-  LN10
-  LN2
-  LOG2E
-  LOG10E
-  PI
-  SQRT1\_2
-  SQRT2

.. rubric:: Function Properties
   :name: function-properties-8

-  abs(x)
-  acos(x)
-  asin(x)
-  atan(x)
-  atan2(y, x)
-  ceil(x)
-  cos(x)
-  exp(x)
-  floor(x)
-  log(x)
-  max([value1 [, value2 [, ...]]])
-  min([value1 [, value2 [, ...]]])
-  pow(x, y)
-  random()
-  round(x)
-  sin(x)
-  sqrt(x)
-  tan(x)

.. rubric:: Date Objects
   :name: date-objects

.. rubric:: Date Prototype Object
   :name: date-prototype-object

.. rubric:: Function Properties
   :name: function-properties-9

-  toString()
-  toDateString()
-  toTimeString()
-  toLocaleString()
-  toLocaleDateString()
-  toLocaleTimeString()
-  valueOf()
-  getTime()
-  getFullYear()
-  getUTCFullYear()
-  getMonth()
-  getUTCMonth()
-  getDate()
-  getUTCDate()
-  getDay()
-  getUTCDay()
-  getHours()
-  getUTCHours()
-  getMinutes()
-  getUTCMinutes()
-  getSeconds()
-  getUTCSeconds()
-  getMilliseconds()
-  getUTCMilliseconds()
-  getTimeZoneOffset()
-  setTime(time)
-  setMilliseconds(ms)
-  setUTCMilliseconds(ms)
-  setSeconds(sec [, ms])
-  setUTCSeconds(sec [, ms])
-  setMinutes(min [, sec [, ms]])
-  setUTCMinutes(min [, sec [, ms]])
-  setHours(hour [, min [, sec [, ms]]])
-  setUTCHours(hour [, min [, sec [, ms]]])
-  setDate(date)
-  setUTCDate(date)
-  setMonth(month [, date])
-  setUTCMonth(month [, date])
-  setFullYear(year [, month [, date]])
-  setUTCFullYear(year [, month [, date]])
-  toUTCString()
-  toISOString()
-  toJSON()

Additionally, the QML engine adds the following functions to the
`Date </sdk/apps/qml/QtQml/Date/>`__ prototype:

-  `timeZoneUpdated() </sdk/apps/qml/QtQml/Date#timeZoneUpdated-method>`__
-  `toLocaleDateString(locale,
   format) </sdk/apps/qml/QtQml/Date#toLocaleDateString-method>`__
-  `toLocaleString(locale,
   format) </sdk/apps/qml/QtQml/Date#toLocaleString-method>`__
-  `toLocaleTimeString(locale,
   format) </sdk/apps/qml/QtQml/Date#toLocaleTimeString-method>`__

.. rubric:: RegExp Objects
   :name: regexp-objects

.. rubric:: RegExp Prototype Object
   :name: regexp-prototype-object

.. rubric:: Function Properties
   :name: function-properties-10

-  exec(string)
-  test(string)
-  toString()

.. rubric:: Error Objects
   :name: error-objects

.. rubric:: Error Prototype Object
   :name: error-prototype-object

.. rubric:: Value Properties
   :name: value-properties-2

-  name
-  message

.. rubric:: Function Properties
   :name: function-properties-11

-  toString()

.. rubric:: The JSON Object
   :name: the-json-object

.. rubric:: Function Properties
   :name: function-properties-12

-  parse(text [, reviver])
-  stringify(value [, replacer [, space]])

