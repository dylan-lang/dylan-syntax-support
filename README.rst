dylan-syntax-support
====================

This repository stores source files, build infrastructure,
and tests for Dylan and related syntax definitions.

These definitions are used to generate files that are accepted
by:

* `Visual Studio Code`_
* `Atom`_
* `Sublime Text`_
* `Textmate`_

This work is based heavily upon the work by the `Magic Python`_
`team`_ and we're grateful for what they've done.

Why?
----

Why do we want to replace the grammars used by our various
editor integrations?

* They're all in various states of completeness. Bugfixes
  haven't been applied everywhere.
* It is annoying to have to maintain 4 different versions
  of something very similar.
* We can do a much better job, with greater context sensitivity,
  than the current grammars do. It won't get to the level
  of having a full parser, but it can be better.

Building
--------

First, install ``syntaxdev`` and any other required packages
by running::

    npm install .

Then to generate the syntax definitions::

    make generate

Or to run the tests::

    make test

Contributing
------------

Many things are still missing and there's a lot to do! Feel
free to dig in!

* Add your name to the ``CONTRIBUTORS.rst`` file.
* Make sure you add tests for your changes.
* Submit a clean pull request (no merge commits, no extra
  commits, and keep changes restricted to the purpose of
  the commit). Do ask for help if needed at this stage.

Useful Reading
--------------

* `Syntax definitions`_ from Sublime Text Unofficial Documentation
* `Scope naming conventions`_

.. _Visual Studio Code: https://code.visualstudio.com/
.. _Atom: https://atom.io/
.. _Sublime Text: http://www.sublimetext.com/
.. _Textmate: https://macromates.com/
.. _Magic Python_: https://github.com/MagicStack/MagicPython
.. _team: http://magic.io/
.. _Syntax definitions: http://docs.sublimetext.info/en/latest/extensibility/syntaxdefs.html
.. _Scope naming conventions: https://manual.macromates.com/en/language_grammars#naming_conventions
