MacDots: Dotfiles for your Mac
==============================

Dotfiles for Z-Shell on a Mac. Simples.

Preparation
-----------
Although you will be prompted to overwrite any existing dotfiles during instalation, it's still a good idea to backup any of your existing dotfiles should you wish to undo anything.

    cp ~/.zshrc ~/Desktop

Do the same for any other files you want to backup.

To keep any custom or personal bash settings, see the `Customization` section below.

Prerequisites
-------------
For the installation script to work, you must have the following installed:

    ruby
    rake gem
    oh-my-zsh

Installation
------------
    cd ~
    git clone git://github.com/edjames/mac-dots ~/.mac-dots
    cd ~/.mac-dots
    rake install

You will be prompted before any existing files are overwritten. Symlinks are created for each dotfile in this project.

Updating
--------
    cd ~/.mac-dots
    git pull
    reload

Customization
-------------
It is possible to customize your zsh environment even further by putting things in one of the following two files:

    ${HOME}/.before-mac-dots
    ${HOME}/.after-mac-dots

As their respective names indicate, these files are executed **before** and **after** the actual `dotfiles` files are executed.

These two files are **not** under git control, so are truly personal.

Contributing to mac-dots
------------------------
If you want to contribute:

* Check out the latest master to make sure the feature hasn’t been implemented or the bug hasn’t been fixed yet
* Check out the issue tracker to make sure someone already hasn’t requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Do NOT change the VERSION file.

Credits
-------
Some of my stuff has been shamelessly lifted, some has been modified, some is my own, but credit where it's due...

* [Peter Vandenberk (pvdb)](https://github.com/pvdb) and his (unfortunately private) sbrc project.
* [Ryan Bates (ryanb)](https://github.com/ryanb) of RailsCasts fame, and his own [dotfiles](https://github.com/ryanb/dotfiles) project.

Copyright
---------

Copyright (c) 2012 Ed James. See LICENSE for details.