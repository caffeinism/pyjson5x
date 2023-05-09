PyJSON5x
==========


This package is the same as pyjson5, but this library does some crude decoding. 

- interprets True and False as booleans.

- strive to properly handle unclosed brackets.


For more information, see the source repository. https://github.com/Kijewski/pyjson5


A JSON5 serializer and parser library for Python 3 written in
`Cython <http://cython.org/>`_.


Serializer
----------

The serializer returns ASCII data that can safely be used in an HTML template.
Apostrophes, ampersands, greater-than, and less-then signs are encoded as
unicode escaped sequences. E.g. this snippet is safe for any and all input:

.. code:: html

    "<a onclick='alert(" + encode(data) + ")'>show message</a>"

Unless the input contains infinite or NaN values, the result will be valid
`JSON <https://tools.ietf.org/html/rfc8259>`_ data.


Parser
------

All valid `JSON5 1.0.0 <https://spec.json5.org/>`_ and
`JSON <https://tools.ietf.org/html/rfc8259>`_ data can be read,
unless the nesting level is absurdly high.

Functions
---------

You can find the full documentation online at https://pyjson5.readthedocs.io/en/latest/.
Or simply call ``help(pyjson5x)``. :-)

The library supplies load(s) and dump(s) functions, so you can use it as a
drop-in replacement for Python's builtin ``json`` module, but you *should*
use the functions ``encode_*()`` and ``decode_*()`` instead.

Compatibility
-------------

At least CPython 3.5 or a recent Pypy3 version is needed.
