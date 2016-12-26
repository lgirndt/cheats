cheats(7) -- a conclusive collection of my collected knowledge
==============================================================

This cheat sheet is hosted at [github](https://github.com/lgirndt/cheats) and
contains a collection of all the things I learned and want to learn about the
tools I use.

To install it as a man page to `/usr/local/share/man` run

    $ make install

## VIM

Contains all things about vim I want to remember, but I sometimes fail
to.

### Configure vim

  * `,ee`:
      Open `~/.vimrc` (custom)
  * `,es`:
      Source `~/.vimrc`. Remember to save it before with `:w` (custom)

### Buffer and File Handling

  * `:e <file>`:
      Open new or existing file.
  * `,t`:
      Fuzzy find and open a file contained in the project. Requires CommandT. (custom)
  * `,b`:
      Fuzzy find open a buffer. Requires CommandT. (custom)

### Movements

  * `123G`:
      Goto line 123.
  * `%`:
      Jump between corresponding items like opening and closing braces,
      method start and ending and so on.

### Find & Replace

  * `/`:
      Find forward.
  * `?`:
      Find backwards.
  * `/\v`:
      Find with normal (not vim) regular expressions. I've mapped `/` to already
      start with it. (custom)
  * `,<Space>`:
      Clear highlighting.
  * `:s/find/replace`:
      Replaces `find` with `replace` in a single line.
  * `:%s/find/replace`:
      Replaces `find` with `replace` in all lines. Actually `%` is a range
      indicator. There are others as well.
  * `:%s//replace`:
      Replace the content of the last find operation with this `replace`. Very
      useful in combination with incremental search. First you select your match
      with incremental search and see all matches highlighted, then you can replace
      these matches.

      Replace could be controlled furthermore with flags like `:s/find/replace/g` and
      multiple flags can be used in combination.

  * `../g`:
      Replace all occurences in a line, not just the first match
  * `../c`:
      Ask for confirmation on each replacement.

### Copy and Paste

Using [yankstack](https://github.com/maxbrunsfeld/vim-yankstack)

  * `,p`:
      After pasting the yank buffer, cycles through the yank buffer
  * `,P`:
      Cycles through the yank buffer in the other direction.

### Edit Surroundings

Most of these operations require
[surround.vim](https//github.com/tpope/vim-surround). But I always forget the exact
syntax. Damnit.

The basic commands

  * `yss`:
      Add surrounding.
  * `cs`:
      Change surrounding.
  * `ds`:
      Delete surrounding.

### Format & Indention

  * `==`:
      Format current line
  * `gg=G`:
      Format whole buffer and move cursor to beginning of buffer
  * `,=a`:
      Format whole buffer and keep cursor at current position (custom)

### Folding

  * `zA`:
      Toggle all foldings

## TMUX

Things I learned about `tmux`.

All shortcuts require the prefix `C-a` (which is not default)

### Windows

  * `c`:
    Create Window.
  * `w`:
    List all windows.
  * `n`:
    Select next window.
  * `p`:
    Select previous window.

### Panes

  * `%`:
      Horizontal split
  * `"`:
      Vertical split
  * `z`:
      Toggle zoom out pane to full window size and back. Could be used to
      select and copy text with the mouse.

## Author

Lars Girndt

