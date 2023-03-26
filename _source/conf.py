# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = "Deber0\'s Journey"
copyright = '2022, Drew Brown'
author = 'Drew Brown'
release = '3.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration
# The name of an image file (relative to this directory) to place at the top
# of the sidebar.
html_logo = '_static/_assets/drew_v2.jpeg'

html_last_updated_fmt = '%b %d, %Y %H:%M'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = ['sphinx.ext.githubpages',
    'sphinxcontrib.pdfembed',
    'sphinxemoji.sphinxemoji']

templates_path = ['_templates']
exclude_patterns = []

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
