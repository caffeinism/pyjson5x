Parser / Decoder
================

All valid `JSON5 1.0.0 <https://spec.json5.org/>`_ and
`JSON <https://tools.ietf.org/html/rfc8259>`_ data can be read,
unless the nesting level is absurdly high.


Quick Decoder Summary
---------------------

.. autosummary::

    ~pyjson5x.decode
    ~pyjson5x.decode_latin1
    ~pyjson5x.decode_buffer
    ~pyjson5x.decode_callback
    ~pyjson5x.decode_io
    ~pyjson5x.load
    ~pyjson5x.loads
    ~pyjson5x.Json5DecoderException
    ~pyjson5x.Json5NestingTooDeep
    ~pyjson5x.Json5EOF
    ~pyjson5x.Json5IllegalCharacter
    ~pyjson5x.Json5ExtraData
    ~pyjson5x.Json5IllegalType


Full Decoder Description
------------------------

.. autofunction:: pyjson5x.decode

.. autofunction:: pyjson5x.decode_latin1

.. autofunction:: pyjson5x.decode_buffer

.. autofunction:: pyjson5x.decode_callback

.. autofunction:: pyjson5x.decode_io


Decoder Compatibility Functions
-------------------------------

.. autofunction:: pyjson5x.load

.. autofunction:: pyjson5x.loads


Decoder Exceptions
------------------

.. inheritance-diagram::
    pyjson5x.Json5DecoderException
    pyjson5x.Json5NestingTooDeep
    pyjson5x.Json5EOF
    pyjson5x.Json5IllegalCharacter
    pyjson5x.Json5ExtraData
    pyjson5x.Json5IllegalType

.. autoclass:: pyjson5x.Json5DecoderException
    :members:
    :inherited-members:

.. autoclass:: pyjson5x.Json5NestingTooDeep
    :members:
    :inherited-members:

.. autoclass:: pyjson5x.Json5EOF
    :members:
    :inherited-members:

.. autoclass:: pyjson5x.Json5IllegalCharacter
    :members:
    :inherited-members:

.. autoclass:: pyjson5x.Json5ExtraData
    :members:
    :inherited-members:

.. autoclass:: pyjson5x.Json5IllegalType
    :members:
    :inherited-members:
