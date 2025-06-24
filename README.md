# dwmtemplate: Macro system for dwm

This program allows dwm users to create, store, and run macros (templates)
in [dwm](https://dwm.suckless.org/) (or any other window manager).

## Building

```
sudo make install
```

## Usage

```
dwmtemplate [-d directory] template
```

* Each template is a list of [xdotool](https://github.com/jordansissel/xdotool)
  commands, which will be run at once.
* Use the `-d` flag to change the directory to look for templates in.
* Templates are stored in `~/.local/share/dwmtemplate` by default


## Example

The following will open the default browser in tag 1 (using Super key as
default modifier and default keybindings) and open github.com:

```
key Super_L+1 # switch to tag 1
exec $BROWSER "https://github.com" # open github.com in default browser
```

## Further Reading

[xdotool(1) on Ubuntu manuals](https://manpages.ubuntu.com/manpages/jammy/man1/xdotool.1.html)

## Bugs

If you find a bug, submit an issue, PR, or email me with a description and/or patch.

## License

Copyright (c) 2025 Ben O'Neill <ben@oneill.sh>. This work is released under the
terms of the MIT License. See [LICENSE](LICENSE) for the license terms.
