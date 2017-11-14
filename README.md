## UBports Documentation Website

This is the repository for the UBports documentation website served at [docs.ubports.com](https://docs.ubports.com). 

### Contributing to this documentation

You can find ways to contribute [here](https://docs.ubports.com/en/latest/contribute/documentation.html).

### Build instructions

This documentation can be built by doing the following:

Create and activate a Python virtualenv 

```
virtualenv ~/ubportsdocsenv
. ~/ubportsdocsenv/bin/activate
```

Install the Read the Docs theme and ReCommonMark (for Markdown parsing):

```
pip install sphinx sphinx_rtd_theme recommonmark
```

Change into the ``docs.ubports.com`` directory:

```
cd path/to/docs.ubports.com
```

Build the documentation::

```
sphinx-build -Wa . _build
```