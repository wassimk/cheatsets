cheatsheet do
  title 'General Cheat Sheet' # Will be displayed by Dash in the docset list
  docset_file_name 'general' # Used for the filename of the docset
  keyword 'gcs' # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'My own general cheat sheet' # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'General' # Must be unique and is used as title of the category

    entry do
      command 'Cmd-Ctrl-F'
      name 'Toggle full screen mode'
    end

    entry do
      command 'F11'
      command 'fn-F11'
      name 'Toggle show desktop'
      notes '`fn` if on laptop'
    end

    entry do
      command 'F12'
      command 'fn-F12'
      command 'F3'
      name 'Toggle spaces view'
      notes '`fn` or `F3` if on a laptop'
    end

    entry do
      command 'Ctrl-<num>'
      name 'Switch to space `<num>`'
    end

    entry do
      command 'Cmd-,'
      command 'Cmd-.'
      name 'Move spaces and full screen apps left and right *(custom)*'
    end

    entry do
      command 'Cmd-Option-D'
      name 'Toggle dock hiding'
    end
  end

  category do
    id 'Mail'

    entry do
      command 'Cmd-0'
      name 'Bring up message viewer'
    end
  end

  category do
    id 'SnagIt'

    entry do
      command 'Ctrl-Shift-C'
      name 'All-in-one capture'
    end

    entry do
      command 'Ctrl-Shift-W'
      name 'Capture a window screenshot'
    end

    entry do
      command 'Ctrl-Shift-E'
      name 'Capture a menu screenshot'
    end

    entry do
      command 'Ctrl-Shift-V'
      name 'Record video start'
    end

    entry do
      command 'Ctrl-Shift-<space>'
      name ' Record video pause / resume'
    end
  end

  category do
    id 'Chrome'

    entry do
      command 'Cmd-Ctrl-<num>'
      name 'Switch to people profile `<num>` *(Custom)*'
    end

    entry do
      command 'Cmd-\''
      name 'Rotate through windows'
    end

    entry do
      command 'Backspace'
      name 'Go previous page'
    end

    entry do
      command 'Shift-Backspace'
      name 'Go forward page'
    end

    entry do
      command 'Cmd-Shift-N'
      name 'New incognito window'
    end

    entry do
      command 'Cmd-Shift-5'
      name 'Video / GIF (20s) capture (SnagIt Extension) *(Custom)*'
    end
  end

  category do
    id 'Terminal'

    entry do
      command 'Ctrl-+'
      command 'Ctrl--'
      name 'Increase and decrease font size'
    end

    entry do
      command 'Ctrl-0'
      name 'Reset font size to default'
    end
  end
end
