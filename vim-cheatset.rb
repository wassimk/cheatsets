cheatsheet do
  title 'Vim Cheatset' # Will be displayed by Dash in the docset list
  docset_file_name 'vim' # Used for the filename of the docset
  keyword 'vimcs' # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'My own Vim cheatset'

  category do
    id 'Commands'

    entry do
      command 'd'
      name '**d**elete'
    end

    entry do
      command 'c'
      name '**c**ange'
    end

    entry do
      command 'y'
      name '**y**ank (copy)'
    end

    entry do
      command 'p'
      command 'P'
      name '**p**aste after current line / **P**aste before current line'
    end

    entry do
      command 'v'
      name '**V**isually select'
    end

    entry do
      command '>'
      command '<'
      name 'Indent and outdent'
    end

    entry do
      notes 'Double tap commands to operate on a line, `dd` copies and deletes a whole line,
            `yy` copies the line, etc.'
    end
  end

  category do
    id 'Motions'

    entry do
      command 'de'
      name '**D**elete to the end of the current word'
    end

    entry do
      command 'd2e'
      name '**D**elete to the end of next word'
    end

    entry do
      command 'dj'
      name '**D**elete down a line *(current and one below)*'
    end

    entry do
      command 'dt)'
      name '**D**elete up until next closing parenthesis'
    end

    entry do
      command 'd/world'
      name '**D**elete up until the first search match for "world"'
    end

    entry do
      notes "Further, all of these motion combinations can be used with other operators like `c` or
             `v` to perform those operations on the same text ranges.

             See Vim's help page for motions for a full listing: `:h motion`."
    end
  end

  category do
    id 'Text Objects'

    entry do
      command 'iw'
      command 'aw'
      name '"inner word", "a word" *(a word includes the space)*'
    end

    entry do
      command 'ip'
      command 'ap'
      name '"inner paragraph", "a paragraph" *("a" includes the newline)*'
    end

    entry do
      command 'i)'
      command 'a)'
      name '"inner parenthesis", "a parenthesis" *(includes the parens)*'
    end

    entry do
      command 'i\''
      command 'a\''
      name '"inner single quote", "a single quote" *(includes the quotes)*'
    end

    entry do
      command 'i"'
      command 'a"'
      name '"inner double quote", "a double quote" *(includes the quotes)*'
    end

    entry do
      command 'it'
      command 'at'
      name '"inner tag", "a tag" *(includes the open and closing tag)*'
    end

    entry do
      notes 'Example `yiw` is copy inner word, `daw` is delete a word

            For a full listing see `:h text-objects`'
    end
  end

  category do
    id 'Comments'

    entry do
      command 'gc'
      name 'Comment out command, think **g**o **c**omment'
      notes "Can be used with motions and text objects, `gcc` comments out a line *(takes a
            count)*, `gcap` comments **a**round **p**aragraph."
    end
  end

  category do
    id 'Surround / Toggle Quotes'

    entry do
      command 'cs\'"'
      name 'Change `\'` to `"`'
    end

    entry do
      command 'dst<p>'
      command 'dst"'
      name 'Delete surrounding `<p>` tag or quotes'
    end
  end

  category do
    id 'Ctrl-P'

    entry do
      command 'Ctrl-P'
      name 'Toggle Ctrl-P'
    end

    entry do
      command 'Ctrl-f'
      command 'Ctrl-b'
      name 'Toggle search modes, file, buffer and most recently used (MRU)'
    end

    entry do
      command 'Ctrl-t'
      command 'Ctrl-v'
      command 'Ctrl-x'
      name 'Open selected file in new **t**ab, **v**erticle split or **s**plit'
    end

    entry do
      command 'Ctrl-y'
      name 'Create a new file and its parent directories'
    end

    entry do
      command 'Ctrl-j'
      command 'Ctrl-k'
      name 'Navigate results down and up'
    end

    entry do
      command 'Ctrl-z'
      command 'Ctrl-o'
      name 'Mark multiple files with `z` and open them with `o`'
    end
  end

  category do
    id 'NERDTree'

    entry do
      command 'Ctrl-N'
      name 'Toggle NERDTree'
    end

    entry do
      command 'm'
      name 'Show a menu'
    end

    entry do
      command 'o'
      command 'go'
      name 'Open file, directory, bookmark / open but keep focus on NERDTree'
    end

    entry do
      command 'O'
      name 'Open all folders recursively in NERDTree'
    end

    entry do
      command 't'
      command 'T'
      name 'Open in tab / keep focus on current tab'
    end

    entry do
      command 'i'
      command 'gi'
      name 'Open in split / keep focus on NERDTree'
    end

    entry do
      command 's'
      command 'gs'
      name 'Open in vsplit / keep focus on NERDTree'
    end

    entry do
      command 'x'
      name 'Close current node parents'
    end

    entry do
      command 'p'
      command 'P'
      name 'Jump up to parent of current node / root node'
    end

    entry do
      command 'F'
      name 'Toggle files display'
    end

    entry do
      command 'I'
      name 'Toggle hidden files'
    end
  end

  category do
    id 'The . Command'

    entry do
      notes 'The `.` command in Vim repeats the last "change" command. This may sound limited, but
            since "changes" in Vim are compound expressions that combine a command and a motion
            or text object ("verb" and "noun"), this repeatability is actually quite powerful.
            For instance, if I were to change a word by running `ciw` ("change inner word"), then
            type "hello", then hit escape, I\'ve now composed an edit that can change any word
            to "hello", simply by pressing `.`. Best of all, since I used the text object `iw` I can
            repeat this change with my cursor anywhere on any other word.'
    end
  end

  category do
    id 'Positioning the Buffer In the Window'

    entry do
      command 'zz'
      name '**Center** the current line within the window'
    end

    entry do
      command 'zt'
      name 'Bring the current line to the **top** of the window'
    end

    entry do
      command 'zb'
      name 'Bring the current line to the **bottom** of the window'
    end
  end

  category do
    id 'Moving within a Line'

    entry do
      command 'h'
      command 'l'
      name 'Move left/right by character'
    end

    entry do
      command 'w'
      name 'Move forward one (**w**)ord'
    end

    entry do
      command 'b'
      name 'Move (**b**)ackward by one'
    end

    entry do
      command 'e'
      name 'move forward to the (**e**)nd a word'
    end
  end

  category do
    id 'Jumping within a Line'

    entry do
      command 'f<char>'
      command 'F<char>'
      name '(**f**)ind a character forward or backward in a line and move to it'
    end

    entry do
      command 't<char>'
      command 'T<char>'
      name 'find a character forward or backward in a line and move un(**t**)il it (one character before)'
    end

    entry do
      command ';'
      name 'repeat last `f`, `t`, `F`, or `T` command'
    end

    entry do
      command ';'
      name 'repeat last `f`, `t`, `F`, or `T` command, but in opposite direction'
    end
  end

  category do
    id 'Moving Between Lines'

    entry do
      command 'j'
      command 'k'
      name 'Move up/down one line'
    end

    entry do
      command 'H'
      command 'M'
      command 'L'
      name 'Move (**H**)igh, (**M**)iddle, or (**L**)ow within the viewport'
    end

    entry do
      command '/<search_terms>'
      name 'Search'
    end

    entry do
      command 'n'
      command 'N'
      name 'Repeat last search forward or backwards'
    end

    entry do
      command 'C-u'
      command 'C-d'
      name 'move (**u**)p or (**d**)own'
    end

    entry do
      command '<NN>G'
      name '(**G**)o to line number NN'
    end

    entry do
      command 'G'
      command 'gg'
      name 'Jump to bottom or top of file'
    end
  end

  category do
    id 'Opening Windows' # Must be unique and is used as title of the category

    entry do
      command ':new [filename]'
      name 'Open a new window **above** the current window'
    end

    entry do
      command ':vnew [filename]'
      name 'Open a new window **beside** the current window'
    end

    entry do
      command ':split <filename>'
      name 'Edit the specified file in new window **above** the current window'
    end

    entry do
      command ':vsplit <filename>'
      name 'Edit the specified file in new window **beside** the current window'
    end
  end

  category do
    id 'Moving Between Windows'

    entry do
      command '<C-w>h,j,k,l'
      name '**Navigate** to the window in the given direction'
    end

    entry do
      command '<C-w>H,J,K,L'
      name '**Move** the current window in the given direction'
    end

    entry do
      command '[count]<C-w>-'
      command '[count]<C-w>+'
      name '**Decrease** or **increase** the **height** of the current window by `count`'
    end

    entry do
      command '[count]<C-w><'
      command '[count]<C-w>>'
      name '**Decrease** or **increase** the **width** of the current window by `count`'
    end

    entry do
      command '[count]<C-w>='
      name '**Equalize** the width and height of all windows'
    end
  end

  category do
    id 'Tabs'

    entry do
      command ':tabnew'
      name 'Open a new tab'
    end

    entry do
      command ':tabedit <filename>'
      name 'Edit the file with the provided name in a new tab'
    end

    entry do
      command 'gt'
      command 'gT'
      name 'Go to **next** or **previous** tab'
    end

    entry do
      command '<C-w>T'
      name 'Break the current window out to a new **t**ab'
    end
  end
end
