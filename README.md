Matt Moretti's Dot Files
=======================
These are config files to set up a system the way I like it.  The majority of
it was borrowed from Ryan Bates' [repo][1], so you might want to start
there if you're looking to create your own version.

Installation
============

    git clone git://github.com/werebus/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    rake install

Environment
===========
I am running on Mac OS X, but it will likely work on Linux as well with minor
fiddling.  I use bash, but I know a lot of folks these days *love* zsh.  If
you're one of those people, might I suggest [Oh-my-zsh][2]?

Features
========
Bash configuration
------------------
Bash configuration is parceled out into various files in the `~/.bash`
directory.

Tab completion is also added to rake and cap commands:

    rake db:mi<tab>
    cap de<tab>

To speed things up, the results are cached in local .rake_tasks~ and
.cap_tasks~. It is smart enough to expire the cache automatically in
most cases, but you can simply remove the files to flush the cache.

I switch bash to [vi-mode][3] which might be a bit weird for some.

If you're using git, you'll notice the current branch name shows up in
the prompt while in a git repository.

If there are some shell configuration settings which you want secure or
specific to one system, place it into a ~/.localrc file. This will be
loaded automatically if it exists.

Vim
---
I use [Janus][4] to keep track of my Vim configuration.  It's included as a
sub-module of this repository and has to be installed separately.

    cd ~/.vim
    rake

You can place any custom plugins in `~/.janus`, and use the `.vimrc.before`,
`.vimrm.after`, `.gvimrc.before`, and `.gvimrc.after` files for further
customization.

irb
---
I rely on a set of tools for irb called '[irbtools][5]' which are packaged up
in a meta-gem -- install it with `gem install irbtools`.

Miscellaneous scripts
--------------------
In the `~/.bin` directory

* The mvim wrapper script
* [Resty][6]
* A little script to print out a visual directory tree

Other stuff
-----------
* Basic gemrc and rdebugrc files
* Sensible git and hg configs and global ignore files
* An inputrc with the [magic space][7]

[1]: https://github.com/ryanb/dotfiles
[2]: https://github.com/robbyrussell/oh-my-zsh
[3]: http://www.catonmat.net/blog/bash-vi-editing-mode-cheat-sheet/
[4]: https://github.com/carlhuda/janus
[5]: http://rbjl.net/40-irbtools-release-the-power-of-irb
[6]: https://github.com/micha/resty
[7]: http://codesnippets.joyent.com/posts/show/2301
