======================
Building The Portfolio
======================


** The below steps are a rough outline of building a website with the Sphinx project.  These are mainly notes for my awareness for troubleshooting. It has been a while since I have interacted with my webpage build and thus will be restarting the build process from where I left off. 
Be mindful that installation steps are specific to the OS environment which the user interacts in. Below is documentation for Linux Debian derivative.

**Required Steps:**



1. Using `GitHub Pages <https://pages.github.com/>`_, follow the steps outlined to establish a repository for website.
2. Clone your created repository to your local machine and navigate to the directory within your chosen IDE. I used Visual Studio Code.
3. Send ``$ sudo apt-get install python3-sphinx`` This method ensures python3 is installed which sphinx depends on.
    .. note:: If python3 is installed, send ``$ pip install -u sphinx``

4. After dependency installs, inside of your cloned repository directory on your local machine, send ``$ sphinx-quickstart docs``  This shell command invokes the sphinx quickstart script that will build preliminary documents to begin your project. docs will be the root directory for all build documentation.
    .. note:: For more detailed guidance, see `<https://www.sphinx-doc.org/en/master/usage/quickstart.html>`_

5. Serving your project to GitHub Pages: `Docs Like Code <https://www.docslikecode.com/articles/github-pages-python-sphinx/>`_
    .. note:: This is where an edit to conf.py is mentioned. Super important for sending a custom document build command 'make github'
        This builds the html pages to prepare the commit for serving on GitHub pages.

**Additional Resources:**

1. References for configuring file structures and syntax to format this Portfolio: `reStructuredText (RST) Tutorial <https://www.devdungeon.com/content/restructuredtext-rst-tutorial-0>`_ 
2. This Portfolio was built using `Sphinx <https://github.com/readthedocs/sphinx_rtd_theme>`_ with a `theme <https://github.com/readthedocs/sphinx_rtd_theme>`_ provided by `Read the Docs <https://github.com/readthedocs/sphinx_rtd_theme>`_. 
3. `reStructuredText Markup Specification <https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html>`_ 
4. `Using Sphinx <https://www.sphinx-doc.org/en/master/usage/index.html>`_


My repository can be found `here <https://github.com/deber0>`_.

.. note:: Updates to this section will be added periodically