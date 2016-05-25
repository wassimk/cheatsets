cheatsheet do
  title 'tmux Cheatset' # Will be displayed by Dash in the docset list
  docset_file_name 'tmux' # Used for the filename of the docset
  keyword 'tmuxcs' # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'My own tmux cheatset'

  category do
    id 'General Notes'
    entry do
      name <<-'END'
        - **Session** - a named collection of one or more windows
        - **Window** - a single tmux screen, like tabs in iTerm, the client attaches to a single window
        - **Pane** - part of a window which runs a single process, a single pane can be the
             whole window, or you can split it
      END
    end

    entry do
      command 'C'
      command 'S'
      name 'The `ctrl` and `shift` keys'
    end

    entry do
      command "<prefix>"
      name 'Press `ctrl` and `s` keys at the same time.'
    end
  end

  category do
    id 'Setup'

    entry do
      notes <<-'END'
        1. Install with `brew install tmux`
        2. To make things easier to reach map the caps lock key to control
           - System Preferences
           - Keyboard
           - Modifier Keys…
           - First option on this screen, change caps lock to control
      END
    end

    entry do
      notes 'This [custom configuration](https://github.com/wassimk/dotfiles/blob/master/tmux.conf) via `~/.tmux.conf` is assumed.'
    end
  end

  category do
    id 'Session Management'

    entry do
      command 'tmux'
      name 'Start a new un-named session'
    end

    entry do
      command 'tmux new -s myname'
      name ' Start with named session *(`tmn myname`)*'
    end

    entry do
      command 'tmux ls'
      name 'List all sessions *(`tml`)*'
    end

    entry do
      command 'tmux a -t myname'
      name 'Attach to a named session *(`tma myname`)*'
    end

    entry do
      command 'tmux kill-session -t myname'
      name 'Kill the named session *(`tmk myname`)*'
    end

    entry do
      command '<prefix> d'
      name 'Detach from current session'
    end

    entry do
      command '<prefix> S'
      name 'Session switcher'
    end

    entry do
      command '<prefix> $'
      name 'Name session'
    end

    entry do
      command '<prefix> ?'
      name 'List all shortcuts'
    end
  end

  category do
    id 'Pane Management'

    entry do
      command '<prefix> \\'
      command '<prefix> -'
      name 'Split window vertically **(\\\)** or horizontally **(-)**'
    end

    entry do
      command '<prefix> s'
      name 'Swap current pane with another *(prompts for pane #)*'
    end

    entry do
      command 'C-\\'
      name 'Jump to previous pane'
    end

    entry do
      command 'C-h'
      command 'C-j'
      command 'C-k'
      command 'C-l'
      name 'Jump pane left (**h**), down (**j**), up (**k**) or right (**l**)'
    end

    entry do
      command 'S- left, right, up, down'
      name 'Resize pane, fine adjustment'
    end

    entry do
      command 'C- left, right, u, down'
      name 'Resize pane, large adjustment'
    end

    entry do
      command '<prefix> C-l'
      name 'Clear / **l**ose pane contents *(keep holding `C`)*'
    end

    entry do
      command '<prefix> z'
      name 'Toggle **z**oom current pane'
    end

    entry do
      command '<prefix> b'
      name '**B**reak current pane into new window'
    end

    entry do
      command '<prefix> q'
      name 'Show pane numbers, *(hit number to jump there)*'
    end

    entry do
      command '<prefix> {'
      command '<prefix> }'
      name 'Move current pane left or right as numbered *(will move up / down)*'
    end

    entry do
      command '<prefix>-space'
      name 'Cycle between auto-pane layouts'
    end
  end

  category do
    id 'Window Management'

    entry do
      command '<prefix> number'
      name 'Jump to numbered window'
    end

    entry do
      command '<prefix> c'
      name '**C**reate new window'
    end

    entry do
      command '<prefix> w'
      name 'Fancy **w**indow chooser'
    end

    entry do
      command '<prefix> l'
      name 'Toggle **l**ast window'
    end
    entry do
      command '<prefix> p'
      command '<prefix> n'
      name 'Move to **p**revious or **n**ext window'
    end

    entry do
      command '<prefix> &'
      name 'Kill current window'
    end
  end

  category do
    id 'Copy Mode'

    entry do
      name <<-'END'
        Normal Vim nagiation works in this mode.
      END
    end

    entry do
      command '<prefix> ['
      name 'Enter copy mode'
    end

    entry do
      command 'v'
      command 'space'
      name 'Start **v**isual highlighting'
    end

    entry do
      command 'y'
      name '**Y**ank / copy highlight to clipboard'
    end

    entry do
      command 'v'
      name 'Paste the clipboard'
    end

    entry do
      command '/'
      command '?'
      name 'Search forward (**/**) or backwards (**?**)'
    end

    entry do
      command 'n'
      name 'Repeat search'
    end
  end
end
