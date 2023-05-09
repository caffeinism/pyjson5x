Serializer / Encoder
====================

The serializer returns ASCII data that can safely be used in an HTML template.
Apostrophes, ampersands, greater-than, and less-then signs are encoded as
unicode escaped sequences. E.g. this snippet is safe for any and all input:

.. code:: html

    "<a onclick='alert(" + encode(data) + ")'>show message</a>"

Unless the input contains infinite or NaN values, the result will be valid
`JSON <https://tools.ietf.org/html/rfc8259>`_ data.


Quick Encoder Summary
---------------------

.. autosummary::

    ~pyjson5x.encode
    ~pyjson5x.encode_bytes
    ~pyjson5x.encode_callback
    ~pyjson5x.encode_io
    ~pyjson5x.encode_noop
    ~pyjson5x.dump
    ~pyjson5x.dumps
    ~pyjson5x.Options
    ~pyjson5x.Json5EncoderException
    ~pyjson5x.Json5UnstringifiableType


Full Encoder Description
------------------------

.. autofunction:: pyjson5x.encode

.. autofunction:: pyjson5x.encode_bytes

.. autofunction:: pyjson5x.encode_callback

.. autofunction:: pyjson5x.encode_io

.. autofunction:: pyjson5x.encode_noop

.. autoclass:: pyjson5x.Options
    :members:
    :inherited-members:


Encoder Compatibility Functions
-------------------------------

.. autofunction:: pyjson5x.dump

.. autofunction:: pyjson5x.dumps


Encoder Exceptions
------------------

.. inheritance-diagram::
    pyjson5x.Json5Exception
    pyjson5x.Json5EncoderException
    pyjson5x.Json5UnstringifiableType

.. autoclass:: pyjson5x.Json5EncoderException
    :members:
    :inherited-members:

.. autoclass:: pyjson5x.Json5UnstringifiableType
    :members:
    :inherited-members:
