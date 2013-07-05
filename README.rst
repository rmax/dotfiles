===================
Rolando's dotfiles
===================



Vim
===

Useful Commands and Shortcuts
-----------------------------


Autocompletion
^^^^^^^^^^^^^^


Document Navigation
^^^^^^^^^^^^^^^^^^^

`g;`
  Go to older position in changelist.

`g,`
  Go to newer position in changelist.

`%`
  Jump to matching opening or closing parenthesis.


Search, replace and highlight
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

`/[term]`
  Search for term.

`/[term]/e`
  Search for term and put the cursor at the end.

`*`
  Highlight all occurrences of current word under cursor. Hit `*`, `n`, `N` to
  traverse through all ocurrences.

`:s/[search]/[replace]/`
  Search and replace first occurrence.

`:%s/[search]/[replace]/`
  Search and replace all occurrences in the document.


Spelling
^^^^^^^^

`set spell spelllang=en_us`
  Enable spell for american english.

`[s`, `]s`
  Navigate through spelling errors.

`z=`
  Make correction from suggestions.




Text Formatting
^^^^^^^^^^^^^^^

`gqq`
  Format current line.

`gqap`
  Format current paragraph.



Paths and files
^^^^^^^^^^^^^^^

`:cd [path]`
  Change global working dir to `[path]`.

`:cd %:p:h`
  Change global working dir to current file's dir.

`:lcd`
  Same as `:cd` but for the local window.  

`:pwd`
  Display current workng dir.


Quickfix Window
---------------

Erros list window generated after `:make` command.

`:cw`
  Open quickfix window.
`<leader>cc`
  See the error in current line.
`:cc`, `:cn`, `:cp`
  See the current/next/previous error.
`:clist`
  List all errors.


TagList
-------

`<F4>`
  Open tag list. Then `o` opens tag definition, `p` previews tag definition.

`<ALT>-<RIGHT>`
  Go to tag definition of term under the cursor.

`<ALT>-<LEFT>`
  Go back in tag stack. 

`!ctags -R .`
  Generate tag file recursevily 


Pylint
------

`:make`
  Run pylint on current buffer.
See quickfix section to browser errors.

Command-t
---------

`<leader>t`
  Opens command-t window, it loads current directory files recursevily.
  Some files like \*~ are not loaded.
Type a pattern
  The matching lets you use any single chars found in your target file.
  For example: "d/v/p/c" will include "dotfiles/vim/plugins/command-t.vim".


  
Lusty
-----

`<leader>lj`
  Open buffer list.

`<leader>lf`
  Open file explorer.

`<leader>lr`
  Open file explorer from here.

`<leader>lb`
  Open buffer explorer.

`<leader>lg`
  Open grep-enabled buffer explorer.
  
  
