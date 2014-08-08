# vim-pandoc-legacy

Provided support for pandoc in vim. 

The original vim-pandoc (available here) has been replaced by vim-pantondoc
(now, vim-pandoc). All the users of the old vim-pandoc are suggested to move
over the combo of the new [vim-pandoc][], [vim-pandoc-syntax][], and
[vim-pandoc-after][]. vim-pandoc provides the writing environment setup,
vim-pandoc-syntax provides the syntax file (and tests), and vim-pandoc-after
support for third-party plugins (like ultisnips, unite, nrrwrgn, etc.).

[vim-pandoc]: https://github.com/vim-pandoc/vim-pandoc
[vim-pandoc-syntax]: https://github.com/vim-pandoc/vim-pandoc-syntax
[vim-pandoc-after]: https://github.com/vim-pandoc/vim-pandoc-after

## Moving over to the new vim-pandoc

### What's different

* The new vim-pandoc is modular, and extremely configurable. You decide what to
  use from it, and how.
* The syntax file is no longer included in the bundle. The user must install
  `vim-pandoc-syntax`. 
  The syntax file has received many improvements; it is now faster and more
  complete.
* Integration with third-party plugins is no longer included in the bundle. The
  user must install `vim-pandoc-after`.
  More third-party plugins are supported, and old ones have been updated.
* The executors system has been replaced by a single `:Pandoc` command. 
  pandoc can be executed asynchronously (if possible).
* New features: TOC functionality, keyboard navigation and operators, improved
  and smarted folding, etc.

### Migration instructions

First, uninstall vim-pandoc. If you have installed it by cloning the repo and
using pathogen, Vundle or Neobundle, it should be enough to delete the
`.vim/bundle/vim-pandoc` directory. If you have used Vundle or NeoBundle, you
should also delete the configuration for it in your `.vimrc`.

You should now install the new [vim-pandoc][] and [vim-pandoc-syntax][] plugins
(and if third party plugin integration is needed, [vim-pandoc-after][]).

Using Vundle, simply add

    Plugin 'vim-pandoc/vim-pandoc'
    Plugin 'vim-pandoc/vim-pandoc-syntax'
    Plugin 'vim-pandoc/vim-pandoc-after'

to your `.vimrc`, source it (`:so %`), and execute `:PluginInstall`. NeoBundle
users should be able to do something similar.

### Configuration variables

Configuration variables have been renamed. This is a rough guide of these
changes. 

* `g:pandoc_use_hard_wraps`/`g:pandoc_use_soft_wraps` =>
   `g:pandoc#formatting#mode` = "h"/"s"
* `g:pandoc_auto_format` => `g:pandoc#formatting#mode` += "a"
* `g:pandoc_no_folding` => `g:pandoc#modules#disabled` = ["folding"]
* `g:pandoc_no_empty_implicits` => not available
* `g:pandoc_no_spans` => not available
* `g:pandoc_bibfiles` => `g:pandoc#biblio#bibs`
* `g:pandoc_use_bibtool` => `g:pandoc#biblio#use_bibtool`

Note the new vim-pandoc is much more configurable, and has a modular design.
Please consult vim-pandoc's help file (`:he vim-pandoc`) for more information.
(also `:he vim-pandoc-syntax`).

## Keep using the old vim-pandoc (not recommended)

If, for some reason, you want to keep using the old vim-pandoc version, you
should clone this repo and revert to commit
c905b50dce4f58cf76235c7d47c15eb699da0b2d. Please note this version of
vim-pandoc will be unsupported, and you'll be on your own.
