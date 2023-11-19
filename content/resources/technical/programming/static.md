---
title: "Static Analysis"
linkTitle: "Static"
description: "Static Analysis tools and techniques."
date: 2020-12-01
weight: 20
type: docs
---

**General**

* [Google's Rosie](https://cacm.acm.org/magazines/2016/7/204032-why-google-stores-billions-of-lines-of-code-in-a-single-repository)
    * Checking Billions of Lines of Code.

**Python Static Type Checkers**

* [mypy](https://mypy.readthedocs.io/en/stable/getting_started.html) - [GitHub](https://github.com/python/mypy)
    * Dropox used it to check [4 million lines of code]((https://dropbox.tech/application/our-journey-to-type-checking-4-million-lines-of-python)).
* [Pyre](https://pyre-check.org/) - [GitHub](https://github.com/facebook/pyre-check)
    * Type checking by Facebook, see [2018 Announcement](https://www.facebook.com/notes/protect-the-graph/pyre-fast-type-checking-for-python/2048520695388071/).
    * Supposed to be much faster than mypy.
* [Pyright](https://github.com/microsoft/pyright)
    * Microsoft's type checker, used in [Pylance](https://devblogs.microsoft.com/python/announcing-pylance-fast-feature-rich-language-support-for-python-in-visual-studio-code/) for VS Code.
    * [Pyright Walkthrough Video](https://youtu.be/RjaRz1EhpOs) - 12min

**Pylint**

* [edX's .pytlinrc](https://github.com/edx/edx-lint/blob/master/pylintrc)
    * A nearly 500 line config file.
* [How To Use Pylint](https://pythonspeed.com/articles/pylint/)
    * They suggest whitelisting one warning a time.
    * Can also whitelist on module at a time, or one file.
    * Useful to ramp up incrementally.

**Python Complexity**

* [Wily](https://wily.readthedocs.io/en/latest/)
    * Index the complexity of the Python files in Git.   
