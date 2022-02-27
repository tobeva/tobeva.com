# Tobeva.com

Tobeva Software maintains the website [tobeva.com](https://tobeva.com).

This repo generates that site. It uses [Hugo](https://gohugo.io/) with the [Docsy](https://github.com/google/docsy) theme.

**Setup**

* Clone the docsy repo into tobeva.com/themes directory.
* cd docsy
* git submodule update --init --recursive
* In tobeva.com root: nmp install
* Install recent hugo binary
* `make serve`
* View http://localhost:1313

This is fetch bootstrap and Font-Awesome which docsy uses.

See the `Makefile` commands `make serve`, `make build` and `make deploy`.

README last updated 2022-02-26.
