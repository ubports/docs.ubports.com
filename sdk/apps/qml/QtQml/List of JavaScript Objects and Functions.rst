.. _sdk_qtqml_list_of_javascript_objects_and_functions:

QtQml List of JavaScript Objects and Functions
==============================================


This reference contains a list of objects, functions and properties supported by the QML engine. For a detailed description, see the ECMA-262 specification.

-  NaN
-  Infinity
-  undefined

-  eval(x)
-  parseInt(string, radix)
-  parseFloat(string)
-  isNaN(number)
-  isFinite(number)
-  decodeURI(encodedURI)
-  decodeURIComponent(encodedURIComponent)
-  encodeURI(uri)
-  encodeURIComponent(uriComponent)

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

-  Math
-  JSON

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

-  toString()
-  toLocaleString()
-  valueOf()
-  hasOwnProperty(V)
-  isPrototypeOf(V)
-  propertyIsEnumerable(V)

-  toString()
-  apply(thisArg, argArray)
-  call(thisArg [, arg1 [, arg2, ...]])
-  bind((thisArg [, arg1 [, arg2, …]])

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

Additionally, the QML engine adds the following functions to the :ref:`String <sdk_qtqml_string>` prototype:

-  :ref:`arg() <sdk_qtqml_string_arg>`

-  toString()
-  valueOf()

-  toString(radix)
-  toLocaleString()
-  toFixed(fractionDigits)
-  toExponential(fractionDigits)
-  toPrecision(precision)

Additionally, the QML engine adds the following functions to the :ref:`Number <sdk_qtqml_number>` prototype:

-  :ref:`fromLocaleString(locale, number) <sdk_qtqml_number_fromLocaleString>`
-  :ref:`toLocaleCurrencyString(locale, symbol) <sdk_qtqml_number_toLocaleCurrencyString>`
-  :ref:`toLocaleString(locale, format, precision) <sdk_qtqml_number_toLocaleString>`

-  E
-  LN10
-  LN2
-  LOG2E
-  LOG10E
-  PI
-  SQRT1\_2
-  SQRT2

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

Additionally, the QML engine adds the following functions to the :ref:`Date <sdk_qtqml_date>` prototype:

-  :ref:`timeZoneUpdated() <sdk_qtqml_date_timeZoneUpdated>`
-  :ref:`toLocaleDateString(locale, format) <sdk_qtqml_date_toLocaleDateString>`
-  :ref:`toLocaleString(locale, format) <sdk_qtqml_date_toLocaleString>`
-  :ref:`toLocaleTimeString(locale, format) <sdk_qtqml_date_toLocaleTimeString>`

-  exec(string)
-  test(string)
-  toString()

-  name
-  message

-  toString()

-  parse(text [, reviver])
-  stringify(value [, replacer [, space]])

