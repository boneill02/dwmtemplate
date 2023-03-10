# dwmtemplate: Macro system for dwm

This program allows dwm users to create, store, and run macros in dwm,
which are useful if the user switches between similar programs and window
layouts often.

## Usage

* `sudo make install`
* Create the directory `~/.local/share/dwmtemplate` and store template files in
there.
* Each macro template is a list of `xdotool` commands, which will be run at
once.
* Run a macro by executing `dwmtemplate [filename]` (using relative path to
`~/.local/share/dwmtemplate`).

## Example

The following will open the default browser in tag 1 (using Super key as
default modifier and default keybindings) and open github.com:

```
key Super_L+1 # switch to tag 1
exec $BROWSER "https://github.com" # open github.com in default browser
```
