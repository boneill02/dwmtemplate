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
